package jp.co.app.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import jp.co.app.form.ItemForm;
import jp.co.app.model.Item;
import jp.co.app.repository.ItemRepository;

@Controller
public class ItemController {
    @Autowired
    private ItemRepository itemRepository;

    @GetMapping("/items")
    public String index(Model model) {
        List<Item> items = itemRepository.findAll();
        model.addAttribute("items", items);

        return "items/index";
    }

    @GetMapping("/items/create")
    public String create(Model model) {
        model.addAttribute(new ItemForm());
        return "items/create";
    }

    @PostMapping("/items")
    public String store(
        @Validated ItemForm itemForm,
        BindingResult bindingResult,
        RedirectAttributes redirectAttributes
    ) {
        if (bindingResult.hasErrors()) {
            return "items/create";
        }

        itemRepository.store(itemForm.getName());
        redirectAttributes.addFlashAttribute("message", "Item was successfully created.");
        return "redirect:/items";
    }

    @GetMapping("/items/{id}/edit")
    public String edit(
        @PathVariable("id") Integer id,
        Model model
    ) {
        Item item = itemRepository.get(id);
        model.addAttribute(item);
        model.addAttribute(new ItemForm());
        return "items/edit";
    }

    @PostMapping("/items/{id}/update")
    public String update(
        @PathVariable("id") Integer id,
        @Validated ItemForm itemForm,
        BindingResult bindingResult,
        RedirectAttributes redirectAttributes
    ) {
        if (bindingResult.hasErrors()) {
            redirectAttributes.addFlashAttribute("bindingResult", bindingResult);
            return "redirect:/items/" + id + "/edit";
        }

        itemRepository.update(id, itemForm.getName());
        redirectAttributes.addFlashAttribute("message", "Item was successfully updated.");
        return "redirect:/items";
    }

    @PostMapping("/items/{id}/delete")
    public String delete(
        @PathVariable("id") Integer id,
        RedirectAttributes redirectAttributes
    ) {
        itemRepository.delete(id);
        redirectAttributes.addFlashAttribute("message", "Item was successfully deleted.");
        return "redirect:/items";
    }
}

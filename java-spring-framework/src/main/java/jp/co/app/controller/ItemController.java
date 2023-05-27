package jp.co.app.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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

        return "item/index";
    }
}

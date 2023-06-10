package jp.co.app.repository;

import java.util.List;
import jp.co.app.model.Item;

public interface ItemRepository {
    public List<Item> findAll();

    public Item get(Integer id);

    public void store(String name);

    public void delete(Integer id);
}

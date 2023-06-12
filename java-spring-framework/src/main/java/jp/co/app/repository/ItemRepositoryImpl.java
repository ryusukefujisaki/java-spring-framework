package jp.co.app.repository;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import jp.co.app.model.Item;

@Repository
public class ItemRepositoryImpl implements ItemRepository {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public List<Item> findAll() {
        return jdbcTemplate.query(
            "SELECT * FROM items",
            (resultSet, rowNum) -> {
                Item item = new Item();
                item.setId(resultSet.getInt("id"));
                item.setName(resultSet.getString("name"));
                item.setCreatedAt(resultSet.getTimestamp("created_at"));
                item.setUpdatedAt(resultSet.getTimestamp("updated_at"));
                return item;
            }
        );
    }

    @Override
    public Item get(Integer id) {
        return jdbcTemplate.queryForObject(
            "SELECT * FROM items WHERE id = ?",
            (resultSet, rowNum) -> {
                Item newItem = new Item();
                newItem.setId(resultSet.getInt("id"));
                newItem.setName(resultSet.getString("name"));
                newItem.setCreatedAt(resultSet.getTimestamp("created_at"));
                newItem.setUpdatedAt(resultSet.getTimestamp("updated_at"));
                return newItem;
            },
            id
        );
    }

    @Override
    public void store(String name) {
        jdbcTemplate.update("INSERT INTO items (name, created_at, updated_at) VALUES (?, now(), now())", name);
    }

    @Override
    public void update(Integer id, String name) {
        jdbcTemplate.update("UPDATE items SET name = ?, updated_at = now() WHERE id = ?", name, id);
    }

    @Override
    public void delete(Integer id) {
        jdbcTemplate.update("DELETE FROM items WHERE id = ?", id);
    }
}

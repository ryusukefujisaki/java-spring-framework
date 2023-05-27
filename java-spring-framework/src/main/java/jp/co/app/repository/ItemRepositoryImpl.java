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
	public List<Item> getItems() {
		return jdbcTemplate.query(
			"SELECT * FROM items",
			(resultSet, rowNum) -> {
				Item item = new Item();
				item.setId(resultSet.getInt("id"));
				item.setName(resultSet.getString("name"));
				item.setCreatedAt(resultSet.getDate("created_at"));
				item.setUpdatedAt(resultSet.getDate("updated_at"));
				return item;
			}
		);
	}
}

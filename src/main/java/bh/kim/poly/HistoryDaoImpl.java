package bh.kim.poly;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HistoryDaoImpl implements HistoryDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<HistoryVO> list() {
		return sql.selectList("history.list");
	}
	
	@Override
	public void add(HistoryVO item) {
		sql.insert("history.add", item);
	}

	@Override
	public void delete(int SUM_NO) {
		sql.delete("history.delete", SUM_NO);
		
	}

	@Override
	public HistoryVO selectItem(int SUM_NO) {
		return sql.selectOne("history.selectItem", SUM_NO);
	}

	@Override
	public void update(HistoryVO item) {
		sql.update("history.update", item);
	}

	

	
}

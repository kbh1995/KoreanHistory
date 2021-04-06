package bh.kim.poly;

import java.util.List;

public interface HistoryDao {

	List<HistoryVO> list();

	void add(HistoryVO item);

	void delete(int SUM_NO);

	HistoryVO selectItem(int SUM_NO);

	void update(HistoryVO item);


}

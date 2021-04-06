package bh.kim.poly;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HistoryServiceImpl implements HistoryService {

	@Autowired
	HistoryDao dao;
	
	@Override
	public List<HistoryVO> list() {
		return dao.list();
	}
	
	@Override
	public void add(HistoryVO item) {
		dao.add(item);
	}

	@Override
	public void delete(int SUM_NO) {
		dao.delete(SUM_NO);
		
	}

	@Override
	public HistoryVO selectItem(int SUM_NO) {
		return dao.selectItem(SUM_NO);
	}

	@Override
	public void update(HistoryVO item) {
		dao.update(item);
	}

	
}

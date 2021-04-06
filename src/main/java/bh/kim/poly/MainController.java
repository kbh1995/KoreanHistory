package bh.kim.poly;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {

	
	@Autowired 
	HistoryService svc;
	 
	@RequestMapping(value={"/", "/list"})
	String index(Model model) {
		
		List<HistoryVO> list = svc.list();
		model.addAttribute("list", list);
		
		return "index";
	}
	
	@PostMapping("/add")
	String add(HistoryVO item){
		svc.add(item);		
		
	return "redirect:/";
	}
	
	@GetMapping("/{SUM_NO}/delete")
	String delete(@PathVariable int SUM_NO) {
		svc.delete(SUM_NO);
		
	return "redirect:../list";
	}
	
	@GetMapping("/{SUM_NO}/selectItem")
	String selectItem(@PathVariable int SUM_NO, Model model) {
		
		HistoryVO selectItem = svc.selectItem(SUM_NO);
		model.addAttribute("selectItem", selectItem);
		
	return "update";
	}
	
	@PostMapping("/update")
	String update(HistoryVO item) {
		svc.update(item);
		
	return "redirect:list";
	}
}

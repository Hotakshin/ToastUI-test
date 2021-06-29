package ho.tak.prj;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ho.tak.prj.service.GridService;
import ho.tak.prj.vo.GridVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	GridService gridDao;

	@RequestMapping
	public String home(Model model) throws Exception{
	
	
	ArrayList<GridVO> list = new ArrayList<GridVO>();
	
	list = (ArrayList<GridVO>) gridDao.selectAll();
	
	System.out.println("selectAll data : " + list);
	
	model.addAttribute("list",list);
	
	return "home";
	}
	@RequestMapping("chartTest.do")
	public String chartTest() {
		
		return "chartTest";
	}
	
}

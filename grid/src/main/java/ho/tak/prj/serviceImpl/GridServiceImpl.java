package ho.tak.prj.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ho.tak.prj.map.GridMapper;
import ho.tak.prj.service.GridService;
import ho.tak.prj.vo.GridVO;

@Repository("gridDao")
public class GridServiceImpl implements GridService {

	@Autowired
	GridMapper map;

	@Override
	public List<GridVO> selectAll() throws Exception {
		// TODO Auto-generated method stub
		 return map.selectAll();
	}
}

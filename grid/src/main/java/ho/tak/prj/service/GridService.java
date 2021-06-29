package ho.tak.prj.service;

import java.util.List;

import ho.tak.prj.vo.GridVO;

public interface GridService {

	List<GridVO> selectAll() throws Exception;
}

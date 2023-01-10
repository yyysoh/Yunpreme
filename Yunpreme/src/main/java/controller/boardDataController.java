package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import boarddata.BoardDataService;
import boarddata.BoardDataVO;
import common.RedirectPath;
import common.ScriptUtil;
import common.ViewPath;

@Controller
public class boardDataController {
	
	private BoardDataService bdService;
	
	public boardDataController(BoardDataService bdService) {
		this.bdService = bdService;
	}
	
	// 230109 board list
	@RequestMapping("/admin/board/listForm/{board_no}")
	public String list(HttpServletRequest request, @PathVariable("board_no") int board_no) {
		
		BoardDataVO bd = new BoardDataVO();
		bd.setBoard_no(board_no);
		
		List<BoardDataVO> list = bdService.selectList(bd.getBoard_no());
		
		request.setAttribute("path", ViewPath.A_BOARD);
		
		request.setAttribute("list", list);
		request.setAttribute("board_no", board_no);
		
		return ViewPath.A_BOARD + "listForm.jsp";
	}
	
	// 230109 content 
	@RequestMapping("/admin/board/listForm/{board_no}/content/{bd_no}")
	public String content(HttpServletRequest request, @PathVariable("board_no") int board_no, @PathVariable("bd_no") int bd_no) {

		BoardDataVO vo = bdService.selectOne(bd_no);
		
		request.setAttribute("path", ViewPath.A_BOARD);
		
		request.setAttribute("vo", vo);

		return ViewPath.A_BOARD + "contentForm.jsp";
	}
	
	// 230109 insert 
	@RequestMapping("/admin/board/insertForm/{board_no}")
	public String insertForm(HttpServletRequest request, HttpServletResponse response, @PathVariable("board_no") int board_no) {
		
		String board_name = bdService.boardNameSelectOne(board_no);
		
		request.setAttribute("board_no", board_no);
		request.setAttribute("board_name", board_name);

		return ViewPath.A_BOARD + "insertForm.jsp";

	}
	
	// 230109 insert 
	@RequestMapping("/admin/board/insert/{board_no}")
	public void insert(HttpServletRequest request, HttpServletResponse response, @PathVariable("board_no") int board_no) {
		
		BoardDataVO bd = new BoardDataVO();
		
		int no = bdService.insert(bd);
						
		String msg = "", url = "";
		if(no != 0) {
			
			msg = "등록 성공";
			url = RedirectPath.A_BOARD +"listForm/" + board_no + "content/" + bd.getBd_no();
			
		}else {
			msg = "등록 실패";
			url = (String)request.getHeader("REFERER");
		}
		
		try {
			ScriptUtil.alertAndMovePage(response, msg, url);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
	


}

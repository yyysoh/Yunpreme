package boarddata;

import java.util.List;

import board.BoardDAO;
import board.BoardVO;

public class BoardDataService {
	
	private BoardDataDAO bdDao;
	private BoardDAO boardDao;
	
	public BoardDataService(BoardDataDAO bdDao, BoardDAO boardDao) {
		this.bdDao = bdDao;
		this.boardDao = boardDao;
	}

	public List<BoardDataVO> selectList(int board_no) {
		return bdDao.selectList(board_no);
	}

	public BoardDataVO selectOne(int bd_no) {
		return bdDao.selectOne(bd_no);
	}
	
	public int insert(BoardDataVO bd) {
		return bdDao.insert(bd);
	}

	// boardName
	public String boardNameSelectOne(int board_no) {
		return boardDao.boardNameSelectOne(board_no);
	}

	// boardNameList
	public List<BoardVO> boardNameSelectList() {
		return boardDao.boardNameSelectList();
	}
	
	// seq 
	public BoardDataVO seqSelectOne(int board_no) {
		return bdDao.seqSelectOne(board_no);
	}

	public int update(BoardDataVO vo) {
		return bdDao.update(vo);
	}

	public int delete(BoardDataVO vo) {
		return bdDao.delete(vo);
	}

	
	
}

package board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import boarddata.BoardDataVO;

public class BoardDAO {
	
	private SqlSession sqlsession;
	
	public BoardDAO(SqlSession sqlsession) {
		this.sqlsession = sqlsession;
	}

	public String boardNameSelectOne(int board_no) {
		return sqlsession.selectOne("board.boardNameSelectOne", board_no);
	}

	public List<BoardVO> boardNameSelectList() {
		return sqlsession.selectList("board.boardNameSelectList");
	}


}

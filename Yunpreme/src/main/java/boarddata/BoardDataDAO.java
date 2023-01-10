package boarddata;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import boarddata.BoardDataVO;

public class BoardDataDAO {
	
	private SqlSession sqlsession;
	
	public BoardDataDAO(SqlSession sqlsession) {
		this.sqlsession = sqlsession;
	}

	public List<BoardDataVO> selectList(int board_no) {
		return sqlsession.selectList("boarddata.selectList", board_no);
	}

	public BoardDataVO selectOne(int bd_no) {
		return sqlsession.selectOne("boarddata.selectOne", bd_no);
	}
	
	public int update(int bd_no) {
		return sqlsession.update("boarddata.update", bd_no);
	}

	public int insert(BoardDataVO bd) {
		return sqlsession.insert("boarddata.insert", bd);
	}



}

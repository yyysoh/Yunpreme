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

	public BoardDataVO seqSelectOne(int board_no) {
		return sqlsession.selectOne("boarddata.seqSelectOne", board_no);
	}
	
	public int insert(BoardDataVO bd) {
		sqlsession.insert("boarddata.insert", bd);
		return bd.getBd_no();
	}

	public int update(BoardDataVO vo) {
		return sqlsession.update("boarddata.update", vo);
	}

	public int delete(BoardDataVO vo) {
		return sqlsession.delete("boarddata.delete", vo);
	}



}

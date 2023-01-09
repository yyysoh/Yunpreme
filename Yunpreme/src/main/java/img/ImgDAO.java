package img;

import org.apache.ibatis.session.SqlSession;

public class ImgDAO {
	private SqlSession sqlSession;
	
	public ImgDAO(SqlSession sqlSession) {
	this.sqlSession = sqlSession;
	}




}

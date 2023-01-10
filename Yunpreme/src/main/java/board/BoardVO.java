package board;

public class BoardVO {
	
	private int board_no;
	private String board_name;
	
	public BoardVO(int board_no, String board_name) {
		super();
		this.board_no = board_no;
		this.board_name = board_name;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getBoard_name() {
		return board_name;
	}

	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	
}

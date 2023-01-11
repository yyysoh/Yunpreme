package boarddata;

import java.sql.Date;

public class BoardDataVO {
	
	private int bd_no;
	private int board_no;
	private int member_no;
	private int product_no;
	private String bd_name;
	private String bd_category;
	private String bd_title;
	private String bd_content;
	private int bd_password;
	private Date bd_date;
	
	// --
	private int bd_seq;
	private String product_name;
	
	
	public BoardDataVO() {
		
	}
	
	public BoardDataVO(int bd_no, int board_no, int member_no, int product_no, String bd_name, String bd_category, String bd_title, String bd_content,
			int bd_password, Date bd_date, int bd_seq, String product_name) {
		super();
		this.bd_no = bd_no;
		this.board_no = board_no;
		this.member_no = member_no;
		this.product_no = product_no;
		this.bd_name = bd_name;
		this.bd_category = bd_category;
		this.bd_title = bd_title;
		this.bd_content = bd_content;
		this.bd_password = bd_password;
		this.bd_date = bd_date;
		this.bd_seq = bd_seq;
		this.product_name = product_name;
	}



	public int getBd_no() {
		return bd_no;
	}

	public void setBd_no(int bd_no) {
		this.bd_no = bd_no;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public int getProduct_no() {
		return product_no;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	public String getBd_name() {
		return bd_name;
	}

	public void setBd_name(String bd_name) {
		this.bd_name = bd_name;
	}

	public String getBd_category() {
		return bd_category;
	}

	public void setBd_category(String bd_category) {
		this.bd_category = bd_category;
	}

	public String getBd_title() {
		return bd_title;
	}

	public void setBd_title(String bd_title) {
		this.bd_title = bd_title;
	}

	public String getBd_content() {
		return bd_content;
	}

	public void setBd_content(String bd_content) {
		this.bd_content = bd_content;
	}

	public int getBd_password() {
		return bd_password;
	}

	public void setBd_password(int bd_password) {
		this.bd_password = bd_password;
	}
	
	public Date getBd_date() {
		return bd_date;
	}

	public void setBd_date(Date bd_date) {
		this.bd_date = bd_date;
	}
	
	public int getBd_seq() {
		return bd_seq;
	}
	
	public void setBd_seq(int bd_seq) {
		this.bd_seq = bd_seq;
	}
	
	
	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}


}

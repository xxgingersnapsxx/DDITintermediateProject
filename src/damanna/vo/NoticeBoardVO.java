package damanna.vo;

public class NoticeBoardVO {
	private int notice_id;
	private String admin_id;
	private String notice_title;
	private String notice_content;
	private String notice_date;
	private int notice_count;
	private String notice_drop;
	
	public NoticeBoardVO() {
	}

	public NoticeBoardVO(int notice_id, String admin_id, String notice_title, String notice_content, String notice_date,
			int notice_count, String notice_drop) {
		super();
		this.notice_id = notice_id;
		this.admin_id = admin_id;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_date = notice_date;
		this.notice_count = notice_count;
		this.notice_drop = notice_drop;
	}

	public int getNotice_id() {
		return notice_id;
	}

	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(String notice_date) {
		this.notice_date = notice_date;
	}

	public int getNotice_count() {
		return notice_count;
	}

	public void setNotice_count(int notice_count) {
		this.notice_count = notice_count;
	}

	public String getNotice_drop() {
		return notice_drop;
	}

	public void setNotice_drop(String notice_drop) {
		this.notice_drop = notice_drop;
	}





}

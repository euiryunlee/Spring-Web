package com.singer.vo;

import java.util.List;

import com.singer.common.CommonUtil;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class SB01Vo extends BoardVo {

	private String video;
	private int reply;
	private int selection;
	private String findText;

	private String sessionid;
	private String datelog;
	private String goodlog;
	private String hatelog;
	private int videobool;

	private List<SB01Vo> list;

	public void setList(List<SB01Vo> list) {
		this.list = list;
		// 페이징을 위한 카운트
		if (this.list.size() != 0) {
			super.setTotCnt(CommonUtil.getPageCnt(this.list.get(0).getTotCnt()));
		} else {
			super.setTotCnt(0);
		}
	}

}

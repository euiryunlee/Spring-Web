package com.singer.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class SL01Vo extends SuperVo {

	private String userid;
	private String logintime;
	private String ip;
	private String browser;
	private String device;
	private String lcnt;
	private String username;
	private String usertype;

}

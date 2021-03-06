package com.connecthink.dto;

import java.sql.Timestamp;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class LatestPersonalMessageDTO {
	private Integer otherNo;
	
	private String otherName;
	
	private String content;
	
	private Timestamp createDate;

	private Integer status;
	
	private Integer newCnt;
}

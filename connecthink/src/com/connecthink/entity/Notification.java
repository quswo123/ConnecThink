package com.connecthink.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.Getter;
import lombok.Setter;

/**
 * 사용자 알림 정보
 * @author CJK
 *
 */
@Setter
@Getter

@Entity
@Table(name = "notification")
public class Notification implements Serializable{
	@Id
	@Column(name = "notification_no")
	private Integer notificationNo;
	
	@Id
	@ManyToOne
	@JoinColumn(name = "customer_no")
	@JsonBackReference
	private Customer customer;
	
	@Column(name = "content", length = 150, nullable = true)
	private String content;
	
	@CreationTimestamp
	@Column(name = "notify_date")
	private Date notifyDate;
	
	@Column(name = "read_status")
	private Integer read_status;
}

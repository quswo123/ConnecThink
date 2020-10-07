package com.connecthink.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.connecthink.entity.Customer;
import com.connecthink.entity.Member;
import com.connecthink.entity.MemberId;
import com.connecthink.entity.Recruit;
import com.connecthink.exception.AddException;
import com.connecthink.repository.CustomerRepository;
import com.connecthink.repository.MemberRepository;
import com.connecthink.repository.RecruitRepository;

@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberRepository memberRepository;

	@Autowired
	private CustomerRepository customerRepository;

	@Autowired
	private RecruitRepository recruitRepository;

	/**
	 * @author 홍지수
	 * 모집에 지원하기
	 * @throws AddException 
	 */
	public void recruit(Integer customerNo, String recruitNo) throws AddException {
		Member member = new Member();
		MemberId ids = new MemberId();
		Integer mNo = 0;
		boolean isExists = false;

		Recruit recruit = recruitRepository.findById(recruitNo).get();
		Iterator<Member> iter = recruit.getMembers().iterator();
		while(iter.hasNext()) {
			mNo = iter.next().getCustomer().getCustomerNo();
			if(mNo == customerNo) {
				isExists = true;
			}
			System.out.println("테스트 : "+mNo );
			System.out.println(isExists);
		}
		
		if(isExists == false) {
			Customer c = customerRepository.findById(customerNo).get();
			Recruit r = recruitRepository.findById(recruitNo).get();
			
			ids.setMemberNo(c.getCustomerNo());
			ids.setRecruitNo(r.getRecruitNo());
			
			member.setId(ids);
			member.setCustomer(c);
			member.setRecruit(r);
			member.setInvited(0);
			member.setEnterStatus(0);

			memberRepository.save(member);
			
		} else {
			System.out.println("이미 지원함");
			throw new AddException("이미 지원");
		}
	}

	/**
	 * @author IM CRYSTAL
	 * 특정 프로젝트에 초대된 멤버 목록 보기
	 */
	public List<Member> findInvitedByProjectNo(Integer projectNo){
		List<Recruit> rList = recruitRepository.findAllByProjectNo(projectNo);
		List<Member> mList = new ArrayList<Member>();
		if(rList.size() != 0) {
			for(Recruit r : rList) {
				List<Member> tempMList = memberRepository.findAllByRecruitNoAndInvited(r.getRecruitNo(), 1);
				if(tempMList.size() != 0) {
					for(Member m : tempMList) {
						m.getCustomer().getExperiences();
						mList.add(m);
						System.out.println("초대된 멤버 : " + m);
					}
				}
			}
		}
		return mList;
	}

	/**
	 * @author IM CRYSTAL
	 * 특정 프로젝트에 지원한 멤버 목록 보기
	 */
	public List<Member> findAppliedByProjectNo(Integer projectNo){
		List<Recruit> rList = recruitRepository.findAllByProjectNo(projectNo);
		List<Member> mList = new ArrayList<Member>();
		if(rList.size() != 0) {
			for(Recruit r : rList) {
				List<Member> tempMList = memberRepository.findAllByRecruitNoAndInvited(r.getRecruitNo(), 0);
				if(tempMList.size() != 0) {
					for(Member m : tempMList) {
						m.getCustomer().getExperiences();
						mList.add(m);
						System.out.println("지원한 멤버 : " + m);
					}
				}
			}
		}
		return mList;
	}
}

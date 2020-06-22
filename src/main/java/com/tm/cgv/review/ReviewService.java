package com.tm.cgv.review;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tm.cgv.util.Pager;

@Service
public class ReviewService {

	@Autowired
	private ReviewRepository reviewRepository;
	
	//오버라이드는 상속할때만
	
	public List<TestVO> getList(Pager pager)throws Exception {
		pager.makeRow();
		return reviewRepository.getList(pager);
		
	};
	
	public List<Long> reviewList(String uid)throws Exception {
		
		return reviewRepository.reviewList(uid);
	}
	
	public ReviewVO reviewList2(Long m, Pager pager)throws Exception { //m은 "조건문을 넣은 reservation의 num"에 해당
		HashMap<String, Object> pa = new HashMap<String, Object>(); //HashMap<String, Object> //<key,value>
		pa.put("num", m);
		pa.put("pager", pager);
	
		return reviewRepository.reviewList2(pa);
	}
}

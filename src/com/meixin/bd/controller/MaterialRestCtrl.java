/*
 * Copyright (c) 1993, 2014, Kingdee and/or its affiliates. All rights reserved.
 * Kingdee PROPRIETARY/CONFIDENTIAL. 
 *
 *
 */
package com.meixin.bd.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.meixin.bd.bean.Material;
import com.meixin.bd.service.MaterialService;

/**
 * @ClassName: MaterialRestCtrl
 * @Description:商品
 * 
 * @author zk on 2017年8月8日
 */
@Controller
public class MaterialRestCtrl {
	/**
	 * log日志
	 */
	@Autowired
	private MaterialService materialService;
	
	@RequestMapping("/queryItems")
	public ModelAndView query() throws Exception{
		List<Material> list = (List<Material>) materialService.findByPagination(null);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.setViewName("bd/material/list");
		
		return modelAndView;
	}

}

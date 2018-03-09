/*
 * Copyright (c) 1993, 2014, Kingdee and/or its affiliates. All rights reserved.
 * Kingdee PROPRIETARY/CONFIDENTIAL. 
 *
 *
 */
package com.meixin.bd.service.impl;

import java.util.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.meixin.base.bean.DtspRequest;
import com.meixin.bd.bean.Material;
import com.meixin.bd.dao.MaterialMapper;
import com.meixin.bd.service.MaterialService;

/**
 * @ClassName:  MemberServiceImpl
 * @Description:TODO
 * 
 * @author zhangbo on 2014年8月6日
 */
@Service(value = "materialService")
public class MaterialServiceImpl  implements MaterialService {
	
	@Autowired
	private MaterialMapper materialMapper;
	
	@Override
	public Collection<Material> findByPagination(DtspRequest request) {
		return materialMapper.findByPagination(request);
	}


}

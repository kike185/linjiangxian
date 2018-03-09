/*
 * Copyright (c) 1993, 2014, Kingdee and/or its affiliates. All rights reserved.
 * Kingdee PROPRIETARY/CONFIDENTIAL. 
 *
 *
 */
package com.linjiangxian.bd.service.impl;

import java.util.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.linjiangxian.base.bean.DtspRequest;
import com.linjiangxian.bd.bean.Material;
import com.linjiangxian.bd.dao.MaterialMapper;
import com.linjiangxian.bd.service.MaterialService;

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

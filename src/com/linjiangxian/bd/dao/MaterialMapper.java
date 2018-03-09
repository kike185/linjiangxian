/*
 * Copyright (c) 1993, 2014, Kingdee and/or its affiliates. All rights reserved.
 * Kingdee PROPRIETARY/CONFIDENTIAL. 
 *
 *
 */
package com.linjiangxian.bd.dao;

import java.util.Collection;

import org.springframework.stereotype.Repository;

import com.linjiangxian.base.bean.DtspRequest;
import com.linjiangxian.bd.bean.Material;

/**
 * @ClassName:  MaterialDAO
 * @Description:TODO
 * 
 * @author zhangbo on 2014年9月4日
 * @param <Material>
 */
public interface MaterialMapper {

	public Collection<Material> findByPagination(DtspRequest request);
}

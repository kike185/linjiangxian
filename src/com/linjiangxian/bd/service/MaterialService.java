/*
 * Copyright (c) 1993, 2014, Kingdee and/or its affiliates. All rights reserved.
 * Kingdee PROPRIETARY/CONFIDENTIAL. 
 *
 *
 */
package com.linjiangxian.bd.service;

import java.util.Collection;

import com.linjiangxian.base.bean.DtspRequest;
import com.linjiangxian.bd.bean.Material;


/**
 * @ClassName: MemberService
 * @Description:TODO
 * 
 * @author zk on 2014年8月6日
 */

public interface MaterialService {

	Collection<Material> findByPagination(DtspRequest request);


}

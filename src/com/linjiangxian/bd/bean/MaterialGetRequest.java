/*
 * Copyright (c) 1993, 2014, Kingdee and/or its affiliates. All rights reserved.
 * Kingdee PROPRIETARY/CONFIDENTIAL. 
 *
 *
 */
package com.linjiangxian.bd.bean;

import java.math.BigDecimal;

import com.linjiangxian.base.bean.DtspRequest;

/**
 * @ClassName:  MaterialRequest
 * @Description:TODO
 * 
 * @author zhangbo on 2014年9月4日
 */
public class MaterialGetRequest extends DtspRequest {
	//商品
	private String number ;
	//商品
	private String numberFrom ;
	//商品
	private String numberTo ;
	
	private String name ;
	
	private String from ; 
	
	private String to;
	
	private String filterPattern ;  //过滤模式
	
	//建议零售价
	private BigDecimal price;
	//类型
	private String type;
	//折射率
	private String index;
	//规格型号
	private String model;
	//球镜
	private Integer lenssphere;
	//柱镜
	private Integer lenscylinder;
	//品牌
	private String brand;
	//系列
	private String collectionID;
	 //品种//品种归纳
    private String typeInclude;
    //起始价格
    private BigDecimal priceFrom;
    //最高价格
    private BigDecimal priceEnd;
    //大类
    private String materialType;
	/** 该数字用来指明每页可返回 记录数*/
	private Integer maxResultsPerPage = 100;
	/** 该数字用来指明当前页*/
	private Integer currentNum = 1;
	private String barcode;
	private Integer rx;
	
	/**
	 * @return the maxResultsPerPage
	 */
	public Integer getMaxResultsPerPage() {
		return maxResultsPerPage;
	}
	/**
	 * @param maxResultsPerPage the maxResultsPerPage to set
	 */
	public void setMaxResultsPerPage(Integer maxResultsPerPage) {
		this.maxResultsPerPage = maxResultsPerPage;
	}
	/**
	 * @return the currentNum
	 */
	public Integer getCurrentNum() {
		return currentNum;
	}
	/**
	 * @param currentNum the currentNum to set
	 */
	public void setCurrentNum(Integer currentNum) {
		this.currentNum = currentNum;
	}
	/**
	 * @return the from
	 */
	public String getFrom() {
		return from;
	}
	/**
	 * @param from the from to set
	 */
	public void setFrom(String from) {
		this.from = from;
	}
	/**
	 * @return the to
	 */
	public String getTo() {
		return to;
	}
	/**
	 * @param to the to to set
	 */
	public void setTo(String to) {
		this.to = to;
	}

	
	/**
	 * @return the number
	 */
	public String getNumber() {
		return number;
	}
	/**
	 * @param number the number to set
	 */
	public void setNumber(String number) {
		this.number = number;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the filterPattern
	 */
	public String getFilterPattern() {
		return filterPattern;
	}
	/**
	 * @param filterPattern the filterPattern to set
	 */
	public void setFilterPattern(String filterPattern) {
		this.filterPattern = filterPattern;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getIndex() {
		return index;
	}
	public void setIndex(String index) {
		this.index = index;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Integer getLenssphere() {
		return lenssphere;
	}
	public void setLenssphere(Integer lenssphere) {
		this.lenssphere = lenssphere;
	}
	public Integer getLenscylinder() {
		return lenscylinder;
	}
	public void setLenscylinder(Integer lenscylinder) {
		this.lenscylinder = lenscylinder;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getCollectionID() {
		return collectionID;
	}
	public void setCollectionID(String collectionID) {
		this.collectionID = collectionID;
	}
	public String getTypeInclude() {
		return typeInclude;
	}
	public void setTypeInclude(String typeInclude) {
		this.typeInclude = typeInclude;
	}
	public BigDecimal getPriceFrom() {
		return priceFrom;
	}
	public void setPriceFrom(BigDecimal priceFrom) {
		this.priceFrom = priceFrom;
	}
	
	public BigDecimal getPriceEnd() {
		return priceEnd;
	}
	public void setPriceEnd(BigDecimal priceEnd) {
		this.priceEnd = priceEnd;
	}
	public String getMaterialType() {
		return materialType;
	}
	public void setMaterialType(String materialType) {
		this.materialType = materialType;
	}
	public String getBarcode() {
		return barcode;
	}
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	public Integer getRx() {
		return rx;
	}
	public void setRx(Integer rx) {
		this.rx = rx;
	}
	public String getNumberFrom() {
		return numberFrom;
	}
	public void setNumberFrom(String numberFrom) {
		this.numberFrom = numberFrom;
	}
	public String getNumberTo() {
		return numberTo;
	}
	public void setNumberTo(String numberTo) {
		this.numberTo = numberTo;
	}
	
	
	
}

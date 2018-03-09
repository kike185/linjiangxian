package com.linjiangxian.bd.bean;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 
 * @ClassName:  Material
 * @Description:物料表
 * 
 * @author zk on 2017年8月8日
 */
public class Material{
	
	public Material(String id,String number,String name,String price) {
		this.id=id;
		this.number=number;
		this.name=name;
		this.priceRange= new BigDecimal(price);
	}
	public Material() {}
	
	private String id;
	private String number;
	//名称
	private String name;
	//建议零售价
	private BigDecimal priceRange;
	//基本计量单位
	private String baseUnit;
	//类型
	private String type;
    //品种//品种归纳
    private String typeInclude;
    //折射率
    private String index;
    //条形码
    private String barcode;
    //规格型号
    private String model;
    //球镜
    private Integer lenssphere;
    //柱镜
    private Integer lenscylinder;
    //ADD
    private Integer design;
    //助记码
    private String helpCode;
    //品牌
    private String brand;
    //系列
    private String collectionID;
    //主颜色
    private String color;
    //描述
    private String description;
    //是否库存片
    private Integer rx;
    //宝岛18编码
    private String bdCode;
    //色号
    private String colorcode;
    //产地
    private String country;
    //创建时间
    private Date createTime;
    //创建者
    private String creator;
    //控制单元
    private String controlUnit;
    //材质
  	private String mquality;
  	//鼻梁宽
  	private BigDecimal dbl;
  	//框型
  	private BigDecimal rim;
  	//大类//类型   镜架  镜片 护理液 隐形
  	private int materialType;
  	//是否管理批次
  	private Integer isLot;
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
	 * @return the priceRange
	 */
	public BigDecimal getPriceRange() {
		return priceRange;
	}
	/**
	 * @param priceRange the priceRange to set
	 */
	public void setPriceRange(BigDecimal priceRange) {
		this.priceRange = priceRange;
	}
	/**
	 * @return the baseUnit
	 */
	public String getBaseUnit() {
		return baseUnit;
	}
	/**
	 * @param baseUnit the baseUnit to set
	 */
	public void setBaseUnit(String baseUnit) {
		this.baseUnit = baseUnit;
	}
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
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
	 * @return the typeInclude
	 */
	public String getTypeInclude() {
		return typeInclude;
	}
	/**
	 * @param typeInclude the typeInclude to set
	 */
	public void setTypeInclude(String typeInclude) {
		this.typeInclude = typeInclude;
	}
	/**
	 * @return the index
	 */
	public String getIndex() {
		return index;
	}
	/**
	 * @param index the index to set
	 */
	public void setIndex(String index) {
		this.index = index;
	}
	/**
	 * @return the barcode
	 */
	public String getBarcode() {
		return barcode;
	}
	/**
	 * @param barcode the barcode to set
	 */
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	/**
	 * @return the model
	 */
	public String getModel() {
		return model;
	}
	/**
	 * @param model the model to set
	 */
	public void setModel(String model) {
		this.model = model;
	}
	/**
	 * @return the lenssphere
	 */
	public Integer getLenssphere() {
		return lenssphere;
	}
	/**
	 * @param lenssphere the lenssphere to set
	 */
	public void setLenssphere(Integer lenssphere) {
		this.lenssphere = lenssphere;
	}
	/**
	 * @return the lenscylinder
	 */
	public Integer getLenscylinder() {
		return lenscylinder;
	}
	/**
	 * @param lenscylinder the lenscylinder to set
	 */
	public void setLenscylinder(Integer lenscylinder) {
		this.lenscylinder = lenscylinder;
	}
	/**
	 * @return the design
	 */
	public Integer getDesign() {
		return design;
	}
	/**
	 * @param design the design to set
	 */
	public void setDesign(Integer design) {
		this.design = design;
	}
	/**
	 * @return the helpCode
	 */
	public String getHelpCode() {
		return helpCode;
	}
	/**
	 * @param helpCode the helpCode to set
	 */
	public void setHelpCode(String helpCode) {
		this.helpCode = helpCode;
	}
	/**
	 * @return the brand
	 */
	public String getBrand() {
		return brand;
	}
	/**
	 * @param brand the brand to set
	 */
	public void setBrand(String brand) {
		this.brand = brand;
	}
	/**
	 * @return the collectionID
	 */
	public String getCollectionID() {
		return collectionID;
	}
	/**
	 * @param collectionID the collectionID to set
	 */
	public void setCollectionID(String collectionID) {
		this.collectionID = collectionID;
	}
	/**
	 * @return the color
	 */
	public String getColor() {
		return color;
	}
	/**
	 * @param color the color to set
	 */
	public void setColor(String color) {
		this.color = color;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the rx
	 */
	public Integer getRx() {
		return rx;
	}
	/**
	 * @param rx the rx to set
	 */
	public void setRx(Integer rx) {
		this.rx = rx;
	}
	/**
	 * @return the bdCode
	 */
	public String getBdCode() {
		return bdCode;
	}
	/**
	 * @param bdCode the bdCode to set
	 */
	public void setBdCode(String bdCode) {
		this.bdCode = bdCode;
	}
	/**
	 * @return the colorcode
	 */
	public String getColorcode() {
		return colorcode;
	}
	/**
	 * @param colorcode the colorcode to set
	 */
	public void setColorcode(String colorcode) {
		this.colorcode = colorcode;
	}
	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}
	/**
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}
	 
	/**
	 * @return the creator
	 */
	public String getCreator() {
		return creator;
	}
	/**
	 * @param creator the creator to set
	 */
	public void setCreator(String creator) {
		this.creator = creator;
	}
	/**
	 * @return the controlUnit
	 */
	public String getControlUnit() {
		return controlUnit;
	}
	/**
	 * @param controlUnit the controlUnit to set
	 */
	public void setControlUnit(String controlUnit) {
		this.controlUnit = controlUnit;
	}
	/**
	 * @return the supplier
	 */
	public String getSupplier() {
		return supplier;
	}
	/**
	 * @param supplier the supplier to set
	 */
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	/**
	 * @return the supplierCode
	 */
	public String getSupplierCode() {
		return supplierCode;
	}
	/**
	 * @param supplierCode the supplierCode to set
	 */
	public void setSupplierCode(String supplierCode) {
		this.supplierCode = supplierCode;
	}
	/**
	 * @return the supplierSku
	 */
	public String getSupplierSku() {
		return supplierSku;
	}
	/**
	 * @param supplierSku the supplierSku to set
	 */
	public void setSupplierSku(String supplierSku) {
		this.supplierSku = supplierSku;
	}
	public String getMquality() {
		return mquality;
	}
	public void setMquality(String mquality) {
		this.mquality = mquality;
	}
	public BigDecimal getDbl() {
		return dbl;
	}
	public void setDbl(BigDecimal dbl) {
		this.dbl = dbl;
	}
	public BigDecimal getRim() {
		return rim;
	}
	public void setRim(BigDecimal rim) {
		this.rim = rim;
	}
	//供应商
    private String supplier;
    //厂商条码
    private String supplierCode;
    //供应商SKU
    private String supplierSku;
	public int getmaterialType() {
		return materialType;
	}
	public void setmaterialType(int materialType) {
		this.materialType = materialType;
	}
	public Integer getIsLot() {
		return isLot;
	}
	public void setIsLot(Integer isLot) {
		this.isLot = isLot;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	 
	  
}

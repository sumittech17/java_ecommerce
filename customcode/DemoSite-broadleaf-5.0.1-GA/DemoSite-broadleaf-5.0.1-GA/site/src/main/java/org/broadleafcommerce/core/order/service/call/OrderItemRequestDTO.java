/*
 * #%L
 * BroadleafCommerce Framework
 * %%
 * Copyright (C) 2009 - 2016 Broadleaf Commerce
 * %%
 * Licensed under the Broadleaf Fair Use License Agreement, Version 1.0
 * (the "Fair Use License" located  at http://license.broadleafcommerce.org/fair_use_license-1.0.txt)
 * unless the restrictions on use therein are violated and require payment to Broadleaf in which case
 * the Broadleaf End User License Agreement (EULA), Version 1.1
 * (the "Commercial License" located at http://license.broadleafcommerce.org/commercial_license-1.1.txt)
 * shall apply.
 * 
 * Alternatively, the Commercial License may be replaced with a mutually agreed upon license (the "Custom License")
 * between you and Broadleaf Commerce. You may not use this file except in compliance with the applicable license.
 * #L%
 */
package org.broadleafcommerce.core.order.service.call;

import org.broadleafcommerce.common.money.Money;
import org.broadleafcommerce.core.catalog.domain.ProductBundle;
import org.broadleafcommerce.core.order.domain.BundleOrderItem;
import org.broadleafcommerce.core.order.service.OrderService;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Only the product and quantity are required to add an item to an order.
 *
 * The category can be inferred from the product's default category.
 *
 * The sku can be inferred from either the passed in attributes as they are compared to the product's options or
 * the sku can be determined from the product's default sku.
 * 
 * When adding a bundle using this DTO, you MUST have the {@link ProductBundle} included in the productId for it to
 * properly instantiate the {@link BundleOrderItem}
 * 
 * Important Note:  To protect against misuse, the {@link OrderService}'s addItemToCart method will blank out
 * any values passed in on this DTO for the overrideSalePrice or overrideRetailPrice.
 * 
 * Instead, implementors should call the more explicit addItemWithPriceOverrides.
 *
 */
public class OrderItemRequestDTO {

    public Date getSTART_DATE() {
    	System.out.println("sumit getting the start date from OIRD: "+START_DATE);
		return START_DATE;
	}

	public void setSTART_DATE(String i) {
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		System.out.println("sumit value from UI "+i);
		try {
			START_DATE = df.parse(i);
		System.out.println("sumit setting START_DATE to:"+START_DATE);
		} catch (ParseException e) {
			START_DATE = new Date();
			//e.printStackTrace();
		}
		System.out.println("sumit setting2 START_DATE to:"+START_DATE);
	}
	
	public void setSTART_DATE(Date startDate) {
		
		
		// TODO Auto-generated method stub
		System.out.println("sumit: set start date from startDate"+ startDate);
		START_DATE = startDate;
		
	}

	private Long skuId;
    private Long categoryId;
    private Long productId;
    private Long orderItemId;
    private Integer quantity;
    private Date START_DATE;
    private Money overrideSalePrice;
    private Money overrideRetailPrice;
    private Map<String,String> itemAttributes = new HashMap<String,String>();
    private List<OrderItemRequestDTO> childOrderItems = new ArrayList<OrderItemRequestDTO>();
    private Long parentOrderItemId;
    
    public OrderItemRequestDTO() {}
    
    public OrderItemRequestDTO(Long productId, Integer quantity) {
        setProductId(productId);
        setQuantity(quantity);
    }
    
    public OrderItemRequestDTO(Long productId, Long skuId, Integer quantity) {
        setProductId(productId);
        setSkuId(skuId);
        setQuantity(quantity);
    }
    
    public OrderItemRequestDTO(Long productId, Long skuId, Long categoryId, Integer quantity) {
        setProductId(productId);
        setSkuId(skuId);
        setCategoryId(categoryId);
        setQuantity(quantity);
    }

    public Long getSkuId() {
        return skuId;
    }

    public OrderItemRequestDTO setSkuId(Long skuId) {
        this.skuId = skuId;
        return this;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public OrderItemRequestDTO setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
        return this;
    }

    public Long getProductId() {
        return productId;
    }

    public OrderItemRequestDTO setProductId(Long productId) {
        this.productId = productId;
        return this;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public OrderItemRequestDTO setQuantity(Integer quantity) {
        this.quantity = quantity;
        return this;
    }

    public Map<String, String> getItemAttributes() {
        return itemAttributes;
    }

    public OrderItemRequestDTO setItemAttributes(Map<String, String> itemAttributes) {
        this.itemAttributes = itemAttributes;
        return this;
    }
    
    public Long getOrderItemId() {
        return orderItemId;
    }

    public OrderItemRequestDTO setOrderItemId(Long orderItemId) {
        this.orderItemId = orderItemId;
        return this;
    }

    public Money getOverrideSalePrice() {
        return overrideSalePrice;
    }

    public void setOverrideSalePrice(Money overrideSalePrice) {
        this.overrideSalePrice = overrideSalePrice;
    }

    public Money getOverrideRetailPrice() {
        return overrideRetailPrice;
    }

    public void setOverrideRetailPrice(Money overrideRetailPrice) {
        this.overrideRetailPrice = overrideRetailPrice;
    }

    public List<OrderItemRequestDTO> getChildOrderItems() {
        return childOrderItems;
    }
    
    public void setChildOrderItems(List<OrderItemRequestDTO> childOrderItems) {
        this.childOrderItems = childOrderItems;
    }

    public Long getParentOrderItemId() {
        return parentOrderItemId;
    }

    public void setParentOrderItemId(Long parentOrderItemId) {
        this.parentOrderItemId = parentOrderItemId;
    }

}

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
package org.broadleafcommerce.core.catalog.service.dynamic;

import org.broadleafcommerce.common.money.Money;
import org.broadleafcommerce.core.catalog.domain.Sku;
import org.broadleafcommerce.core.catalog.domain.SkuImpl;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.math.BigDecimal;

public class DefaultDynamicSkuPricingInvocationHandler implements InvocationHandler {

    private Sku delegate;
    private Money retailPrice;
    private Money salePrice;
    
    public DefaultDynamicSkuPricingInvocationHandler(Sku sku) {
        this.delegate = sku;
        try {
            Field retail = getSingleField(delegate.getClass(), "retailPrice");
            retail.setAccessible(true);
            Object retailVal = retail.get(delegate);
            retailPrice = retailVal==null?null:new Money((BigDecimal) retailVal);
            Field sale = getSingleField(delegate.getClass(), "salePrice");
            sale.setAccessible(true);
            Object saleVal = sale.get(delegate);
            salePrice = saleVal==null?null:new Money((BigDecimal) saleVal);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * This is used with SkuBundleItem to allow the bundle override price.
     *
     * @param sku
     * @param salePriceOverride
     */
    public DefaultDynamicSkuPricingInvocationHandler(Sku sku, BigDecimal salePriceOverride) {
        this(sku);

        if (salePriceOverride != null) {
            salePrice = new Money(salePriceOverride);
        }
    }
    /**
     * This is used with SkuBundleItem to allow the bundle override price.
     *
     * @param sku
     * @param salePriceOverride
     */
    public DefaultDynamicSkuPricingInvocationHandler(BigDecimal salePriceOverride) {
        this(new SkuImpl());

        if (salePriceOverride != null) {
            salePrice = new Money(salePriceOverride);
        }
    }
    /**
     * Used to add ProductOptionValue price adjustments to the proxy Sku
     * 
     * @param sku
     * @param adjustments - the sum total of the ProductOptionValue price adjustments. If null, this
     * functions the same as the default constructor. This value is added to both the salePrice and retailPrice
     */
    public DefaultDynamicSkuPricingInvocationHandler(Sku sku, Money adjustments) {
        this(sku);

        if (adjustments != null) {
            salePrice = (salePrice == null) ? adjustments : salePrice.add(adjustments);
            retailPrice = (retailPrice == null) ? adjustments : retailPrice.add(adjustments);
        }
    }
    
    private Field getSingleField(Class<?> clazz, String fieldName) throws IllegalStateException {
        try {
            return clazz.getDeclaredField(fieldName);
        } catch (NoSuchFieldException nsf) {
            // Try superclass
            if (clazz.getSuperclass() != null) {
                return getSingleField(clazz.getSuperclass(), fieldName);
            }

            return null;
        }
    }
    
    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        if (method.getName().equals("getRetailPrice")) {
            return retailPrice;
        } else if (method.getName().equals("getSalePrice")) {
            return salePrice;
        } else {
            return method.invoke(delegate, args);
        }
    }

    public void reset() {
        delegate = null;
        retailPrice = null;
        salePrice = null;
    }
}

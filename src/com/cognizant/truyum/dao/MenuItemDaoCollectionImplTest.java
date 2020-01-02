package com.cognizant.truyum.dao;

import java.util.List;

import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

public class MenuItemDaoCollectionImplTest {
    static MenuItemDao menudao = new MenuItemDaoCollectionImpl();

    public static void main(String[] args) {

        testGetMenuItemListAdmin();
        testGetMenuItemListCustomer();
        testmodifyMenuItem();
        testGetMenuItemListAdmin();
        testGetMenuItem();

    }

    public static void testGetMenuItemListAdmin() {
        System.out.println("Admin view");

        List<MenuItem> menu = menudao.getMenuItemListAdmin();
        System.out.printf("%-10s%-20s%-20s%-20s%-20s%-20s%s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        for (MenuItem menuItem : menu) {
            System.out.println(menuItem);
        }

    }

    public static void testGetMenuItemListCustomer() {
        System.out.println("Customer view");
        List<MenuItem> menuitem = menudao.getMenuItemListCustomer();
        System.out.printf("%-10s%-20s%-20s%-20s%-20s%-20s%s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");
        for (MenuItem menuItem2 : menuitem) {
            System.out.println(menuItem2);
        }
    }

    public static void testmodifyMenuItem() {
        System.out.println("Modify Menu Item");
        MenuItem menuitem = new MenuItem(1, "Eat and Enjoy", 12345.0f, true,
                DateUtil.convertToDate("02/01/2020"), "Main Dish", false);
        menudao.modifyMenuItem(menuitem);
    }

    public static void testGetMenuItem() {
        System.out.println("Get MenuItem");
        System.out.printf("%-10s%-20s%-20s%-20s%-20s%-20s%s\n", "Id", "Name", "Price", "Active",
                "Date of Launch", "Category", "Free Delivery");

        MenuItem menuitem = menudao.getMenuItem(3);
        System.out.println(menuitem);
    }

}
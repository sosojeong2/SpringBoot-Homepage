package com.example.demo.contorller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class BoardViewContorller {
 
    // [USER] 메인 페이지
    @GetMapping(value="/")
    public String home() {
        return "index";
    }

    // [USER] 리스트 페이지
    @GetMapping(value="/productList")
    public String productList() {
        return "productList";
    }

    // [USER] 상세보기 페이지
    @GetMapping(value="/productDetail")
    public String productDetail() {
        return "productDetail";
    }

    // [ADMIN] 로그인 페이지 
    @GetMapping(value="/admin/login")
    public String login() {
        return "login";
    }

    // [ADMIN] 작성하기 페이지
    @GetMapping(value="adminProductWrite")
    public String adminProductWrite() {
        return "admin/productWrite";
    }

    // [ADMIN] 리스트 페이지
    @GetMapping(value="adminProductList")
    public String adminProductList() {
        return "admin/productList";
    }

    // [ADMIN] 상세보기 페이지
    @GetMapping(value="adminProductDetail")
    public String adminProductDetail() {
        return "admin/productDetail";
    }

    // [ADMIN] 수정하기 페이지
    @GetMapping(value="adminProductModify")
    public String adminProductModify() {
        return "admin/productModify";
    }

    
}

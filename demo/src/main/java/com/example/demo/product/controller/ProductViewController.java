package com.example.demo.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductViewController {

  // [USER] home
  @GetMapping(value="/")
  public String index() {
      return "product/productList";
  }

  // [USER] 경매 물품 리스트 페이지
  @GetMapping(value="/productList")
  public String productList() {
      return "product/productList";
  }

  // [USER] 경매 물품 등록 페이지
  @GetMapping(value="/productRegister")
  public String productRegister() {
      return "product/productRegister";
  }
  
}

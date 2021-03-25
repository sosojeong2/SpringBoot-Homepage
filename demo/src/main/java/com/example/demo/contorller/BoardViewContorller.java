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
    @GetMapping(value="/boardList")
    public String boardList() {
        return "boardList";
    }

    // [USER] 상세보기 페이지
    @GetMapping(value="/boardDetail")
    public String boardDetail() {
        return "boardDetail";
    }

    // [ADMIN] 로그인 페이지 
    @GetMapping(value="/admin/login")
    public String login() {
        return "login";
    }

    // [ADMIN] 작성하기 페이지
    @GetMapping(value="/admin/boardWrite")
    public String adminBoardWrite() {
        return "adminBoardWrite";
    }

    // [ADMIN] 리스트 페이지
    @GetMapping(value="/admin/boardList")
    public String adminBoardList() {
        return "adminBoardList";
    }

    // [ADMIN] 상세보기 페이지
    @GetMapping(value="/admin/boardDetail")
    public String adminBoardDetail() {
        return "adminBoardDetail";
    }

    // [ADMIN] 수정하기 페이지
    @GetMapping(value="/admin/boardModify")
    public String adminBoardModify() {
        return "adminBoardModify";
    }

    
}

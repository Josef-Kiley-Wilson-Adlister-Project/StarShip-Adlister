package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "SearchServlet", urlPatterns = "/search")
public class SearchServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("ads",req.getSession().getAttribute("ads"));
        System.out.println(req.getSession().getAttribute("ads"));
        req.getRequestDispatcher("WEB-INF/ads/index.jsp").forward(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String searchItem = req.getParameter("searchbox");
        req.getSession().setAttribute("ads", DaoFactory.getAdsDao().adSearch(searchItem));
        System.out.println(" =====doPost=====");
        System.out.println(searchItem);
        resp.sendRedirect("/search");
    }
}

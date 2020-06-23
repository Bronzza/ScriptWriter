package controllers;

import pojos.TableInfoHolder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MainController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TableInfoHolder tableInfoHolderToCreateScriptsFor = new TableInfoHolder();
        req.setAttribute("tableHolder", tableInfoHolderToCreateScriptsFor);
        req.setAttribute("columns", tableInfoHolderToCreateScriptsFor.getColumns());
        req.setAttribute("indexes", tableInfoHolderToCreateScriptsFor.getIndexes());
        req.setAttribute("vendors", tableInfoHolderToCreateScriptsFor.getVendorDBS());
        req.getRequestDispatcher("/scriptsInfo").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TableInfoHolder tableInfoHolderToCreateScriptsFor = new TableInfoHolder();
        req.setAttribute("tableHolder", tableInfoHolderToCreateScriptsFor);
        req.setAttribute("columns", tableInfoHolderToCreateScriptsFor.getColumns());
        req.setAttribute("indexes", tableInfoHolderToCreateScriptsFor.getIndexes());
        req.setAttribute("vendors", tableInfoHolderToCreateScriptsFor.getVendorDBS());
        req.getRequestDispatcher("/scriptsInfo.jsp").forward(req, resp);
    }
}

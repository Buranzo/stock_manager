package io.khasang.stockmanager.controller;

import io.khasang.stockmanager.model.DataExample;
import io.khasang.stockmanager.model.MyTestDataBase;
import io.khasang.stockmanager.model.ProductOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;

@Controller
public class AppController {
    @Autowired
    DataExample dataExample;
    @Autowired
    ProductOrder productOrder;

    @Autowired
    MyTestDataBase testDataBase;

    @RequestMapping("/")
    public String shrink(Model model) {
        model.addAttribute("hello", "");
        return "hello";
    }

    @RequestMapping("/confidential")
    public String securePage(Model model) {
        model.addAttribute("cat", "Barsik");
        return "cat";
    }

    @RequestMapping("/confidential/tablecreate")
    public String tableCreate(Model model) {
        model.addAttribute("tablecreate", dataExample.getResult());
        return "tablecreate";
    }

    @RequestMapping("/yukon85/select")
    public String showSelectExample(Model model) {
        model.addAttribute("showtable", testDataBase.showDataTable());
        return "selectpage";
    }

    @RequestMapping("/select")
    public String items (Model model) throws SQLException{
        model.addAttribute("items", productOrder.selectWholeTable());
        return "select";
    }


}

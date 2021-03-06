/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.MessagesModel;
import Model.PhiShipModel;
import Utility.MyUtils;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author TamTorres
 */
@WebServlet(name = "PhiShipServlet", urlPatterns = {"/admin/phiship" })
public class PhiShipServlet extends HttpServlet {

    
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
               
        
        request.setAttribute("txtTitle", "Phí ship"); 
        
        Connection conn = MyUtils.getStoredConnection(request);
        List<PhiShipModel> listAllPhiShip = PhiShipModel.getAllPhiShip(conn);
       
        request.setAttribute("listAllPhiShip", listAllPhiShip);
      
        request.getRequestDispatcher("/admin/phiship.jsp").forward(request, response);    
             
    }
    
     

    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {  

        boolean isFailedRequest = false; // request thất bại
        String noiDungThongBao = "";
        
        String submitValue = req.getParameter("submit");
        if (submitValue !=null && submitValue.equals("them"))
        {           
            String tenTinh = (String) req.getParameter("tentinh");
            
            double phiShip = 0; 
            Pattern phiShipPattern = Pattern.compile("^(?:[1-9]\\d+|\\d)$");
            if (phiShipPattern.matcher(req.getParameter("phiship")).matches())
            { 
                try {
                    phiShip = Double.parseDouble(req.getParameter("phiship"));

                Connection conn = MyUtils.getStoredConnection(req);

                        boolean isOk = PhiShipModel.InsertNewPhiShip(conn, new PhiShipModel(0, tenTinh, phiShip));
                        if (isOk)
                        {
                            isFailedRequest = false;
                            noiDungThongBao = "Đã thêm phí ship!";
                       }
                        else
                            isFailedRequest = true;

                } catch (Exception ex) { 
                    isFailedRequest=true; 
                    Logger.getLogger(PhiShipServlet.class.getName()).log(Level.SEVERE, null, ex);
                }    
            }
            else
            { 
                isFailedRequest = true;
                noiDungThongBao = "Phí ship không hợp lệ!";
            } 
             
            
        }
        else
            isFailedRequest = true;
        
        
        if (isFailedRequest) // nếu có lỗi thì hiện thông báo
        { 
            req.setAttribute(MessagesModel.ATT_STORE, new MessagesModel("Có lỗi xảy ra!","Yêu cầu của bạn không được xử lý!" + "<br>"+noiDungThongBao,MessagesModel.ATT_TYPE_ERROR));         
        }
        else
        {
            req.setAttribute(MessagesModel.ATT_STORE, new MessagesModel("Thông báo!",noiDungThongBao,MessagesModel.ATT_TYPE_SUCCESS));         
        }
        
       
        req.setAttribute("txtTitle", "Phí ship"); 
        
        Connection conn = MyUtils.getStoredConnection(req);
        List<PhiShipModel> listAllPhiShip = PhiShipModel.getAllPhiShip(conn);
       
        req.setAttribute("listAllPhiShip", listAllPhiShip);
        req.getRequestDispatcher("/admin/phiship.jsp").forward(req, resp);
        
 
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.CTDonHangModelWithTenSach;
import Model.DonHangModel;
import Model.DonHangModelWithTenThanhVienAndTenDangNhap;
import Model.MessagesModel;
import Model.SachModel;
import Utility.MyUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
@WebServlet(name = "DonHangUpdateTrangThaiServlet", urlPatterns = {"/admin/donhang/updatetrangthai"})
public class DonHangUpdateTrangThaiServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Connection conn = MyUtils.getStoredConnection(req);
        boolean isFailed = false; // request thất bại
        String noiDungThongBao = "";

        int maDonHang = Integer.parseInt(req.getParameter("id"));
        int trangThai = Integer.parseInt(req.getParameter("trangthai"));

        int currentPage = Integer.parseInt(req.getParameter("page"));
        Boolean trangThaiBoolean = false;

        if (trangThai == 1) {
            trangThaiBoolean = true;
        } else if (trangThai == 2) {
            trangThaiBoolean = false;
        }

        try {
            DonHangModel donHangTemp = DonHangModel.FindByMaDonHang(conn, maDonHang);
            if (donHangTemp.getTrangThai() != 0) {
                Boolean isOk = DonHangModel.UpdateTrangThaiDonHang(conn, trangThaiBoolean, maDonHang);
                Boolean updateSoLuongTonSach = null;
                List<CTDonHangModelWithTenSach> listCTDHHuy = CTDonHangModelWithTenSach.FindAllByMaDonHang(conn, maDonHang);
                for (int i = 0; i < listCTDHHuy.size(); i++) {
                    updateSoLuongTonSach = SachModel.UpdateSoLuongTonSach(conn, listCTDHHuy.get(i).getSoLuong(), listCTDHHuy.get(i).getMaSach());
                    if (updateSoLuongTonSach == false) {
                        System.out.println("Update sách: " + listCTDHHuy.get(i).getMaSach());
                    }
                }

                if (isOk) {
                    isFailed = false;
                    noiDungThongBao = "Đã cập nhật trạng thái của đơn hàng!";
                } else {
                    isFailed = true;
                    throw new Exception("Yêu cầu của bạn không thể xử lý!");
                }

            } else {

                isFailed = true;
                noiDungThongBao = "Không thể cập nhạt trạng thái của hóa đơn đã bị hủy";
            }
        } catch (Exception ex) {
            Logger.getLogger(DonHangUpdateTrangThaiServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (isFailed) // nếu có lỗi thì hiện thông báo
        {
            req.setAttribute(MessagesModel.ATT_STORE, new MessagesModel("Có lỗi xảy ra!", noiDungThongBao, MessagesModel.ATT_TYPE_ERROR));
        } else {
            req.setAttribute(MessagesModel.ATT_STORE, new MessagesModel("Thông báo!", noiDungThongBao, MessagesModel.ATT_TYPE_SUCCESS));
        }

        req.setAttribute("txtTitle", "Đơn hàng");

        Integer numOfDonHangInOnePage = 20;
        List<DonHangModelWithTenThanhVienAndTenDangNhap> listDonHang = DonHangModelWithTenThanhVienAndTenDangNhap.getAllDonHang(conn, currentPage, numOfDonHangInOnePage);

        int numOfBookFound;
        int numOfPage = 0;
        try {
            numOfBookFound = DonHangModelWithTenThanhVienAndTenDangNhap.CountAllDonHang(conn);

            if (numOfBookFound % numOfDonHangInOnePage == 0) {
                numOfPage = numOfBookFound / numOfDonHangInOnePage;
            } else {
                numOfPage = numOfBookFound / numOfDonHangInOnePage + 1;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DonHangServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        req.setAttribute("numofpage", numOfPage);
        req.setAttribute("currentpage", currentPage);

        req.setAttribute("listDonHang", listDonHang);
        req.getRequestDispatcher("/admin/list-donhang.jsp").forward(req, resp);
    }

}
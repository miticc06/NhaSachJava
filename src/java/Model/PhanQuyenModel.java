/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor..
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MITICC06
 */
public class PhanQuyenModel {

    public static final int ATT_MAPHANQUYEN_THANHVIEN = 1; // mã phân quyền mặc định của thành viên

    public int getQlSach() {
        return qlSach;
    }

    public void setQlSach(int qlSach) {
        this.qlSach = qlSach;
    }

    public int getMaPhanQuyen() {
        return maPhanQuyen;
    }

    public void setMaPhanQuyen(int maPhanQuyen) {
        this.maPhanQuyen = maPhanQuyen;
    }

    public String getTenQuyen() {
        return tenQuyen;
    }

    public void setTenQuyen(String tenQuyen) {
        this.tenQuyen = tenQuyen;
    }

    public int getQlThanhVien() {
        return qlThanhVien;
    }

    public void setQlThanhVien(int qlThanhVien) {
        this.qlThanhVien = qlThanhVien;
    }

    public int getQlTheLoai() {
        return qlTheLoai;
    }

    public void setQlTheLoai(int qlTheLoai) {
        this.qlTheLoai = qlTheLoai;
    }

    public int getQlPhiShip() {
        return qlPhiShip;
    }

    public void setQlPhiShip(int qlPhiShip) {
        this.qlPhiShip = qlPhiShip;
    }

    public int getQlPhanQuyen() {
        return qlPhanQuyen;
    }

    public void setQlPhanQuyen(int qlPhanQuyen) {
        this.qlPhanQuyen = qlPhanQuyen;
    }

    public int getQlPhieuNhap() {
        return qlPhieuNhap;
    }

    public void setQlPhieuNhap(int qlPhieuNhap) {
        this.qlPhieuNhap = qlPhieuNhap;
    }

    public int getQlPhieuChi() {
        return qlPhieuChi;
    }

    public void setQlPhieuChi(int qlPhieuChi) {
        this.qlPhieuChi = qlPhieuChi;
    }

    public int getQlNhaCungCap() {
        return qlNhaCungCap;
    }

    public void setQlNhaCungCap(int qlNhaCungCap) {
        this.qlNhaCungCap = qlNhaCungCap;
    }

    public PhanQuyenModel(int maPhanQuyen, String tenQuyen, int qlThanhVien, int qlSach, int qlTheLoai, int qlPhiShip, int qlPhanQuyen, int qlPhieuNhap, int qlPhieuChi, int qlNhaCungCap, int qlDonHang, int qlBaoCao) {
        this.maPhanQuyen = maPhanQuyen;
        this.tenQuyen = tenQuyen;
        this.qlThanhVien = qlThanhVien;
        this.qlSach = qlSach;
        this.qlTheLoai = qlTheLoai;
        this.qlPhiShip = qlPhiShip;
        this.qlPhanQuyen = qlPhanQuyen;
        this.qlPhieuNhap = qlPhieuNhap;
        this.qlPhieuChi = qlPhieuChi;
        this.qlNhaCungCap = qlNhaCungCap;
        this.qlDonHang = qlDonHang;
        this.qlBaoCao = qlBaoCao;
    }

    public PhanQuyenModel() {
        this.maPhanQuyen = 0;
    }

    private int maPhanQuyen;
    private String tenQuyen;
    private int qlThanhVien;
    private int qlSach;
    private int qlTheLoai;
    private int qlPhiShip;
    private int qlPhanQuyen;
    private int qlPhieuNhap;
    private int qlPhieuChi;
    private int qlNhaCungCap;
    private int qlDonHang;
    private int qlBaoCao;

    public int getQlBaoCao() {
        return qlBaoCao;
    }

    public void setQlBaoCao(int qlBaoCao) {
        this.qlBaoCao = qlBaoCao;
    }

    public int getQlDonHang() {
        return qlDonHang;
    }

    public void setQlDonHang(int qlDonHang) {
        this.qlDonHang = qlDonHang;
    }

    public static boolean InsertNewPhanQuyen(Connection conn, PhanQuyenModel obj)
            throws SQLException {
        int count = 0;
        try {

            String sql = "INSERT INTO phanquyen (tenquyen, qlthanhvien, qlsach, qltheloai, qlphiship, qlphanquyen, qlphieunhap, qlphieuchi, qlnhacungcap, qldonhang, qlbaocao) VALUES (?,?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setString(1, obj.getTenQuyen());
            pstm.setInt(2, obj.getQlThanhVien());
            pstm.setInt(3, obj.getQlSach());
            pstm.setInt(4, obj.getQlTheLoai());
            pstm.setInt(5, obj.getQlPhiShip());
            pstm.setInt(6, obj.getQlPhanQuyen());
            pstm.setInt(7, obj.getQlPhieuNhap());
            pstm.setInt(8, obj.getQlPhieuChi());
            pstm.setInt(9, obj.getQlNhaCungCap());
            pstm.setInt(10, obj.getQlDonHang());
            pstm.setInt(11, obj.getQlBaoCao());
            count = pstm.executeUpdate();
        } catch (SQLException ex) {
            count = 0;
        }
        return count > 0;
    }

    public static List<PhanQuyenModel> getAllPhanQuyen(Connection conn) {
        List<PhanQuyenModel> listPhanQuyen = new ArrayList<PhanQuyenModel>();

        String sql = "SELECT * FROM phanquyen";
        try {
            PreparedStatement pstm = conn.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                PhanQuyenModel phanQuyenModel = new PhanQuyenModel(
                        rs.getInt("maphanquyen"),
                        rs.getString("tenquyen"),
                        rs.getInt("qlthanhvien"),
                        rs.getInt("qlsach"),
                        rs.getInt("qltheloai"),
                        rs.getInt("qlphiship"),
                        rs.getInt("qlphanquyen"),
                        rs.getInt("qlphieunhap"),
                        rs.getInt("qlphieuchi"),
                        rs.getInt("qlnhacungcap"),
                        rs.getInt("qldonhang"),
                        rs.getInt("qlbaocao")
                );

                listPhanQuyen.add(phanQuyenModel);
            }

        } catch (SQLException e) {

        }

        return listPhanQuyen;
    }

    public static boolean DeleteByMaPhanQuyen(Connection conn, int maPhanQuyen) throws SQLException {
        String sql = "DELETE FROM phanquyen WHERE maPhanQuyen = ?";
        int count = 0;
        try {
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, maPhanQuyen);
            count = pstm.executeUpdate();

        } catch (SQLException ex) {

        }

        System.out.println("count = " + count);

        return count > 0;
    }

    public static PhanQuyenModel FindByMaPhanQuyen(Connection conn, int maPhanQuyen) throws SQLException {

        String sql = "SELECT * FROM phanquyen WHERE maphanquyen = ? ";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setInt(1, maPhanQuyen);

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            PhanQuyenModel phanQuyenModel = new PhanQuyenModel(
                    rs.getInt("maphanquyen"),
                    rs.getString("tenquyen"),
                    rs.getInt("qlthanhvien"),
                    rs.getInt("qlsach"),
                    rs.getInt("qltheloai"),
                    rs.getInt("qlphiship"),
                    rs.getInt("qlphanquyen"),
                    rs.getInt("qlphieunhap"),
                    rs.getInt("qlphieuchi"),
                    rs.getInt("qlnhacungcap"),
                    rs.getInt("qldonhang"),
                    rs.getInt("qlbaocao"));

            return phanQuyenModel;
        }
        return null;

    }

    public static PhanQuyenModel FindByTenQuyen(Connection conn, String tenQuyen) throws SQLException {

        String sql = "SELECT * FROM phanquyen WHERE tenquyen = ? ";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, tenQuyen);

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            PhanQuyenModel phanQuyenModel = new PhanQuyenModel(
                    rs.getInt("maphanquyen"),
                    rs.getString("tenquyen"),
                    rs.getInt("qlthanhvien"),
                    rs.getInt("qlsach"),
                    rs.getInt("qltheloai"),
                    rs.getInt("qlphiship"),
                    rs.getInt("qlphanquyen"),
                    rs.getInt("qlphieunhap"),
                    rs.getInt("qlphieuchi"),
                    rs.getInt("qlnhacungcap"),
                    rs.getInt("qldonhang"),
                    rs.getInt("qlbaocao"));

            return phanQuyenModel;
        }
        return null;

    }

    public static boolean UpdatePhanQuyen(Connection conn, PhanQuyenModel obj)
            throws SQLException {
        int count = 0;
        try {
            String sql = "UPDATE phanquyen SET tenquyen = ?, qlthanhvien = ?, qlsach = ?, qltheloai = ?, qlphiship = ?, qlphanquyen = ?, qlphieunhap = ?, qlphieuchi = ?, qlnhacungcap = ?, qldonhang = ?, qlbaocao = ? WHERE maphanquyen = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setString(1, obj.getTenQuyen());
            pstm.setInt(2, obj.getQlThanhVien());
            pstm.setInt(3, obj.getQlSach());
            pstm.setInt(4, obj.getQlTheLoai());
            pstm.setInt(5, obj.getQlPhiShip());
            pstm.setInt(6, obj.getQlPhanQuyen());
            pstm.setInt(7, obj.getQlPhieuNhap());
            pstm.setInt(8, obj.getQlPhieuChi());
            pstm.setInt(9, obj.getQlNhaCungCap());
            pstm.setInt(10, obj.getQlDonHang());
            pstm.setInt(11, obj.getQlBaoCao());
            pstm.setInt(12, obj.getMaPhanQuyen());
            count = pstm.executeUpdate();
        } catch (SQLException ex) {
            count = 0;
            ex.printStackTrace();
        }
        return count > 0;
    }

}

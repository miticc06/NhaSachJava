/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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
public class ThanhVienModel {

    public ThanhVienModel(int maThanhVien, String tenDangNhap, String matKhau, String hoTen, String diaChi, String soDienThoai, String email, int maPhanQuyen) {
        this.maThanhVien = maThanhVien;
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.hoTen = hoTen;
        this.diaChi = diaChi;
        this.soDienThoai = soDienThoai;
        this.email = email;
        this.maPhanQuyen = maPhanQuyen;
    }

    public int getMaThanhVien() {
        return maThanhVien;
    }

    public void setMaThanhVien(int maThanhVien) {
        this.maThanhVien = maThanhVien;
    }

    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public void setTenDangNhap(String tenDangNhap) {
        this.tenDangNhap = tenDangNhap;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getMaPhanQuyen() {
        return maPhanQuyen;
    }

    public void setMaPhanQuyen(int maPhanQuyen) {
        this.maPhanQuyen = maPhanQuyen;
    }

    private int maThanhVien;
    private String tenDangNhap;
    private String matKhau;
    private String hoTen;
    private String diaChi;
    private String soDienThoai;
    private String email;
    private int maPhanQuyen;

    public ThanhVienModel() {
        this.maThanhVien = 0;
    }

    public static ThanhVienModel FindByTenDangNhap(Connection conn, String tendangnhap) throws SQLException {
        String sql = "SELECT * FROM thanhvien WHERE tendangnhap = ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, tendangnhap);

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            ThanhVienModel thanhvien = new ThanhVienModel(Integer.parseInt(rs.getString("mathanhvien")),
                    rs.getString("tendangnhap"),
                    rs.getString("matkhau"),
                    rs.getString("hoten"),
                    rs.getString("diachi"),
                    rs.getString("sodienthoai"),
                    rs.getString("email"),
                    Integer.parseInt(rs.getString("maphanquyen"))
            );
            return thanhvien;
        }
        return null;

    }

    public static ThanhVienModel FindByMaThanhVien(Connection conn, int matv) throws SQLException {
        String sql = "SELECT * FROM thanhvien WHERE mathanhvien = ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setInt(1, matv);

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            ThanhVienModel thanhvien = new ThanhVienModel(Integer.parseInt(rs.getString("mathanhvien")),
                    rs.getString("tendangnhap"),
                    rs.getString("matkhau"),
                    rs.getString("hoten"),
                    rs.getString("diachi"),
                    rs.getString("sodienthoai"),
                    rs.getString("email"),
                    Integer.parseInt(rs.getString("maphanquyen"))
            );
            return thanhvien;
        }
        return null;

    }

    public static boolean InsertNewThanhVien(Connection conn, ThanhVienModel thanhvien) throws SQLException {
        int count = 0;
        try {
            String sql = "INSERT INTO thanhvien ( tendangnhap, matkhau, hoten, diachi, sodienthoai, email, maphanquyen) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setString(1, thanhvien.getTenDangNhap());
            pstm.setString(2, thanhvien.getMatKhau());
            pstm.setString(3, thanhvien.getHoTen());
            pstm.setString(4, thanhvien.getDiaChi());
            pstm.setString(5, thanhvien.getSoDienThoai());
            pstm.setString(6, thanhvien.getEmail());
            pstm.setInt(7, thanhvien.getMaPhanQuyen());
 
            count = pstm.executeUpdate();
        } catch (SQLException ex) {

            System.out.println(ex);
            count = 0;
        }
        return count > 0;
    }

    public static List<ThanhVienModel> getAllThanhVien(Connection conn) {
        List<ThanhVienModel> listThanhVien = new ArrayList<ThanhVienModel>();

        String sql = "SELECT * FROM thanhvien";
        try {
            PreparedStatement pstm = conn.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                ThanhVienModel thanhVienModel = new ThanhVienModel(
                        Integer.parseInt(rs.getString("mathanhvien")),
                        rs.getString("tendangnhap"),
                        rs.getString("matkhau"),
                        rs.getString("hoten"),
                        rs.getString("diachi"),
                        rs.getString("sodienthoai"),
                        rs.getString("email"),
                        Integer.parseInt(rs.getString("maphanquyen")));

                listThanhVien.add(thanhVienModel);
            }

        } catch (SQLException e) {

        }

        return listThanhVien;
    }

    public static boolean DeleteThanhVienById(Connection conn, int maThanhVien) throws SQLException {
        String sql = "DELETE FROM thanhvien WHERE mathanhvien = ?";
        int count = 0;
        try {
            PreparedStatement pstm = conn.prepareStatement(sql);
            pstm.setInt(1, maThanhVien);
            count = pstm.executeUpdate();

        } catch (SQLException ex) {

        }

        System.out.println("count = " + count);

        return count > 0;
    }

//    public static ThanhVienModel FindByMaNhaCungCap(Connection conn, int maThanhVien) throws SQLException {
//
//        String sql = "SELECT * FROM thanhvien WHERE mathanhvien = ? ";
//
//        PreparedStatement pstm = conn.prepareStatement(sql);
//
//        pstm.setInt(1, maThanhVien);
//
//        ResultSet rs = pstm.executeQuery();
//
//        if (rs.next()) {
//            ThanhVienModel thanhVienModel = new ThanhVienModel(
//                    Integer.parseInt(rs.getString("mathanhvien")),
//                    rs.getString("tendangnhap"),
//                    rs.getString("matkhau"),
//                    rs.getString("hoten"),
//                    rs.getString("diachi"),
//                    rs.getString("sodienthoai"),
//                    rs.getString("email"),
//                    Integer.parseInt(rs.getString("maphanquyen")));
//
//            return thanhVienModel;
//        }
//        return null;
//
//    }

    public static boolean UpdateThanhVien(Connection conn, ThanhVienModel obj)
            throws SQLException {
        int count = 0;
        try {
            String sql = "UPDATE thanhvien SET tendangnhap = ?,matkhau=?,hoten=?, diachi = ?, sodienthoai = ?, email = ?, maphanquyen =? WHERE mathanhvien = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setString(1, obj.getTenDangNhap());
            pstm.setString(2, obj.getMatKhau());
            pstm.setString(3, obj.getHoTen());
            pstm.setString(4, obj.getDiaChi());
            pstm.setString(5, obj.getSoDienThoai());
            pstm.setString(6, obj.getEmail());
            pstm.setInt(7, obj.getMaPhanQuyen());
            pstm.setInt(8, obj.getMaThanhVien());

            count = pstm.executeUpdate();
        } catch (SQLException ex) {
            count = 0;
            ex.printStackTrace();
        }
        return count > 0;
    }

    public static boolean UpdateThanhVienWithoutPassword(Connection conn, ThanhVienModel obj)
            throws SQLException {
        int count = 0;
        try {
            String sql = "UPDATE thanhvien SET tendangnhap = ?,"
                    + "hoten=?, diachi = ?, sodienthoai = ?, email = ?, maphanquyen =? WHERE mathanhvien = ?";
            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setString(1, obj.getTenDangNhap());
            pstm.setString(2, obj.getHoTen());
            pstm.setString(3, obj.getDiaChi());
            pstm.setString(4, obj.getSoDienThoai());
            pstm.setString(5, obj.getEmail());
            pstm.setInt(6, obj.getMaPhanQuyen());
            pstm.setInt(7, obj.getMaThanhVien());

            count = pstm.executeUpdate();
        } catch (SQLException ex) {
            count = 0;
            ex.printStackTrace();
        }
        return count > 0;
    }
//
//    public static ThanhVienModel FindByEmail(Connection conn, String email) throws SQLException {
//        String sql = "SELECT * FROM thanhvien WHERE email = ?";
//
//        PreparedStatement pstm = conn.prepareStatement(sql);
//        pstm.setString(1, email);
//
//        ResultSet rs = pstm.executeQuery();
//
//        if (rs.next()) {
//            ThanhVienModel thanhvien = new ThanhVienModel(Integer.parseInt(rs.getString("mathanhvien")),
//                    rs.getString("tendangnhap"),
//                    rs.getString("matkhau"),
//                    rs.getString("hoten"),
//                    rs.getString("diachi"),
//                    rs.getString("sodienthoai"),
//                    rs.getString("email"),
//                    Integer.parseInt(rs.getString("maphanquyen"))
//            );
//            return thanhvien;
//        }
//        return null;
//
//    }

    public static boolean isExistEmail(Connection conn, String email, int maThanhVien) throws SQLException {
        String sql = "SELECT * FROM thanhvien WHERE email = ? AND mathanhvien <> ? ";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, email);
        pstm.setInt(2, maThanhVien);

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            return true; // có tồn tại email
        }
        return false;
    }
    
    
        public static boolean isExistTenDangNhap(Connection conn, String tenDangNhap) throws SQLException {
        String sql = "SELECT * FROM thanhvien WHERE tendangnhap = ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, tenDangNhap); 

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            return true; // có tồn tại tenDangNhap
        }
        return false;
    }
        
        
        public static List<AjaxModel> FindAllByTuKhoaAjax(Connection conn, String tuKhoa) throws SQLException {

        List<AjaxModel> listSach = new ArrayList<AjaxModel>();

        String sql = "SELECT DISTINCT * FROM thanhvien WHERE "
                + "( hoten LIKE ? OR tendangnhap LIKE ? OR  mathanhvien LIKE ? OR  email LIKE ? OR  sodienthoai LIKE ?)  LIMIT 0,10";
        try {
            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setString(1, "%" + tuKhoa + "%"); // tìm từ khóa
            pstm.setString(2, "%" + tuKhoa + "%"); // tìm từ khóa
            pstm.setString(3, "%" + tuKhoa + "%"); // tìm từ khóa
            pstm.setString(4, "%" + tuKhoa + "%"); // tìm từ khóa
            pstm.setString(5, "%" + tuKhoa + "%"); // tìm từ khóa

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                AjaxModel mode = new AjaxModel(
                        rs.getInt("mathanhvien"),
                        rs.getInt("mathanhvien")+ " - " + rs.getString("tendangnhap") + " - " + rs.getString("hoten"));
                listSach.add(mode);
            }

        } catch (SQLException e) {
            System.out.println(e.toString());
        }

        return listSach;

    }

        
        
        
        
        
        
        
        
        
        
}

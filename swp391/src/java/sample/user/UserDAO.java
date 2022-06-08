/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author THAI
 */
public class UserDAO {

    private static final String LOGIN = "SELECT fullName, roleID, image "
            + "FROM tblUsers WHERE userID=? AND password=? ";
    private static final String GET_LIST_USER_BY_STUDENT = "Select U.userID, U.fullName, U.email, U.address, U.roleID, U.image, U.phone,M.majorName, S.bio, S.currentTermNo from tblStudents S, tblUsers U, tblMajor M where S.studentID = U.userID  AND S.majorID = M.majorID AND U.status = 1 ";
    private static final String GET_LIST_USER_BY_RECUITER = "Select U.userID, U.fullName, U.email, U.address, U.roleID, U.image, U.phone,\n"
            + "R.website from tblRecruiters R, tblUsers U where R.recruiterID = U.userID AND U.status = 1 ";

    private static final String GET_LIST_STUDENT_BY_NAME = "Select U.userID, U.fullName, U.email, U.address, U.roleID, U.image, U.phone,M.majorName, S.bio, S.currentTermNo from tblStudents S, tblUsers U, tblMajor M \n"
            + "where S.studentID = U.userID  AND S.majorID = M.majorID AND U.fullName like ?";
    private static final String GET_LIST_RECUITER_BY_NAME = "Select U.userID, U.fullName, U.email, U.address, U.roleID, U.image, U.phone,R.website \n"
            + "from tblRecruiters R, tblUsers U where R.recruiterID = U.userID AND U.fullName like ?";

    private static final String DELETE = "UPDATE tblUsers SET status = 0 WHERE userID = ?";

    private static final String UPDATE = "UPDATE tblStudents SET majorID = ? FROM tblUsers U, tblStudents S\n"
            + "WHERE U.userID=S.studentID AND U.userID = ?";

    public UserDTO checkLogin(String userID, String password) throws SQLException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;

        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(LOGIN);
                ptm.setString(1, userID);
                ptm.setString(2, password);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    String fullName = rs.getString("fullName");
                    String roleID = rs.getString("roleID");
                    String imgae = rs.getString("image");

                    user = new UserDTO(userID, fullName, roleID, "", "", imgae, "", 0);
                }
            }

        } catch (Exception e) {
        } finally {
            if (rs != conn) {
                rs.close();
            }
            if (ptm != conn) {
                ptm.close();
            }
            if (conn != conn) {
                conn.close();
            }

        }
        return user;
    }

    public List<UserDTO> getListAllUserByStudent() throws SQLException {
        List<UserDTO> listUser = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_LIST_USER_BY_STUDENT);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String userID = rs.getString("userID");
                    String fullName = rs.getString("fullName");
                    String email = rs.getString("email");
                    String address = rs.getString("address");
                    String roleID = rs.getString("roleID");
                    String image = rs.getString("image");
                    int phone = rs.getInt("phone");
                    String major = rs.getString("majorName");
                    String biography = rs.getString("bio");
                    String currentTermNo = rs.getString("currentTermNo");

                    listUser.add(new UserDTO(userID, fullName, roleID, "", email, address, image, major, biography, "", currentTermNo, phone));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listUser;
    }

    public List<UserDTO> getListAllUserByRecuiter() throws SQLException {
        List<UserDTO> listUser2 = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_LIST_USER_BY_RECUITER);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String userID = rs.getString("userID");
                    String fullName = rs.getString("fullName");
                    String email = rs.getString("email");
                    String address = rs.getString("address");
                    String roleID = rs.getString("roleID");
                    String image = rs.getString("image");
                    int phone = rs.getInt("phone");
                    String website = rs.getString("website");

                    listUser2.add(new UserDTO(userID, fullName, roleID, email, address, image, website, phone));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listUser2;
    }

    public List<UserDTO> getListStudentByName(String search) throws SQLException {
        List<UserDTO> listUser2 = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_LIST_STUDENT_BY_NAME);
                ptm.setString(1, "%" + search + "%");
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String userID = rs.getString("userID");
                    String fullName = rs.getString("fullName");
                    String email = rs.getString("email");
                    String address = rs.getString("address");
                    String roleID = rs.getString("roleID");
                    String image = rs.getString("image");
                    int phone = rs.getInt("phone");
                    String major = rs.getString("majorName");
                    String biography = rs.getString("bio");
                    String currentTermNo = rs.getString("currentTermNo");

                    listUser2.add(new UserDTO(userID, fullName, roleID, major, email, address, image, major, biography, "", currentTermNo, phone));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listUser2;
    }

    public List<UserDTO> getListRecuiterByName(String search) throws SQLException {
        List<UserDTO> listUser2 = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_LIST_RECUITER_BY_NAME);
                ptm.setString(1, "%" + search + "%");
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String userID = rs.getString("userID");
                    String fullName = rs.getString("fullName");
                    String email = rs.getString("email");
                    String address = rs.getString("address");
                    String roleID = rs.getString("roleID");
                    String image = rs.getString("image");
                    int phone = rs.getInt("phone");
                    String website = rs.getString("website");

                    listUser2.add(new UserDTO(userID, fullName, roleID, email, address, image, website, phone));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listUser2;
    }

    public boolean deletUser(String userID) {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(DELETE);
                ptm.setString(1, userID);
                check = ptm.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
        } finally {

        }
        return check;
    }

    public boolean updateUser(UserDTO user) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement ptm = null;
        try {
            conn = DBUtils.getConnection();
            if(conn != null){
                ptm = conn.prepareStatement(UPDATE);
                String userID = user.getUserID();
                String majorID = user.getMajoir();
                ptm.setString(1, majorID);
                check = ptm.executeUpdate() > 0 ? true : false;
            }
            
        } catch (Exception e) {
        }finally{
              if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
              

        return check;
    }

}

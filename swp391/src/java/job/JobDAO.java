/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package job;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author Admin
 */
public class JobDAO {

    public List<JobDTO> getListJob(String search) throws SQLException {
        List<JobDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT jobID, title, price, description, duration, startDate, bussinessID, image, address "
                        + " FROM tblJob "
                        + " WHERE title like ? ";
                ptm = conn.prepareStatement(sql);
                ptm.setString(1, "%" + search + "%");
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String jobID = rs.getString("jobID");
                    String title = rs.getString("title");
                    double price = rs.getDouble("price");
                    String description = rs.getString("description");
                    String duration = rs.getString("duration");
                    String startDate = rs.getString("startDate");
                    String bussinessID = rs.getString("bussinessID");
                    String image = rs.getString("image");
                    String address = rs.getString("address");

                    list.add(new JobDTO(jobID, title, price, description, duration, startDate, bussinessID, image, address));
                }
            }
        } catch (Exception e) {
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
        return list;
    }

    public List<JobDTO> getListJobAuto() throws SQLException {
        List<JobDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "  SELECT jobID, title, price, description, duration, startDate, image, address "
                        + " FROM tblJob";
                ptm = conn.prepareStatement(sql);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String jobID = rs.getString("jobID");
                    String title = rs.getString("title");
                    double price = rs.getDouble("price");
                    String description = rs.getString("description");
                    String duration = rs.getString("duration");
                    String startDate = rs.getString("startDate");
                    String image = rs.getString("image");
                    String address = rs.getString("address");

                    list.add(new JobDTO(jobID, title, price, description, duration, startDate, "", image, address));
                }
            }
        } catch (Exception e) {
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
        return list;
    }

    public List<JobDTO> getListJobByMajor(String searchByMajor) throws SQLException {
        List<JobDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = " SELECT J.jobID, J.title, J.price, j.description, j.duration, j.startDate, j.image, j.address "
                        + " FROM tblJob J, tblRequestMajor RM, tblMajor M "
                        + " WHERE J.jobID = RM.jobID and RM.majorID = M.majorID and M.majorID = ? ";
                ptm = conn.prepareStatement(sql);
                ptm.setString(1, searchByMajor);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    String jobID = rs.getString("jobID");
                    String title = rs.getString("title");
                    double price = rs.getDouble("price");
                    String description = rs.getString("description");
                    String duration = rs.getString("duration");
                    String startDate = rs.getString("startDate");
                    String image = rs.getString("image");
                    String address = rs.getString("address");

                    list.add(new JobDTO(jobID, title, price, description, duration, startDate, "", image, address));
                }
            }
        } catch (Exception e) {
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
        return list;
    }

}

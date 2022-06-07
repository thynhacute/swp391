/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sample.user;

/**
 *
 * @author THAI
 */
public class UserDTO {
     private String userID;
     private String fullName;
     private String roleID;
     private String password;
     private String email;
     private String address;     
     private String image;
     private String majoir;
     private String biography;
     private String website;
     private String currentTermNo;
     private int phone;
     
         
     
    public UserDTO() {
        this.userID = "";
        this.fullName = "";
        this.roleID = "";
        this.password = "";
        this.email = "";
        this.address = "";
        this.image = "";
        this.majoir = "";
        this.biography = "";
        this.website = "";
        this.currentTermNo = "";
        this.phone = 0;
        
    }
  

//contructor recuiter
    public UserDTO(String userID, String fullName, String roleID, String email, String address, String image, String website, int phone) {
        this.userID = userID;
        this.fullName = fullName;
        this.roleID = roleID;
        this.email = email;
        this.address = address;
        this.image = image;
        this.website = website;
        this.phone = phone;
    }

    

    
//contructor student

    public UserDTO(String userID, String fullName, String roleID, String password, String email, String address, String image, String majoir, String biography, String website, String currentTermNo, int phone) {
        this.userID = userID;
        this.fullName = fullName;
        this.roleID = roleID;
        this.password = password;
        this.email = email;
        this.address = address;
        this.image = image;
        this.majoir = majoir;
        this.biography = biography;
        this.website = website;
        this.currentTermNo = currentTermNo;
        this.phone = phone;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getRoleID() {
        return roleID;
    }

    public void setRoleID(String roleID) {
        this.roleID = roleID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getMajoir() {
        return majoir;
    }

    public void setMajoir(String majoir) {
        this.majoir = majoir;
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String biography) {
        this.biography = biography;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getCurrentTermNo() {
        return currentTermNo;
    }

    public void setCurrentTermNo(String currentTermNo) {
        this.currentTermNo = currentTermNo;
    }
    
    
 
}

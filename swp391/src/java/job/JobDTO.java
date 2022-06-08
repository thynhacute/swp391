/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package job;

/**
 *
 * @author Admin
 */
public class JobDTO {

    private String jobID;
    private String title;
    private double price;
    private String description;
    private String duration;
    private String startDate;
    private String bussinessID;
    private String image;
    private String address;

    public JobDTO() {
        this.jobID = "";
        this.title = "";
        this.price = 0;
        this.description = "";
        this.duration = "";
        this.startDate = "";
        this.bussinessID = "";
        this.image = "";
        this.address = "";
    }

    public JobDTO(String jobID, String title, double price, String description, String duration, String startDate, String bussinessID, String image, String address) {
        this.jobID = jobID;
        this.title = title;
        this.price = price;
        this.description = description;
        this.duration = duration;
        this.startDate = startDate;
        this.bussinessID = bussinessID;
        this.image = image;
        this.address = address;
    }

    public String getJobID() {
        return jobID;
    }

    public void setJobID(String jobID) {
        this.jobID = jobID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getBussinessID() {
        return bussinessID;
    }

    public void setBussinessID(String bussinessID) {
        this.bussinessID = bussinessID;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}

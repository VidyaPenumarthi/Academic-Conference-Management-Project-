package com.klef.jfsd.acp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "conference_table")
public class Conference {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "submission_id")
    private int id;

    @Column(name = "author_name", nullable = false, length = 100)
    private String authorName;

    @Column(name = "author_email", nullable = false)
    private String authorEmail;

    @Column(name = "password", nullable = false)
    private String password; // Added for login authentication

    @Column(name = "paper_title", nullable = false, length = 200)
    private String paperTitle;

    @Column(name = "paper_abstract", nullable = false, length = 1000)
    private String paperAbstract;

    @Column(name = "file_path", nullable = false, length = 255)
    private String filePath;

    @Column(name = "review_status", nullable = false, length = 20)
    private String reviewStatus; // e.g., Pending, Accepted, Rejected

    @Column(name = "reviewer_comments", length = 1000)
    private String reviewerComments;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getAuthorEmail() {
        return authorEmail;
    }

    public void setAuthorEmail(String authorEmail) {
        this.authorEmail = authorEmail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPaperTitle() {
        return paperTitle;
    }

    public void setPaperTitle(String paperTitle) {
        this.paperTitle = paperTitle;
    }

    public String getPaperAbstract() {
        return paperAbstract;
    }

    public void setPaperAbstract(String paperAbstract) {
        this.paperAbstract = paperAbstract;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getReviewStatus() {
        return reviewStatus;
    }

    public void setReviewStatus(String reviewStatus) {
        this.reviewStatus = reviewStatus;
    }

    public String getReviewerComments() {
        return reviewerComments;
    }

    public void setReviewerComments(String reviewerComments) {
        this.reviewerComments = reviewerComments;
    }

    @Override
    public String toString() {
        return "ConferenceSubmission [id=" + id + ", authorName=" + authorName + ", authorEmail=" + authorEmail
                + ", paperTitle=" + paperTitle + ", paperAbstract=" + paperAbstract + ", filePath=" + filePath
                + ", reviewStatus=" + reviewStatus + ", reviewerComments=" + reviewerComments + "]";
    }
}

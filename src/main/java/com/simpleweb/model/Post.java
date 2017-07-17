package com.simpleweb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

/**
 * Created by Jakaria on 7/17/2017.
 */
@Entity
public class Post {
    public enum Status { ACTIVE, INACTIVE };

    private int id;
    private int userId;
    private String title;
    private String details;
    private Status status;
    private int positiveVote;
    private int negativeVote;
    private Date created;
    private Date updated;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", unique = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public int getPositiveVote() {
        return positiveVote;
    }

    public void setPositiveVote(int positiveVote) {
        this.positiveVote = positiveVote;
    }

    public int getNegativeVote() {
        return negativeVote;
    }

    public void setNegativeVote(int negativeVote) {
        this.negativeVote = negativeVote;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }
}

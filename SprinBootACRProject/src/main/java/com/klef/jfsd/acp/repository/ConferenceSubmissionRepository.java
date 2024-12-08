package com.klef.jfsd.acp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.acp.model.Conference;

@Repository
public interface ConferenceSubmissionRepository extends JpaRepository<Conference, Integer> {

    // Custom query method to check login credentials
    @Query("SELECT c FROM Conference c WHERE c.authorEmail = ?1 AND c.password = ?2")
    Conference checkConferenceLogin(String email, String password);

    // Find submissions by review status
    List<Conference> findByReviewStatus(String reviewStatus);

    // Find submissions by author email
    List<Conference> findByAuthorEmail(String authorEmail);
}

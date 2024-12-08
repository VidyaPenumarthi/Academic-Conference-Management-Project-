package com.klef.jfsd.acp.service;

import java.util.List;

import com.klef.jfsd.acp.model.Conference;

public interface ConferenceSubmissionService {
    // Existing methods for handling conference submissions
    Conference saveSubmission(Conference submission);
    Conference updateSubmission(Conference submission);
    void deleteSubmission(int id);
    Conference getSubmissionById(int id);
    List<Conference> getAllSubmissions();
    List<Conference> getSubmissionsByReviewStatus(String reviewStatus);
    List<Conference> getSubmissionsByAuthorEmail(String authorEmail);
    
    // New methods for login and registration
    public Conference checkdonorlogin(String email,String password);
    String registerConference(Conference conference);
    Conference loginConference(String email, String password);
}

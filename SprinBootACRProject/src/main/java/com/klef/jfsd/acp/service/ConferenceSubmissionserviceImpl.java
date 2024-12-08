package com.klef.jfsd.acp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.acp.model.Conference;
import com.klef.jfsd.acp.repository.ConferenceSubmissionRepository;
import com.klef.jfsd.acp.service.ConferenceSubmissionService;

@Service
public class ConferenceSubmissionserviceImpl implements ConferenceSubmissionService {

    @Autowired
    private ConferenceSubmissionRepository submissionRepository;
    
   
    

    
    @Override
    public Conference saveSubmission(Conference submission) {
        return submissionRepository.save(submission);
    }

    @Override
    public Conference updateSubmission(Conference submission) {
        return submissionRepository.save(submission);
    }

    @Override
    public void deleteSubmission(int id) {
        submissionRepository.deleteById(id);
    }

    @Override
    public Conference getSubmissionById(int id) {
        return submissionRepository.findById(id).orElse(null);
    }

    @Override
    public List<Conference> getAllSubmissions() {
        return submissionRepository.findAll();
    }

    @Override
    public List<Conference> getSubmissionsByReviewStatus(String reviewStatus) {
        return submissionRepository.findByReviewStatus(reviewStatus);
    }

    @Override
    public List<Conference> getSubmissionsByAuthorEmail(String authorEmail) {
        return submissionRepository.findByAuthorEmail(authorEmail);
    }

	@Override
	public Conference checkdonorlogin(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String registerConference(Conference conference) {
	    // Check if the email is already registered
	    List<Conference> existingConferences = submissionRepository.findByAuthorEmail(conference.getAuthorEmail());
	    if (!existingConferences.isEmpty()) {
	        return "Email is already registered!";
	    }

	    // Save the conference submission
	    submissionRepository.save(conference);
	    return "Conference Registration successful!";
	}

	@Override
	public Conference loginConference(String email, String password) {
	    // Fetch the conference based on the email
	    List<Conference> conferences = submissionRepository.findByAuthorEmail(email);

	    // If no conference found with that email, return null
	    if (conferences.isEmpty()) {
	        return null;
	    }

	    // Return the first conference found (assuming email is unique)
	    return conferences.get(0);
	}

    
    
}
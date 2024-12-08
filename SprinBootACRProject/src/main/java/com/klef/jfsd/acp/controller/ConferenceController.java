package com.klef.jfsd.acp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.acp.model.Conference;
import com.klef.jfsd.acp.service.ConferenceSubmissionService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ConferenceController {

    @Autowired
    private ConferenceSubmissionService conferenceService;

    // Home Page
    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }
    // Registration Page
    @GetMapping("/register")
    public ModelAndView registerPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("register");
        return mv;
    }

    // Login Page
    @GetMapping("/login")
    public ModelAndView loginPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login");
        return mv;
    }

    // Registration Handling
    @PostMapping("/register")
    public ModelAndView register(HttpServletRequest request) {
        // Extract registration details from the request and process them
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        // Add logic to save the user credentials in the database (not shown)
        
        ModelAndView mv = new ModelAndView();
        mv.setViewName("registersuccess");
        mv.addObject("message", "Registration successful.");
        return mv;
    }

    // Login Handling
    @PostMapping("/login")
    public ModelAndView login(HttpServletRequest request) {
        // Extract login details and validate them (not shown)
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Placeholder logic for validation
        boolean isAuthenticated = true; // Replace with real validation logic

        ModelAndView mv = new ModelAndView();
        if (isAuthenticated) {
            mv.setViewName("homesuccess");
            mv.addObject("message", "Login successful.");
        } else {
            mv.setViewName("login");
            mv.addObject("error", "Invalid credentials.");
        }
        return mv;
    }


    // Add Conference Page
    @GetMapping("/addconference")
    public ModelAndView addConferencePage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addconference");
        return mv;
    }

    @PostMapping("/submitConference")
    public ModelAndView submitConference(HttpServletRequest request) {
        Conference conference = new Conference();
        conference.setAuthorName(request.getParameter("authorName"));
        conference.setAuthorEmail(request.getParameter("authorEmail"));
        conference.setPassword(request.getParameter("password")); // Added password handling
        conference.setPaperTitle(request.getParameter("paperTitle"));
        conference.setPaperAbstract(request.getParameter("paperAbstract"));
        conference.setFilePath(request.getParameter("filePath"));
        conference.setReviewStatus("Pending");

        // Save the conference submission
        Conference savedConference = conferenceService.saveSubmission(conference);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("conferencesuccess");
        mv.addObject("message", "Conference submitted successfully. ID: " + savedConference.getId());
        return mv;
    }
    @GetMapping("/viewconferences")
    public ModelAndView viewConferences() {
        List<Conference> conferences = conferenceService.getAllSubmissions();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewconferences");
        mv.addObject("conferences", conferences);
        return mv;
    }



    
    @GetMapping("/conferencedetails")
    public ModelAndView conferenceDetails(HttpServletRequest request) {
        String idParam = request.getParameter("id");
        ModelAndView mv = new ModelAndView();

        if (idParam == null || idParam.isEmpty()) {
            mv.setViewName("error");
            mv.addObject("message", "Invalid conference ID provided.");
            return mv;
        }

        try {
            int conferenceId = Integer.parseInt(idParam);
            Conference conference = conferenceService.getSubmissionById(conferenceId);

            if (conference == null) {
                mv.setViewName("error");
                mv.addObject("message", "Conference not found.");
            } else {
                mv.setViewName("conferencedetails");
                mv.addObject("conference", conference);
            }
        } catch (NumberFormatException e) {
            mv.setViewName("error");
            mv.addObject("message", "Invalid conference ID format.");
        }

        return mv;
    }
    @GetMapping("/logout")
    public ModelAndView logoutConference(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate(); // Invalidate the session
        ModelAndView mv = new ModelAndView();
        mv.setViewName("conferencelogin"); // Redirect to the conference login page
        mv.addObject("message", "Successfully logged out");
        return mv;
    }


    // Update Conference Page
    @GetMapping("/updateconference")
    public ModelAndView updateConferencePage(HttpServletRequest request) {
        int conferenceId = Integer.parseInt(request.getParameter("id"));
        Conference conference = conferenceService.getSubmissionById(conferenceId);
        ModelAndView mv = new ModelAndView();

        if (conference == null) {
            mv.setViewName("error");
            mv.addObject("message", "Conference not found.");
        } else {
            mv.setViewName("updateconference");
            mv.addObject("conference", conference);
        }
        return mv;
    }

    // Update Conference Submission
    @PostMapping("/updateConference")
    public ModelAndView updateConference(HttpServletRequest request) {
        int conferenceId = Integer.parseInt(request.getParameter("id"));
        Conference existingConference = conferenceService.getSubmissionById(conferenceId);
        ModelAndView mv = new ModelAndView();

        if (existingConference == null) {
            mv.setViewName("error");
            mv.addObject("message", "Conference not found.");
        } else {
            existingConference.setAuthorName(request.getParameter("authorName"));
            existingConference.setAuthorEmail(request.getParameter("authorEmail"));
            existingConference.setPaperTitle(request.getParameter("paperTitle"));
            existingConference.setPaperAbstract(request.getParameter("paperAbstract"));
            existingConference.setFilePath(request.getParameter("filePath"));
            existingConference.setReviewStatus(request.getParameter("reviewStatus")); // Updated status if provided

            // Save the updated conference
            Conference updatedConference = conferenceService.updateSubmission(existingConference);
            mv.setViewName("conferencesuccess");
            mv.addObject("message", "Conference updated successfully. ID: " + updatedConference.getId());
        }
        return mv;
    }

    // Delete Conference
    @GetMapping("/deleteconference")
    public ModelAndView deleteConference(HttpServletRequest request) {
        int conferenceId = Integer.parseInt(request.getParameter("id"));
        conferenceService.deleteSubmission(conferenceId);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("deletesuccess");
        mv.addObject("message", "Conference deleted successfully.");
        return mv;
    }
}


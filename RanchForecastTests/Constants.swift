//
//  Constants.swift
//  RanchForecast
//
//  Created by Stephen Skubik-Peplaski on 10/1/15.
//  Copyright © 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Foundation

class Constants {
    static let urlString = "https://training.bignerdranch.com/classes/test-course"
    static let url = NSURL(string: urlString)!
    static let title = "Test Courses"
    
    static let dateString = "2014-06-02"
    static let dateFormatter: NSDateFormatter = {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    static let date = dateFormatter.dateFromString(dateString)!
    
    static let validCourseDict = [
        "title" : title,
        "url" : urlString,
        "upcoming" : [["start_date" : dateString]]
    ]
    
    static let coursesDictionary = [ "courses" : [validCourseDict] ]
    static let okResponse = NSHTTPURLResponse (
        URL: url,
        statusCode: 200,
        HTTPVersion: nil,
        headerFields: nil
    )
    
    static let jsonData = try! NSJSONSerialization.dataWithJSONObject(coursesDictionary, options: [])
}
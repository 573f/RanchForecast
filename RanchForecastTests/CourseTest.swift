//
//  CourseTest.swift
//  RanchForecast
//
//  Created by Stephen Skubik-Peplaski on 10/1/15.
//  Copyright © 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import XCTest
@testable import RanchForecast

class CourseTests: XCTestCase {
    func testCourseInitialization() {
        let course = Course(
            title: Constants.title,
            url: Constants.url,
            nextStartDate: Constants.date
        )
        XCTAssertEqual(course.title, Constants.title)
        XCTAssertEqual(course.url, Constants.url)
        XCTAssertEqual(course.nextStartDate, Constants.date)
    }
    
}

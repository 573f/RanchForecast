//
//  Course.swift
//  RanchForecast
//
//  Created by Stephen Skubik-Peplaski on 9/29/15.
//  Copyright © 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Foundation

class Course: NSObject {
    let title: String
    let url: NSURL
    let nextStartDate: NSDate
    
    init(title: String, url: NSURL, nextStartDate: NSDate) {
        self.title = title
        self.url = url
        self.nextStartDate = nextStartDate
        super.init()
    }
}
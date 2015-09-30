//
//  MainWindowController.swift
//  RanchForecast
//
//  Created by Stephen Skubik-Peplaski on 9/29/15.
//  Copyright © 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet var tableView: NSTableView!
    @IBOutlet var arrayController: NSArrayController!
    
    let fetcher = ScheduleFetcher()
    dynamic var courses: [Course] = []
    
    override var windowNibName: String {
        return "MainWindowController"
    }

    override func windowDidLoad() {
        super.windowDidLoad()
        
        tableView.target = self
        tableView.doubleAction = Selector("openClass:")

        fetcher.fetchCoursesUsingCompletionHandler { (result) in
            switch result {
            case .Success(let courses):
                print("Got courses: \(courses)")
                self.courses = courses
            case .Failure(let error):
                print("Got error: \(error)")
                NSAlert(error:error).runModal()
                self.courses = []
            }
        }
    }
    
    func openClass(sender: AnyObject!) {
        if let course = arrayController.selectedObjects.first as? Course {
            NSWorkspace.sharedWorkspace().openURL(course.url)
        }
    }
}

//
//  AppDelegate.swift
//  CrashlyticsTest
//
//  Created by Viktor Radulov on 9/30/20.
//

import Cocoa
import Firebase

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        FirebaseApp.configure()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}


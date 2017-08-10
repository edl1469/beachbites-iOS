//
//  ViewController.swift
//  beachbites
//
//  Created by appdev on 7/18/17.
//  Copyright © 2017 appdev. All rights reserved.
//

import UIKit
import FirebaseMessaging


class ViewController: UIViewController {
    
    
   
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(applicationWillEnterForeground), name: .UIApplicationWillEnterForeground, object: nil)

        let bitesURL = URL(string: "https://its-svcmgmt01.its.csulb.edu/bites/")
       
        webView.loadRequest(URLRequest(url: bitesURL!))
         

}
func applicationWillEnterForeground(){

self.webView.reload()
print("WebView has Reloaded!")
}

     
}


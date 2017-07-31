//
//  ViewController.swift
//  beachbites
//
//  Created by appdev on 7/18/17.
//  Copyright © 2017 appdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bitesURL = URL(string: "https://its-svcmgmt01.its.csulb.edu/bites/")
        
        webView.loadRequest(URLRequest(url: bitesURL!))
        
        
    }
    
    
}


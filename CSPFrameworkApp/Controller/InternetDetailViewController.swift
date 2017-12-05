//
//  InternetDetailViewController.swift
//  CSPFrameworkApp
//
//  Created by Jones, Alec on 11/29/17.
//  Copyright © 2017 Jones, Alec. All rights reserved.
//

import UIKit
import WebKit

class InternetDetailViewController: UIViewController
{
    //Mark: GUI Controlls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    var detailAddress : String?
    {
        //Mark: Update the detail view when a value is changed
        didSet
        {
            configureDetailView()
        }
    }
    var detailText : String?
    {
        didSet
        {
            configureDetailView()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDetailView()
    }
    
    private func configureDetailView() -> Void
    {
        if detailAddress != nil
        {
            if let currentWebView = webViewer
            {
                let currentURL = URL(string: detailAddress!)
                let currentWebRequest = URLRequest(url: currentURL!)
                currentWebView.load(currentWebRequest)
            }
        }
        else
        {
            if let currentWebView = webViewer
            {
            let currentURL = URL(string: "https://www.cnn.com")
            currentWebView.load(URLRequest(url:currentURL!))
            }
        }
        
        if detailText != nil
        {
            if let currentText = textView
            {
                currentText.text = detailText
            }
        }
        else
        {
            if let currentText = textView
            {
                currentText.text = "Alec's CSP app internet screen"
            }
        }
    }
 }

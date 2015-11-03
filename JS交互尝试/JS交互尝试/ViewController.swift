//
//  ViewController.swift
//  JS交互尝试
//
//  Created by narcissu on 15/11/3.
//  Copyright © 2015年 narcissu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate{

    var webView = UIWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.frame = CGRectMake(0, 0, self.view.bounds.width, self.view.bounds.height)
        webView.delegate = self
        self.view.addSubview(self.webView)
        let urlPath = NSBundle.mainBundle().pathForResource("aa(1).html", ofType: nil)
        if let path = urlPath {
            let url = NSURL(fileURLWithPath: path)
            let request = NSURLRequest(URL: url)
            self.webView.loadRequest(request)
        }
     
    }
    
    //MARK: - UIWebViewDelegate
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        let urlstr = request.URL?.absoluteString
        if let url =  urlstr where url.rangeOfString("//ios-one") != nil{
            print("第一个按钮的点击")
        }
        
        if let url =  urlstr where url.rangeOfString("//ios-two") != nil{
            print("第二个按钮的点击")
        }
        
        if let url =  urlstr where url.rangeOfString("//ios-three") != nil{
            print("第三个按钮的点击")
        }
        
//        print("\(request)")
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


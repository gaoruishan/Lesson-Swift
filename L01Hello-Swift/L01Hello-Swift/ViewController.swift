//
//  ViewController.swift
//  L01Hello-Swift
//
//  Created by gaoruishan on 15/8/24.
//  Copyright (c) 2015年 gaoruishan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
      
      //1，声明个变量 IBOutlet 绑定UIWebView
      //（点击右键 Reference Outlet + 手动拖动到 View Controller）变量钱灰色圆圈
      @IBOutlet var wv:UIWebView!

      override func viewDidLoad() {
            super.viewDidLoad()
            
            // 2，WebVeiw  加载URL
            wv.loadRequest(NSURLRequest(URL:NSURL(string:"http://www.baidu.com")!))
            
            var h = Hello()
            h.sayHello()
      }

      override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
      }


}


//
//  ViewController.swift
//  draggingViews
//
//  Created by Cedric Nicolas on 11/19/17.
//  Copyright © 2017 NativeTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var addView: UIButton!
    @IBAction func addViewAction(_ sender: UIButton) {
        addViewFunc()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let halfSizeOfView = 25.0
//        let maxViews = 25
//        let insetSize = self.view.bounds.insetBy(dx: CGFloat(Int(2 * halfSizeOfView)), dy: CGFloat(Int(2 * halfSizeOfView))).size
//        // Add the Views
//        for _ in 0..<maxViews {
//            let pointX = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.width))))
//            let pointY = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.height))))
//
//            let newView = touchViews(frame: CGRect(x: pointX, y: pointY, width: 50, height: 50))
//            self.view.addSubview(newView)
//        }
    }

    func addViewFunc(){
        let halfSizeOfView = 25.0
        let insetSize = self.view.bounds.insetBy(dx: CGFloat(Int(2 * halfSizeOfView)), dy: CGFloat(Int(2 * halfSizeOfView))).size
        
        let pointX = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.width))))
        let pointY = CGFloat(UInt(arc4random() % UInt32(UInt(insetSize.height))))
        
        let newView = touchViews(frame: CGRect(x: pointX, y: pointY, width: 50, height: 50))
        self.view.addSubview(newView)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


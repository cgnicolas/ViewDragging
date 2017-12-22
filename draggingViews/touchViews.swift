//
//  touchViews.swift
//  draggingViews
//
//  Created by Cedric Nicolas on 11/19/17.
//  Copyright © 2017 NativeTech. All rights reserved.
//

import UIKit

class touchViews: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var lastLocation = CGPoint(x: 0, y: 0)
    override init(frame: CGRect) {
        super.init(frame: frame)
        //Initializing gesture recognizer for view, which allows one to touch and drag
        let panRecog = UIPanGestureRecognizer(target: self, action: #selector(detectPan(_ :)))
        self.gestureRecognizers = [panRecog]
        
        //Randomizing view colors
        let blueValue = CGFloat(Int(arc4random() % 255)) / 255.0
        let greenValue = CGFloat(Int(arc4random() % 255)) / 255.0
        let redValue = CGFloat(Int(arc4random() % 255)) / 255.0
        
        self.backgroundColor = UIColor(red:redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func detectPan(_ recognizer: UIPanGestureRecognizer){
        let translation = recognizer.translation(in: self.superview)
        self.center = CGPoint(x: lastLocation.x + translation.x, y: lastLocation.y + translation.y)
    }
    
    override func touchesBegan(_ touches: (Set<UITouch>!), with event: UIEvent!) {
        // Promote the touched view
        self.superview?.bringSubview(toFront: self)
        
        // Remember original location
        lastLocation = self.center
    }
    
}

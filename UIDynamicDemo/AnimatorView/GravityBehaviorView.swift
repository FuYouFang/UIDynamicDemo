//
//  GravityBehaviorView.swift
//  UIDynamicDemo
//
//  Created by fuyoufang on 04/02/2018.
//  Copyright © 2018 fuyoufang. All rights reserved.
//

import UIKit

class GravityBehaviorView: BaseBehaviorView {
    var gravityBehavior: UIGravityBehavior!
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        gravityBehavior = UIGravityBehavior(items: [imageView])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        animator.removeAllBehaviors()
        animator.addBehavior(gravityBehavior)
    }
}

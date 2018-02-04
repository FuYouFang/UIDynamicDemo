//
//  CollisionBehaviorView.swift
//  UIDynamicDemo
//
//  Created by fuyoufang on 04/02/2018.
//  Copyright © 2018 fuyoufang. All rights reserved.
//

import UIKit

class CollisionBehaviorView: GravityBehaviorView {
    var collisionBehavior: UICollisionBehavior!
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        collisionBehavior = UICollisionBehavior(items: [imageView])
        // translatesReferenceBoundsIntoBoundary 属性表示是否以当前坐标系边界作为检测碰撞的边界
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true;
        collisionBehavior.collisionDelegate = self;
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        animator.removeAllBehaviors()
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        animator.addBehavior(gravityBehavior)
        animator.addBehavior(collisionBehavior)
    }
}

extension CollisionBehaviorView: UICollisionBehaviorDelegate {
    
}

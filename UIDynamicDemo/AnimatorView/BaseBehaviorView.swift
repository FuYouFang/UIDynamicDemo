//
//  BaseBehaviorView.swift
//  UIDynamicDemo
//
//  Created by fuyoufang on 04/02/2018.
//  Copyright © 2018 fuyoufang. All rights reserved.
//

import UIKit

class BaseBehaviorView: UIView {
    var imageView = UIImageView(image:UIImage(named:"Box"))
    private var backgroundImageView = UIImageView(image:UIImage(named:"Background")?.resizableImage(withCapInsets: UIEdgeInsetsMake(0, 0, 0, 0), resizingMode: .tile))
    
    var animator : UIDynamicAnimator!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        
        animator = UIDynamicAnimator(referenceView: self)
        self.addSubview(backgroundImageView)
        self.addSubview(imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        backgroundImageView.frame = self.frame;
    }
    
    deinit {
        print("deinit")
    }
}

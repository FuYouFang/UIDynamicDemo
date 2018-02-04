//
//  DynamicViewController.swift
//  UIDynamicDemo
//
//  Created by fuyoufang on 04/02/2018.
//  Copyright © 2018 fuyoufang. All rights reserved.
//

import UIKit

enum DynamicType {
    case Gravity
    
    func text() -> String {
        switch self {
        case .Gravity:
            return "重力仿真"
        }
    }
    
    func viewClass() -> BaseBehaviorView.Type {
        switch self {
        case .Gravity:
            return GravityBehaviorView.self
        }
    }
}

class DynamicViewController: UIViewController {
    var type: DynamicType!
    
    init(type: DynamicType) {
        self.type = type
        super.init(nibName: nil, bundle: nil)
    }

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dynamicView = type.viewClass().init()
        self.view.addSubview(dynamicView)
        dynamicView.frame = self.view.frame
    }
}

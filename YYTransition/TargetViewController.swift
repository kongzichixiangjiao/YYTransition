//
//  TargetViewController.swift
//  YYTransition
//
//  Created by 侯佳男 on 2017/12/28.
//  Copyright © 2017年 侯佳男. All rights reserved.
//

import UIKit

class TargetViewController: ViewController {
    
    var type: YYTransitionAnimationType!
    
    @IBOutlet weak var toView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        yyPush.setDelegate()
        
        switch type! {
        case .circle(_):
            yyPush.transition(type: YYTransitionAnimationType.circle(isBack: true))
            break
        case .move(_):
            yyPush.transition(type: YYTransitionAnimationType.move(isBack: true))
            break
        case .middle(_):
            yyPush.transition(type: YYTransitionAnimationType.middle(isBack: true))
        case .tier(_):
            yyPush.transition(type: YYTransitionAnimationType.tier(isBack: true))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
    }
    
}

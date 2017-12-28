//
//  ViewController.swift
//  YYTransition
//
//  Created by 侯佳男 on 2017/12/27.
//  Copyright © 2017年 侯佳男. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 我在这里修改了什么
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        yyPush.setDelegate()
    }
    
    @IBAction func middle(_ sender: Any) {
        let type = YYTransitionAnimationType.middle(isBack: false)
        yyPush.transition(type: type)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TargetViewController") as! TargetViewController
        vc.type = type
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tapCircle(_ sender: Any) {
        let type = YYTransitionAnimationType.circle(isBack: false)
        yyPush.transition(type: type, fromView: circleView)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TargetViewController") as! TargetViewController
        vc.type = type
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let type = YYTransitionAnimationType.move(isBack: false)
        yyPush.transition(type: type, fromView: sender.view, toViewPath: "toView")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TargetViewController") as! TargetViewController
        vc.type = type
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tier(_ sender: Any) {
        let type = YYTransitionAnimationType.tier(isBack: false)
        yyPush.transition(type: type)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TargetViewController") as! TargetViewController
        vc.type = type
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}


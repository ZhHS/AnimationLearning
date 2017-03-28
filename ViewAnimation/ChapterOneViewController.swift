//
//  ChapterOneViewController.swift
//  ViewAnimation
//
//  Created by apple on 2017/2/27.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ChapterOneViewController: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(#function)
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: {
            self.usernameTF.frame.origin.x += ScreenWidth
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.2, options: .curveEaseInOut, animations: {
            self.passwordTF.frame.origin.x += ScreenWidth
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.4, options: .curveEaseInOut, animations: {
            self.loginBtn.frame.origin.x += ScreenWidth
        }, completion: nil)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print(#function)
        
    }
    
    @IBAction func login() {
        let animtion = CAKeyframeAnimation(keyPath: "position.x")
        animtion.values = [0, 10, -10, 10, 0]
        animtion.isAdditive = true
        usernameTF.layer.add(animtion, forKey: "position")
        passwordTF.layer.add(animtion, forKey: "position")
    }
}

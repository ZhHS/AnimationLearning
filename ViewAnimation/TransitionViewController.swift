//
//  TransitionViewController.swift
//  ViewAnimation
//
//  Created by apple on 2017/3/1.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TransitionViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    var childView: UIView!
    var newChildView: UIView!
    var textLable: UILabel!
    let texts = ["connecting", "connected", "dismissed"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        childView = UIView()
//        childView.frame = CGRect(x: 0.0, y: 30.0, width: ScreenWidth, height: 30)
//        childView.backgroundColor = UIColor.yellow
//        containerView.addSubview(childView)
        
        newChildView = UIView()
        newChildView.frame = CGRect(x: 0.0, y: 30.0, width: ScreenWidth, height: 30)
        newChildView.isHidden = true
        newChildView.backgroundColor = UIColor.red
        containerView.addSubview(newChildView)
        
        textLable = UILabel()
        textLable.textColor = UIColor.black
        textLable.center = newChildView.center
        textLable.bounds = newChildView.frame
        textLable.isHidden = true
        newChildView.addSubview(textLable)
        
        
    }

    @IBAction func addNewVIew(_ sender: UIButton) {
        
        showBanner(index: 0)
    }
    
    func showBanner(index: Int) {
        var nIndex = index
        if nIndex > 2 {
            nIndex = 0
        }
        
        textLable.text = texts[nIndex]
        UIView.transition(with: newChildView, duration: 0.6, options: [.transitionCurlDown], animations: {
            self.newChildView.isHidden = false
            self.textLable.isHidden = false
        }, completion:  { (_) in
            delay(2.0, completion: { 
                self.removeBanner(index: nIndex)
            })
        })
    }
    
    func removeBanner(index: Int) {
        UIView.animate(withDuration: 0.5, delay: 0.0, options: [.curveEaseInOut], animations: { 
            self.newChildView.center.x += ScreenWidth
        }) { (_) in
            self.newChildView.isHidden = true
            self.textLable.isHidden = true
            self.newChildView.frame = CGRect(x: 0.0, y: 30.0, width: ScreenWidth, height: 30)
            
            self.showBanner(index: index + 1)
        }
    }
}

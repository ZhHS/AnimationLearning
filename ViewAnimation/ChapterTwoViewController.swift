//
//  ChapterTwoViewController.swift
//  ViewAnimation
//
//  Created by apple on 2017/2/28.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ChapterTwoViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var clickBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        redView.center.x -= ScreenWidth
        greenView.center.x -= ScreenWidth
        blueView.center.x -= ScreenWidth
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0.5,
                       options: [.curveEaseInOut],
                       animations: {
                        self.redView.center.x += ScreenWidth
        },
                       completion: nil)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.4,
                       usingSpringWithDamping: 0.6,
                       initialSpringVelocity: 0.5,
                       options: [.curveEaseInOut],
                       animations: {
                        self.greenView.center.x += ScreenWidth
        },
                       completion: nil)
        
        UIView.animate(withDuration: 0.5,
                       delay: 0.8,
                       usingSpringWithDamping: 0.4,
                       initialSpringVelocity: 0.5,
                       options: [.curveEaseInOut],
                       animations: {
                        self.blueView.center.x += ScreenWidth
        },
                       completion: nil)
    }
    
    
    @IBAction func clickAnimation(_ sender: UIButton) {
        UIView.animate(withDuration: 0.5,
                       delay: 0.0,
                       usingSpringWithDamping: 0.3,
                       initialSpringVelocity: 0.5,
                       options: [],
                       animations: { 
                        sender.center.y += 80
                        sender.bounds.size.width += 60
        },
                       completion: nil)
    }
}

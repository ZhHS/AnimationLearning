//
//  ChapterFourViewController.swift
//  ViewAnimation
//
//  Created by apple on 2017/3/2.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ChapterFourViewController: UIViewController {
    @IBOutlet weak var detailLable: UILabel!

    let titlts = ["This is China", "This is American", "This is England"]
    var index: NSInteger = 0;
    
    enum AnimationDirection: Int {
        case positive = 1
        case negative = -1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cubeTransition(label: detailLable, text: titlts[index], direction: .negative)
    }
    
    
    
    func cubeTransition(label: UILabel, text: String, direction: AnimationDirection) {
        
        let auxLabel = UILabel(frame: label.frame)
        auxLabel.text = text
        auxLabel.font = label.font
        auxLabel.textAlignment = label.textAlignment
        auxLabel.textColor = label.textColor
//        auxLabel.backgroundColor = label.backgroundColor
        
        let auxLabelOffset = CGFloat(direction.rawValue) *
            label.frame.size.height/2.0
        
        auxLabel.transform = CGAffineTransform(scaleX: 1.0, y: 0.1).concatenating(
            CGAffineTransform(translationX: 0.0, y: auxLabelOffset))
        label.superview?.addSubview(auxLabel)
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseOut,
                       animations: {
                        auxLabel.transform = CGAffineTransform.identity
                        label.transform =
                            CGAffineTransform(scaleX: 1.0, y: 0.1).concatenating(
                                CGAffineTransform(translationX: 0.0, y: -auxLabelOffset))
        },
                       completion: {_ in
                        label.text = auxLabel.text
                        label.transform = CGAffineTransform.identity
                        
                        auxLabel.removeFromSuperview()
        })
        
        delay(2) {
            self.index = self.index >= 2 ? 0 : (self.index + 1)
            self.cubeTransition(label: self.detailLable, text: self.titlts[self.index], direction: .negative)
        }
    }
}

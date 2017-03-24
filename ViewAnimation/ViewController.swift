//
//  ViewController.swift
//  ViewAnimation
//
//  Created by apple on 2017/2/27.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func gotoChapterOne() {
        let chapterOneVC = ChapterOneViewController()
        chapterOneVC.navigationItem.title = "Chapter One"
        navigationController?.pushViewController(chapterOneVC, animated: true)
    }
    
    @IBAction func gotoChapterTwo() {
        let chapterTwoVC = ChapterTwoViewController()
        chapterTwoVC.navigationItem.title = "Chapter Two"
        navigationController?.pushViewController(chapterTwoVC, animated: true)
    }

    @IBAction func gotoChapterThree(_ sender: UIButton) {
        let chapterThreeVC = TransitionViewController()
        chapterThreeVC.navigationItem.title = "Chapter Three"
        navigationController?.pushViewController(chapterThreeVC, animated: true)
    }
    
    @IBAction func gotoChapterFour() {
        let chapterFourVC = ChapterFourViewController()
        chapterFourVC.navigationItem.title = "Chapter Four"
        navigationController?.pushViewController(chapterFourVC, animated: true)
    }
}


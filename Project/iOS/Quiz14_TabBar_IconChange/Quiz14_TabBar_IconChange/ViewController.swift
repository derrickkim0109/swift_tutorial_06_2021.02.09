//
//  ViewController.swift
//  Quiz14_TabBar_IconChange
//
//  Created by Derrick on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnNextView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    @IBAction func btnInfiniteView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    @IBAction func btnPageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 3
    }
    
}


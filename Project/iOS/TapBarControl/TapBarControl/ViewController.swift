//
//  ViewController.swift
//  TapBarControl
//
//  Created by Derrick on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //------------
    //  Actions
    //------------
    
    // 이미지 뷰로 이동 그쪽 TAB
    @IBAction func btnMoveImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    // 데이트 피커로 이동 그쪽 TAB
    @IBAction func btnMoveDatePickerView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    
}


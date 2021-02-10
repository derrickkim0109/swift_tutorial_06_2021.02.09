//
//  ViewController.swift
//  Quiz15_NavigationControl_On_Off
//
//  Created by Derrick on 2021/02/09.
//

import UIKit

class ViewController: UIViewController, EditDelegate {

    
    
    //-------------
    // Fields
    //-------------
    
    //Image View
    @IBOutlet weak var imgView: UIImageView!
    
    // Lamp Image Setting
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    let imgPink = UIImage(named: "lamp_red.png")
    
    var isOn = true
    var isOnRed = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Image 넣기
        imgView.image = imgOn
        
    }
    
    
    func didImageOnOffDone(_ controller: EidtViewController, isOn: Bool, isOnRed: Bool) {
        switch isOn {
        case true:
            switch isOnRed{
                case true:
                    imgView.image = imgOn
                    self.isOn = true
                    self.isOnRed = true
                case false:
                    imgView.image = imgPink
                    self.isOn = true
                    self.isOnRed = false
            }
        case false:
            switch isOnRed {
            case true:
                imgView.image = imgOff
                self.isOn = false
                self.isOnRed = true
            case false:
                imgView.image = imgOff
                self.isOn = false
                self.isOnRed = false
            }
        }
    }
    
    
    // Prepare --> 메세지 보내는것을 하기위해
    // 어디로 보낼지 설정
    // Main -> Sub 로 날라갈 부분.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // cocoa Class 설정
        let editViewController = segue.destination as! EidtViewController

        //Delegate
        editViewController.delegate = self
        
        // Switch on/off 설정
        // .isOn --> EditViewController의 필드값
        // 결과 값 isOn은 ViewController 필드값.
        editViewController.isOn = isOn
        editViewController.isOnRed = isOnRed
    }
    

}


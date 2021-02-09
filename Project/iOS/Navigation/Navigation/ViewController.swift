//
//  ViewController.swift
//  Navigation
//
//  Created by Derrick on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {

    //---------------
    // Fields
    //---------------
    
    // Text Field
    @IBOutlet weak var txtMessage: UITextField!
    // ImageView
    @IBOutlet weak var imgView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // Prepare --> 메세지 보내는것을 하기위해
    // 어디로 보낼지 설정
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // cocoa Class 설정
        let editViewController = segue.destination as! EditViewController
        
        //-------
        // Button
        //-------
        
        // Edit_KR
        if segue.identifier == "editButton" {
            editViewController.textWayValue = "Segue: Use Button!"
        }
        // Eidit_EG 버튼
        else{
            editViewController.textWayValue = "Segue: Use BarButton"
        }
        
        //-------
        // Message
        //-------
        editViewController.textMessage = txtMessage.text!
    }
    
    // softkeyboard TouchesBegan function
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    
}


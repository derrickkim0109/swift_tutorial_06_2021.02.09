//
//  EditViewController.swift
//  Navigation
//
//  Created by Derrick on 2021/02/09.
//

import UIKit

class EditViewController: UIViewController {

    //----------
    // Fields
    //----------
    
    @IBOutlet weak var lblWay: UILabel!
    // Text Field
    @IBOutlet weak var txtMessage: UITextField!
    // On/Off Label
    @IBOutlet weak var lblOnOff: UILabel!
    // Switch Button
    @IBOutlet weak var switchOn: UISwitch!
    
    var textWayValue:String = ""
    var textMessage:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblWay.text = textWayValue
        //textWayValue <- 앞의 'Main화면'에서 넣어 주는것이다.
        // 위와 동일방법
        txtMessage.text = textMessage
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

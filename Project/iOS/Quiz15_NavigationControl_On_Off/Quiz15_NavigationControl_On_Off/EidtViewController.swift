//
//  EidtViewController.swift
//  Quiz15_NavigationControl_On_Off
//
//  Created by Derrick on 2021/02/09.
//

import UIKit

// Java의 interface이다.
protocol EditDelegate {
    // On,Off Red 상태 날리기
    func didImageOnOffDone(_ controller: EidtViewController, isOn: Bool, isOnRed: Bool)
    
}

class EidtViewController: UIViewController {
    
    //----------
    // Fields
    //----------

    @IBOutlet weak var lblSwitchOnOff: UILabel!
    @IBOutlet weak var switchOn: UISwitch!
    @IBOutlet weak var switchRed: UISwitch!
    
    // Switch
    var isOn : Bool = false
    var isOnRed = true
    
    // Protocol로 정의한 이름 가져다 쓰는거다.
    // Delegate
    var delegate: EditDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switchOn.isOn = isOn
        switchRed.isOn = isOnRed
        if isOn {
            lblSwitchOnOff.text = "On"
        }else{
            lblSwitchOnOff.text = "Off"
        }
    }
    
    
    
    //----------
    // Actions
    //----------
    
    
    @IBAction func btnDone(_ sender: UIButton) {
        // 위에 optional로 선언 되있어서 nil 막는것을 해야함
        if delegate != nil {
            
            // switch
            delegate?.didImageOnOffDone(self, isOn: isOn, isOnRed: isOnRed)
            // switch Red
            
        }
        // 완료 버튼 누르면 화면 사라짐
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func switchOnOff(_ sender: UISwitch) {
        
        if sender.isOn{
            isOn = true
            lblSwitchOnOff.text = "On"
        }else{
            isOn = false
            lblSwitchOnOff.text = "Off"
        }
    }
    
    @IBAction func switchRed(_ sender: UISwitch) {
        
        if sender.isOn{
            isOnRed = true
            
        }else{
            isOnRed = false
            
        }
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

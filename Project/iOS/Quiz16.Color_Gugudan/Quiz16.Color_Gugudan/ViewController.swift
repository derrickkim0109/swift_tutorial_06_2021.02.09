//
//  ViewController.swift
//  Quiz16.Color_Gugudan
//
//  Created by Derrick on 2021/02/09.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblWord1: UILabel!
    
    @IBOutlet weak var lblWord2: UILabel!
    
    @IBOutlet weak var txtAnswer: UITextField!
    
    
    
    var word = ["흰색","빨강","주황","노랑","초록",
                "파랑","남색","보라","검정"]
    
    var result:Int = 0

    var num1:Int = 0
    var num2:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        num1 = randomNum()
        num2 = randomNum()
        lblWord1.text = word[num1-1]
        lblWord2.text = word[num2-1]
        

    }
    @IBAction func btnCorrect(_ sender: UIButton) {
        
        
        
        result = num1 * num2
        
        
        if txtAnswer.text == String(result) {
            let alertCorrect = UIAlertController(title: "결과", message: "정답입니다", preferredStyle: UIAlertController.Style.alert)
            let correctAction = UIAlertAction(title: "다음 문제 진행", style: UIAlertAction.Style.default, handler: { [self]ACTION in
                self.lblWord1.text = self.word[randomNum()]
                self.lblWord2.text = self.word[randomNum()]
            })
            alertCorrect.addAction(correctAction)
            present(alertCorrect, animated: true, completion: nil)
            
            
        }else{
            let alertIncorrect = UIAlertController(title: "결과", message: "정답이 아닙니다.", preferredStyle: UIAlertController.Style.alert)
            let incorrectAction = UIAlertAction(title: "네, 알겠습니다", style: UIAlertAction.Style.default, handler: nil)
            alertIncorrect.addAction(incorrectAction)
            present(alertIncorrect, animated: true, completion: nil)
        }
    }
    

    //
    func randomNum() -> Int{
        return Int.random(in: 1..<10)
    }
    

}


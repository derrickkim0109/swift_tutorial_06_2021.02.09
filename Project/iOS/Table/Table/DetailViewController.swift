//
//  DetailViewController.swift
//  Table
//
//  Created by Derrick on 2021/02/09.
//

import UIKit

class DetailViewController: UIViewController {

    //-------------
    // Fields
    //-------------
    
    @IBOutlet weak var lblIItem: UILabel!
    
    var receiveItem = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblIItem.text = receiveItem
        // Do any additional setup after loading the view.
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

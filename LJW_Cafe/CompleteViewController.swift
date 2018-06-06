//
//  CompleteViewController.swift
//  LJW_Cafe
//
//  Created by 김윤아 on 2018. 6. 6..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {

    var time:String?
    
    @IBOutlet var orderdetail: UILabel!
    @IBOutlet var amount: UILabel!
    @IBOutlet var reservation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reservation.text = time
        //reservation.text =
        //reservation - strDate
        
        //orderdetail =
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

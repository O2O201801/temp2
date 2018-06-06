//
//  PayViewController.swift
//  LJW_Cafe
//
//  Created by SWUCOMPUTER on 2018. 6. 6..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class PayViewController: UIViewController {

    @IBAction func reservtapped(_ sender: Any) {
        //예약한 부분이 없을때 alert "예약 할 상품이 없습니다"
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        if (appDelegate.cart.count == 0) {
            displayMyAlertMessage(userMessage: "예약 한 상품이 없습니다.")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBAction func Payment(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        if (appDelegate.cart.count == 0) {
            displayMyAlertMessage(userMessage: "예약 한 상품이 없습니다.")
        }
    }
    
    func displayMyAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title : "Alert", message:userMessage, preferredStyle : UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title:"OK", style: UIAlertActionStyle.default, handler:nil)
        
        myAlert.addAction(okAction)
        
        self.present(myAlert, animated: true, completion: nil)
    }
    
}

//
//  DetailViewController.swift
//  LJW_Cafe
//
//  Created by 김윤아 on 2018. 6. 3..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var Detailmenu: String!
    var Price : Int!
    
    @IBOutlet var menuname: UILabel!
    @IBOutlet var menuprice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        menuname.text = Detailmenu
        print(Detailmenu)
        print(Price)
        menuprice.text = String(Price)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func AddMenu(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        print(Price)
        print(Detailmenu)
        appDelegate.cart.updateValue(Price, forKey: Detailmenu)
        
        let myAlert = UIAlertController(title : "Alert", message:"장바구니에 추가되었습니다.", preferredStyle : UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title:"OK", style: UIAlertActionStyle.default)
        {
            action in
            self.dismiss(animated: true, completion:nil)
        }
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion:nil)
        
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

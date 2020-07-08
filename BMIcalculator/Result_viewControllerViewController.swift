//
//  Result_viewControllerViewController.swift
//  BMIcalculator
//
//  Created by mohamed on 7/8/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import UIKit

class Result_viewControllerViewController: UIViewController {

    @IBOutlet weak var RsultLable: UILabel!
    var Result = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        RsultLable.text = Result + " kg/cm2"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ReCalculateBTN(_ sender: UIButton) {
        performSegue(withIdentifier: "transifer2", sender: self)
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

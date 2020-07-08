//
//  ViewController.swift
//  BMIcalculator
//
//  Created by mohamed on 7/8/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var weight = 50,height = 50,result = 0
    
    
    @IBOutlet weak var WeightLable: UILabel!
    @IBOutlet weak var HeightLable: UILabel!
    @IBAction func HeightSlider(_ sender: UISlider) {
        height = Int(sender.value)
        HeightLable.text = "\(height)cm"
    }
    
    @IBAction func WeightSlider(_ sender: UISlider) {
        weight = Int(sender.value)
        WeightLable.text = "\(weight)kg"
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func ClaculateBTN(_ sender: UIButton) {
        print("\(height)       \(weight)")
        var res1 = Float(weight) * 10000.0
        var res2 = Float(height) * 1.0 * Float(height)
        
        result = Int(res1 / res2)
        print("\(self.result)")
        performSegue(withIdentifier: "Transifer", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        	var vc = segue.destination as! Result_viewControllerViewController
        vc.Result = String(self.result)
    }
}


//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 山崎 絢史郎 on 2016/05/16.
//  Copyright © 2016年 kenshiro.yamasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var name: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController

        resultViewController.label = self.name.text
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }

}
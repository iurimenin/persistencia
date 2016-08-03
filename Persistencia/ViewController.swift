//
//  ViewController.swift
//  Persistencia
//
//  Created by Iuri Menin on 02/08/16.
//  Copyright © 2016 Iuri Menin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //NSUserDefaults.standardUserDefaults().setObject("Iuri", forKey: "nome")
        
        let nome = NSUserDefaults.standardUserDefaults().objectForKey("nome")! as! String
        
        print(nome)
        
        var arr = [1,2,3,4]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        let userArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        for x in userArray {
            print(x)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


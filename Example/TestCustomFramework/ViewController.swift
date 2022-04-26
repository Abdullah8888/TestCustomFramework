//
//  ViewController.swift
//  TestCustomFramework
//
//  Created by Abdullah8888 on 04/22/2022.
//  Copyright (c) 2022 Abdullah8888. All rights reserved.
//

import UIKit
import TestCustomFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let myFramework = MyCustomFramework()
        myFramework.doSomething()

        let myFramework2 = MyCustomFramework2()
        myFramework2.doSomething2()

        let myFramework3 = MyCustomFramework3()
        myFramework3.doSomething3()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


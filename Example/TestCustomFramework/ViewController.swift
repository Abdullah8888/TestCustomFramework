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
        let framework = TestCustomFramework()
        framework.doSomething()
        
        let framework2 = TestCustomFramework2()
        framework2.doSomething2()
        
        let framework3 = TestCustomFramework3()
        framework3.doSomething3()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


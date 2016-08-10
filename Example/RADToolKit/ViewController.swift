//
//  ViewController.swift
//  UIApplication-Versioning
//
//  Created by Stefan Herold on 08/10/2016.
//  Copyright (c) 2016 Stefan Herold. All rights reserved.
//

import UIKit
import UIApplication_Versioning

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("App Version: \(UIApplication.appVersionString())")
        print("App Version without build number: \(UIApplication.appVersionString(false))")
    }

}


//
//  ViewController.swift
//  UIApplication-Versioning
//
//  Created by Stefan Herold on 08/10/2016.
//  Copyright (c) 2016 Stefan Herold. All rights reserved.
//

import UIKit
import RADToolKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("App Version: \(Bundle.main.versionString())")
        print("App Version without build number: \(Bundle.main.versionString(shouldIncludeBundleVersion: false))")
    }

}


//
//  ViewController.swift
//  panModalTest
//
//  Created by 林 大地 on 2020/04/17.
//  Copyright © 2020 Daichi Hayashi. All rights reserved.
//

import UIKit
import PanModal

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: PanModalPresentable {

    var panScrollable: UIScrollView? {
        return nil
    }
}


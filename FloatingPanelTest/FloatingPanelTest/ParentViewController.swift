//
//  ParentViewController.swift
//  FloatingPanelTest
//
//  Created by 林 大地 on 2020/04/17.
//  Copyright © 2020 Daichi Hayashi. All rights reserved.
//

import UIKit
import FloatingPanel

class ParentViewController: UIViewController {

    var floatingPanelController: FloatingPanelController!

    override func viewDidLoad() {
        super.viewDidLoad()

        floatingPanelController = FloatingPanelController()

        let floatingPanelViewController = FloatingPanelViewController()
        floatingPanelController.set(contentViewController: floatingPanelViewController)

        // FloatingPanel の表示
        floatingPanelController.addPanel(toParent: self, belowView: nil, animated: false)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        // FloatingPanel を非表示
        floatingPanelController.removePanelFromParent(animated: true)
    }
}


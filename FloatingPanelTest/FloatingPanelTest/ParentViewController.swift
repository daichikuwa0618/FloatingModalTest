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
        floatingPanelController.delegate = self

        let floatingStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let floatingPanelViewController = floatingStoryboard.instantiateViewController(identifier: "FloatingPanelViewController")
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

// FloatingPanelControllerDelegate を実装してカスタマイズしたレイアウトを返す
extension ParentViewController: FloatingPanelControllerDelegate {

    func floatingPanel(_ vc: FloatingPanelController, layoutFor newCollection: UITraitCollection) -> FloatingPanelLayout? {
        return CustomFloatingPanelLayout()
    }
}

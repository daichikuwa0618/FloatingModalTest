//
//  CustomFloatingPanelLayout.swift
//  FloatingPanelTest
//
//  Created by 林 大地 on 2020/04/17.
//  Copyright © 2020 Daichi Hayashi. All rights reserved.
//

import Foundation
import FloatingPanel
import UIKit

class CustomFloatingPanelLayout: FloatingPanelLayout {

    var initialPosition: FloatingPanelPosition {
        return .tip
    }

    var topInteractionBuffer: CGFloat { return 0.0 }
    var bottomInteractionBuffer: CGFloat { return 0.0 }

    // 各表示パターンの高さ
    func insetFor(position: FloatingPanelPosition) -> CGFloat? {

        switch position {
            
        case .full: return 20.0
        case .half: return 216.0
        case .tip: return 44.0
        case .hidden: return nil
        }
    }

    // セミモーダルビューの背景Viewの透明度
       func backdropAlphaFor(position: FloatingPanelPosition) -> CGFloat {
           return 0.0
    }
}


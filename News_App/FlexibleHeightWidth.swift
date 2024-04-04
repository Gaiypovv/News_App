//
//  FlexibleHeightWidth.swift
//  News_App
//
//  Created by Eldar Gaiypov on 5/4/24.
//

import UIKit

extension NSObject {
    func flexibleHeight(to: CGFloat) -> CGFloat {
        return UIScreen.main.bounds.height * to / 852
    }
    func flexibleWidth(to: CGFloat) -> CGFloat {
        return UIScreen.main.bounds.width * to / 393
    }
}

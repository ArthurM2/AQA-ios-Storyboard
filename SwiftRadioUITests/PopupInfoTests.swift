//
//  PopupInfoTest.swift
//  SwiftRadio
//
//  Created by arthur on 11.02.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

class PopupInfoTest: BaseTest {
    lazy var popupInfoPage = PopupInfoPage()
    
    func testWebsiteBtnWorks() {
        pressBackOrBurgerNavBar()
        popupInfoPage
            .tapWebsiteBtn()
    }
}

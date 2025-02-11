//
//  PopupInfoTest.swift
//  SwiftRadio
//
//  Created by arthur on 11.02.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

class PopupInfoTests: BaseTest {
    private lazy var popupInfoPage = PopupInfoPage()
    
    func testWebsiteBtnWorks() {
        pressBackOrBurgerNavBar()
        popupInfoPage
            .tapWebsiteBtn()
    }
    
    func testEmailBtnWorks() {
        pressBackOrBurgerNavBar()
        popupInfoPage
            .testCaseCount()
            .tapEmailBtn()
    }
}

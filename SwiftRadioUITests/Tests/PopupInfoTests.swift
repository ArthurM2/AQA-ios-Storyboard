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
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        
        app.launch()
        pressBackOrBurgerNavBar()
    }
    
    func testWebsiteBtnWorks() {
        popupInfoPage
            .tapWebsiteBtn()
        popupInfoPage
            .verifyWebsiteUrl()
    }
    
    func testCloseBtnWorks() {
        popupInfoPage
            .tapCloseBtn()
    }
    
    func testAboutBtnWorks() {
        popupInfoPage
            .tapAboutBtn()
    }
    
    func testLogoImageShouldBeVisible() {
        XCTAssertTrue(popupInfoPage.isLogoDisplayed())
    }
    
    func testVerifyAuthors()  {

    }
}

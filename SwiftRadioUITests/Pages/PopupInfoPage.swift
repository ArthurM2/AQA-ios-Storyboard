//
//  PopUpPage.swift
//  SwiftRadio
//
//  Created by arthur on 10.02.2025.
//  Copyright © 2025 matthewfecher.com. All rights reserved.
//

import XCTest

class PopupInfoPage: BaseTest {
    
    func tapCloseBtn() {
        tapElement(withIdentifier: popupId.popupCloseButton)
    }
    
    func tapAboutBtn() {
        tapElement(withIdentifier: popupId.popupAboutButton)
    }
    
    func tapWebsiteBtn() {
        tapElement(withIdentifier: popupId.popupWebsiteButton)
    }
    
    func verifyWebsiteUrl() {
        let expectedUrl = "https://github.com/analogcode/Swift-Radio-Pro"
        let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
        
        safari.textFields["TabBarItemTitle"].tap()
        safari.textFields["URL"].assertMatchValue(expectedUrl)
    }
    
    func isLogoDisplayed() -> Bool {
        return app.images[popupId.popupCompanyLogo].exists
    }
    
    func getAuthorName() -> String {
        return app.staticTexts[popupId.popupProjectAuthor].label
    }
}


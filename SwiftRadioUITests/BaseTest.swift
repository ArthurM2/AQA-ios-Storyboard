//
//  BaseTest.swift
//  SwiftRadioUITests
//
//  Created by Jonah Stiennon on 12/3/15.
//  Copyright © 2015 matthewfecher.com. All rights reserved.
//

import XCTest
import SwiftRadio

class BaseTest: XCTestCase {
    
    let app = XCUIApplication()
    
    typealias popupId = AccessIDs.PopupInfoView
    typealias aboutId = AccessIDs.AboutView
    
    // MARK: - Setup
    override func setUp() {
        super.setUp()
        app.launch()
    }
    
    // MARK: - TearDown
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - Methods
    // тап элемента по accessibilityIDs
    func tapElement(withIdentifier identifier: String) {
        let button = app.buttons[identifier]
        
        if button.exists && button.isHittable {
            button.tap()
        } else {
            XCTFail("Button with identifier \(identifier) not found or not hittable.")
        }
    }
    
    // тап элемента по индексу
    func tapElement(withIndex index: Int) {
        let index = app.buttons.element(boundBy: index)
        
        if index.isHittable {
            index.tap()
        } else {
            XCTFail("Button with index \(index) does not exist")
        }
    }
    
    // тап по координате
    func tapAt(coordinates x: Double, y: Double) {
        let coordinate = app.coordinate(withNormalizedOffset: CGVector(dx: x, dy: y))
        
        coordinate.tap()
    }
    
    // тап элемента по предикату
    func tapElement(withPredicate predicate: NSPredicate, timeout: TimeInterval = 3) {
        let element = app.descendants(matching: .any).element(matching: predicate)
        
        let exist = element.waitForExistence(timeout: timeout)
        if exist {
            element.tap()
        } else {
            XCTFail("Element with predicate \(predicate) does not exist.")
        }
    }
    
    func pressBackOrBurgerNavBar() {
        let backButton = app.navigationBars.buttons.element(boundBy: 0)
        
        if backButton.isHittable {
            let checkBackButton = backButton.wait(for: \.isHittable, toEqual: true, timeout: 5)
            XCTAssertTrue(checkBackButton)
            backButton.tap()
        } else {
            XCTFail("Button \(backButton) does not exist.")
        }
    }
}

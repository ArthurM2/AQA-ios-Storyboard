//
//  XCUIElement+Assert.swift
//  SwiftRadio
//
//  Created by arthur on 03.12.2024.
//  Copyright © 2024 matthewfecher.com. All rights reserved.
//
import XCTest
import SwiftRadio

extension XCUIElement {
    func assertElementIsSelected() {
        XCTAssertTrue(self.isSelected, "Expected element \(self) is selected")
    }
    
    func assertElementIsNotSelected() {
        XCTAssertFalse(self.isSelected, "Expected element \(self) is not selected")
    }
    
    func assertElementIsVisisble() {
        XCTAssertTrue(self.exists, "Expected element \(self) is visible")
    }
    
    func assertElementIsNotVisible() {
        XCTAssertFalse(self.exists, "Expected element \(self) is not visible")
    }
    
    func assertElementIsHittable(_ message: String = "Элемент должен быть доступен для взаимодействия") {
        XCTAssertTrue(self.exists && self.isHittable, message)
    }
    
    func assertElementIsNotHittable(_ message: String = "Элемент не должен быть доступным для взаимодействия") {
        XCTAssertFalse(self.exists && self.isHittable, message)
    }
    
    func assertMatchValue(_ value: String) {
        XCTAssertEqual(self.value as! String, value, "Expected URL \(self.value) does not \(value)")
    }
    
    func assertText(for element: XCUIElement, equals expectedText: String) {
        XCTAssertTrue(element.waitForExistence(timeout: 5))
        XCTAssertEqual(element.label, expectedText)
    }
}

//
//  UITestingUITests.swift
//  UITestingUITests
//
//  Created by apple on 15.06.2023.
//

import XCTest

final class UITestingUITests: XCTestCase {

    func testAddNoiseMaker() {
        
        let app = XCUIApplication()
        app.launch()
        
        let newNameBtn = app.navigationBars["Noise Makers"].buttons["Item"]
        let nameField = app.alerts["Add Noise Maker"].scrollViews.otherElements.collectionViews/*@START_MENU_TOKEN@*/.textFields["Shaggy"]/*[[".cells.textFields[\"Shaggy\"]",".textFields[\"Shaggy\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let addBtn = app.alerts["Add Noise Maker"].scrollViews.otherElements.buttons["Add"]
        let addedCell = app.tables/*@START_MENU_TOKEN@*/.staticTexts["Antony"]/*[[".cells.staticTexts[\"Antony\"]",".staticTexts[\"Antony\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        newNameBtn.tap()
        nameField.tap()
        nameField.typeText("Antony")
        
        XCTAssertFalse(addedCell.exists)
        
        addBtn.tap()
        XCTAssertTrue(addedCell.exists)
       
    }
    
    func testDeleteNoiseMaker() {
    
        
        let app = XCUIApplication()
        app.launch()
        
        let newNameBtn = app.navigationBars["Noise Makers"].buttons["Item"]
        let nameField = app.alerts["Add Noise Maker"].scrollViews.otherElements.collectionViews.textFields["Shaggy"]
        let addBtn = app.alerts["Add Noise Maker"].scrollViews.otherElements.buttons["Add"]
        let addedCell = app.tables.staticTexts["Vita"]
        let tablesQuery = app.tables
        let deleteBtn = tablesQuery.buttons["Delete"]
        
        newNameBtn.tap()
        nameField.tap()
        nameField.typeText("Vita")
        addBtn.tap()
        
        addedCell.swipeLeft()
        deleteBtn.tap()
        
        
        XCTAssertFalse(addedCell.exists)
      
    }
}

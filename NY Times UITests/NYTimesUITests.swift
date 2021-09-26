//
//  NYTimesUITests.swift
//  NYTimesUITests
//
//  Created by Fazil P on 25/09/21.
//

import XCTest

class NYTimesUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTableInteraction() {
        let app = XCUIApplication()
        
        // Assert that we are displaying the tableview
        app.launch()
        
        sleep(15)
        let cells = app.tables.cells
        
        // Get an array of cells
        if cells.count > 0 {
            let count: Int = (cells.count - 1)
            
            let promise = expectation(description: "Wait for table cells")
            
            for i in stride(from: 0, to: count , by: 1) {
                // Grab the first cell and verify that it exists and tap it
                let tableCell = cells.element(boundBy: i)
                
                XCTAssertTrue(tableCell.exists, "The \(i) cell is in place on the table")
                
                // Does this actually take us to the next screen
                tableCell.tap()
                
                if i == (count - 1) {
                    promise.fulfill()
                }
                
                // Back
                app.navigationBars.buttons.element(boundBy: 0).tap()
            }
            
            waitForExpectations(timeout: 50, handler: nil)
            XCTAssertTrue(true, "Finished validating the table cells")
        } else {
            XCTAssert(false, "Was not able to find any table cells")
        }
    }
    
   
    

}

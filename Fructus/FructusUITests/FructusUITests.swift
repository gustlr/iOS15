//
//  FructusUITests.swift
//  FructusUITests
//
//  Created by Hyun Shik Chung on 3/29/22.
//

import XCTest

class FructusUITests: XCTestCase {
    let app = XCUIApplication()
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    func testingSettingView() throws{
        
        
        XCTAssert(app.buttons["Edit"].isHittable)
        app.buttons["Edit"].tap()
        let settingTitle = app.navigationBars["Settings"]
        XCTAssertTrue(settingTitle.exists)
        XCTAssertTrue(app.staticTexts["Developer"].exists)
        XCTAssert(app.buttons["@RoberPetras"].isHittable)
        XCTAssert(app.buttons["SwiftUI Masterclass"].isHittable)
        XCTAssert(app.buttons["Close"].isHittable)
        
        
    }
}

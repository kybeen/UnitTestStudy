//
//  SignUpFlowUITests.swift
//  UnitTestStudyUITests
//
//  Created by 김영빈 on 12/11/23.
//

import XCTest

final class SignUpFlowUITests: XCTestCase {

    private var app:XCUIApplication!
    private var emailTF:XCUIElement!
    private var passwordTF:XCUIElement!
    private var repeatPasswordTF:XCUIElement!
    private var signUpButton:XCUIElement!

    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false

        app = XCUIApplication()
        app.launch()

        emailTF = app.textFields["emailTF"]
        passwordTF = app.textFields["passwordTF"]
        repeatPasswordTF = app.textFields["repeatPasswordTF"]
        signUpButton = app.buttons["signUpButton"]
    }

    func testSignUpViewController_DonotMatchPasswordAndRepeatPassword_PresentErrorAlertDialog() {

        // Action
        emailTF.tap()
        emailTF.typeText("rei1234@email.com")

        passwordTF.tap()
        passwordTF.typeText("12345678")

        repeatPasswordTF.tap()
        repeatPasswordTF.typeText("123456")

        signUpButton.tap()

        // Assert
        XCTAssertTrue(app.alerts["errorAlertDialog"].waitForExistence(timeout: 1), "패스워드와 확인 패스워드가 일치하지 않으면 경고창이 떠야 하는데, 뜨지 않았음.")
    }
}










//import XCTest
//
//final class SignUpFlowUITests: XCTestCase {
//
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//
//        // In UI tests it is usually best to stop immediately when a failure occurs.
//        continueAfterFailure = false
//
//        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // UI tests must launch the application that they test.
//        let app = XCUIApplication()
//        app.launch()
//
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
//}

//
//  LoginValidatorTests.swift
//  UnitTestStudyTests
//
//  Created by 김영빈 on 2023/12/01.
//

import XCTest
@testable import UnitTestStudy

final class LoginValidatorTests: XCTestCase {

    // sut: system under test의 줄임말로 보통 테스트를 할 클래스를 정의할 때 사용하는 이름
    var sut: LoginValidator!

    override func setUpWithError() throws {
        sut = LoginValidator()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    // 테스트 메소드
    func testLoginValidator_WhenValidEmailProvided_ShouldReturnTrue() {
        // Arrange
        let user = User(email: "kybeen@email.com", password: "1234")

        // Action
        let isValidEmail = sut.isValidEmail(email: user.email)

        // Assert
        XCTAssertTrue(isValidEmail, "isValidEmail은 True를 반환해야 하는데 False를 반환했습니다. 👉 @를 포함시켜 주세요‼️")
    }
    func testLoginValidator_WhenValidPasswordProvided_ShouldReturnTrue() {
        // Arrange
        let user = User(email: "kybeen@email.com", password: "123456")

        // Action
        let isValidPassword = sut.isValidPassword(password: user.password)

        // Assert
        XCTAssertTrue(isValidPassword, "isValidPassword는 True를 반환해야 하는데 False를 반환했습니다. 👉 5글자 미만의 패스워드를 입력해주세요‼️")
    }
}

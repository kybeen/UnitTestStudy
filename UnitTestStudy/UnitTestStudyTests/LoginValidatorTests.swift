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

    override class func setUp() {
        super.setUp()
        print("*** called: override class func setUp()")
    }

    // MARK: - 테스트 세팅
    override func setUpWithError() throws {
        sut = LoginValidator()
        print("*** called: override func setUpWithError()")
    }

    override func setUp() {
        super.setUp()
        print("*** called: override func setUp()")
    }

    // isValidEmail()에 대한 테스트 메소드
    func testLoginValidator_WhenValidEmailProvided_ShouldReturnTrue() {
        print("*** called: func [이메일 검증 메서드]")

        addTeardownBlock {
            // testLoginValidator_WhenValidEmailProvided_ShouldReturnTrue 메소드가 종료되면 호출
            print("*** called: addTeardownBlock in [이메일 검증 메서드]")
        }

        // Arrange
        let user = User(email: "kybeen@email.com", password: "1234")

        // Action
        let isValidEmail = sut.isValidEmail(email: user.email)

        // Assert
        XCTAssertTrue(isValidEmail, "isValidEmail은 True를 반환해야 하는데 False를 반환했습니다. 👉 @를 포함시켜 주세요‼️")

        print("*** called: func [이메일 검증 메서드] after")
    }

    // isValidPassword()에 대한 테스트 메소드
    func testLoginValidator_WhenValidPasswordProvided_ShouldReturnTrue() {
        print("*** called: func [패스워드 검증 메서드]")

        addTeardownBlock {
            // testLoginValidator_WhenValidPasswordProvided_ShouldReturnTrue 메소드가 종료되면 호출
            print("*** called: addTeardownBlock in [패스워드 검증 메서드]")
        }

        // Arrange
        let user = User(email: "kybeen@email.com", password: "123456")

        // Action
        let isValidPassword = sut.isValidPassword(password: user.password)

        // Assert
        XCTAssertTrue(isValidPassword, "isValidPassword는 True를 반환해야 하는데 False를 반환했습니다. 👉 5글자 미만의 패스워드를 입력해주세요‼️")
        
        print("*** called: func [패스워드 검증 메서드] after")
    }

    override func tearDown() {
        print("*** called: overried func tearDown()")
        super.tearDown()
    }

    // MARK: - 테스트 세팅값 정리
    override func tearDownWithError() throws {
        sut = nil
        print("*** called: overried func tearDownWithError()")
    }

    override class func tearDown() {
        print("*** called: overried class func tearDown()")
        super.tearDown()
    }
}

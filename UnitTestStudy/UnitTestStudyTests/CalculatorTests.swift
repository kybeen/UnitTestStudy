//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by 김영빈 on 2023/11/30.
//

import XCTest
// @testable import 모듈(프로젝트)
// 해당 모듈에 접근하여 멤버인 메서드들을 사용하게 도와주는 키워드
@testable import UnitTestStudy

final class CalculatorTests: XCTestCase {

    private var calculator: Calculator!

    // 각각의 테스트 메서드가 실행되기 전에 setUp이 먼저 실행되어 값을 재설정 시켜준다.
    override func setUp() {
        super.setUp()

        // calculator 초기화
        self.calculator = Calculator()
    }

    // 더하기 테스트
    // 보통 테스트 이름 작성 시에는 "test_"로 시작하는 이름으로 작성
    func test_AddTwoNumbers() {

        // 두 숫자의 계산값을 리턴 받는 함수를 생성
        let result = calculator.add(2, 3)
        // 값이 같은지 여부를 확인한다. (실제 계산된 결과값, 기대한 결과값, 실패시 메세지)
        XCTAssertEqual(result, 5, "더하기 비교 결과값이 다름")
    }

    // 빼기 테스트
    func test_SubtractTwoNumbers() {

        let result = calculator.subtract(5, 2)
        XCTAssertEqual(result, 3, "빼기 비교 결과값이 다름")
    }

    // 각각의 유닛 테스트가 끝난 후 테스트 값을 처리
    override func tearDown() {
        super.tearDown()
    }
}


//import XCTest
//@testable import UnitTestStudy
//
//final class UnitTestStudyTests: XCTestCase {
//
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
//
//}

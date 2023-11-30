//
//  LoginValidator.swift
//  UnitTestStudy
//
//  Created by 김영빈 on 2023/12/01.
//

import Foundation

class LoginValidator {

    func isValidEmail(email: String) -> Bool {
        return email.contains("@")
    }

    func isValidPassword(password: String) -> Bool {
        return password.count < 5
    }
}

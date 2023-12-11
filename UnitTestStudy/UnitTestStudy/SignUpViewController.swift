//
//  SignUpViewController.swift
//  UnitTestStudy
//
//  Created by 김영빈 on 12/11/23.
//

import UIKit

final class SignUpViewController: UIViewController {

    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var repeatTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!

    @IBAction func tapSignUpButton(_ sender: Any) {
        if passwordTF.text != repeatTF.text {
            let alert = UIAlertController(title: "Error", message: "비밀번호와 확인 비밀번호가 다릅니다.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            DispatchQueue.main.async {
                // 테스트를 위해 accessibilityIdentifier를 정의해줘야 함
                alert.view.accessibilityIdentifier = "errorAlertDialog"
                self.present(alert, animated: true)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

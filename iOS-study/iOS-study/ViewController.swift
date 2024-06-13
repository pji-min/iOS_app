import UIKit
import Then
import SnapKit

class ViewController: UIViewController {

    let label = UILabel().then {
        $0.text = "Login"
        $0.font = .boldSystemFont(ofSize: 24)
    }

    let idTextField = TextField(placeholder: "  아이디를 입력해주세요.")
    let pwTextField = TextField(placeholder: "  비밀번호를 입력해주세요.")
    let button = Button(title: "Login")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        view.backgroundColor = .white
        view.addSubview(button)
        view.addSubview(idTextField)
        view.addSubview(pwTextField)
        
        label.snp.makeConstraints {
            
            $0.top.equalToSuperview().inset(178)
            $0.left.equalToSuperview().inset(38)
            
        }

        idTextField.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom).offset(16)
            $0.leading.trailing.equalToSuperview().inset(32)
            $0.height.equalTo(40)
        }

        pwTextField.snp.makeConstraints {
            $0.top.equalTo(idTextField.snp.bottom).offset(16)
            $0.leading.trailing.equalToSuperview().inset(32)
            $0.height.equalTo(40)
        }

        button.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(16)
            $0.leading.trailing.equalToSuperview().inset(32)
            $0.height.equalTo(60)
        }
    }
}

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    let titleLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 50, weight: .bold)
        $0.text = "To Do List 🗓️"
    }
    let img = UIImageView().then {
        $0.image = .group
    }
    
    let button = UIButton().then {
        $0.setTitle("게스트로 시작하기", for: .normal)
        $0.titleEdgeInsets = .init(top: 19, left: 19, bottom: 19, right: 19)
        $0.backgroundColor = .button
        $0.setTitleColor(.black, for: .normal)
        $0.layer.cornerRadius = 10
        $0.titleLabel?.font = .systemFont(ofSize: 30, weight: .bold)
        $0.addTarget(nil, action: #selector(navigate), for: .touchUpInside)
    }
    
    let black = UIView().then {
        $0.backgroundColor = .bottom
        $0.layer.cornerRadius = 18
        
    }
    
    @objc func navigate() {
        navigationController?.pushViewController(MainViewController(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .background
        view.addSubview(titleLabel)
        view.addSubview(img)
        view.addSubview(button)
        view.addSubview(black)
        
        titleLabel.snp.makeConstraints{
            $0.top.equalToSuperview().offset(105)
            $0.centerX.equalToSuperview()
        }
        
        img.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(74)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(191)
            $0.height.equalTo(191)
        }
        
        button.snp.makeConstraints{
            $0.top.equalTo(img.snp.bottom).offset(69)
            $0.centerX.equalToSuperview()
            $0.left.right.equalToSuperview().inset(21)
        }
        
        black.snp.makeConstraints{
            $0.top.equalTo(self.view.snp.bottom).inset(84)
            $0.bottom.equalToSuperview()
            $0.left.right.equalToSuperview()
        }
    }
}

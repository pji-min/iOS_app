import UIKit
import SnapKit
import Then

class LoginButton: UIButton {
    let backgroundView = UIView().then {
        $0.backgroundColor = .BG
        $0.layer.cornerRadius = 8
    }
    let leftIconView = UIImageView()
    let textLabel = UILabel()

    init(icon: UIImage, text: String) {
        super.init(frame: .zero)

        self.leftIconView.image = icon
        self.textLabel.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        addSubview(backgroundView)
        backgroundView.addSubview(leftIconView)
        backgroundView.addSubview(textLabel)
        textLabel.snp.makeConstraints{
            $0.top.bottom.equalToSuperview().inset(20)
            $0.centerX.equalToSuperview()
        }
        leftIconView.snp.makeConstraints {
            $0.height.width.equalTo(24)
            $0.top.bottom.equalToSuperview().inset(18)
            $0.left.equalToSuperview().offset(22)
        }
        
        backgroundView.snp.makeConstraints {
            $0.left.right.equalToSuperview().inset(20)
            $0.top.bottom.equalToSuperview()
        }
    }
}

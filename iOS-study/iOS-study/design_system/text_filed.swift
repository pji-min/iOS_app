import UIKit
import Then
import SnapKit

class DesignSystemTextField: UITextField {
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: - Setup
    
    private func setup() {
        self.textColor = .black
        self.font = UIFont.systemFont(ofSize: 16)
        self.backgroundColor = .white
        self.layer.cornerRadius = 18
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.25
        self.layer.shadowRadius = 8
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
        self.clearButtonMode = .whileEditing
        self.autocapitalizationType = .none
        self.autocorrectionType = .no
    }
    
    // MARK: - Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        // You can add additional layout customization here if needed
    }
    
    // MARK: - Accessibility
    
    override var accessibilityLabel: String? {
        get { return super.accessibilityLabel }
        set { super.accessibilityLabel = newValue }
    }
    
    // MARK: - Customization
    
    // You can add additional customization methods or properties here
}

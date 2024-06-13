import Foundation
import UIKit

class TextField: UITextField {
    
    init(placeholder: String) {
        super.init(frame: .zero)
        
        backgroundColor = .white
        
        self.placeholder = placeholder
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 18
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

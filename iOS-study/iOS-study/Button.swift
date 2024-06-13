import Foundation
import UIKit

class Button: UIButton {
    init(title: String) {
        super.init(frame: .zero)

        backgroundColor = .red
        setTitle(title, for: .normal)
        layer.cornerRadius = 18
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

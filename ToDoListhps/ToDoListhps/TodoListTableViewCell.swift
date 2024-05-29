import UIKit
import SnapKit
import Then

class TodoListTableViewCell: UITableViewCell {
    
    static let id = "TodoListTableViewCell"

    let textlistbg1 = UIView().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 18
        $0.layer.shadowColor = UIColor.black.cgColor
        $0.layer.shadowOpacity = 0.25
        $0.layer.shadowRadius = 8
        $0.layer.shadowOffset = .init(width: 0, height: 4)
    }
    
    let textlist1 = UITextField().then {
    $0.font = .systemFont(ofSize: 13, weight: .medium)
    //$0.text = "any"
    }
    
    let checkbox = CheckBox(resources: .init(onImage: .checkbox1, offImage: .checkbox2))
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        addSubview(textlistbg1)
        textlistbg1.addSubview(textlist1)
        textlistbg1.addSubview(checkbox)
        
        textlistbg1.snp.makeConstraints{
            $0.left.right.equalToSuperview().inset(20)
            $0.height.equalTo(42)
        }
        
        textlist1.snp.makeConstraints{
            $0.top.equalTo(textlistbg1.snp.top).inset(2)
            $0.bottom.equalTo(textlistbg1.snp.bottom).inset(2)
            $0.left.equalTo(textlistbg1.snp.left).inset(39)
            $0.right.equalTo(textlistbg1.snp.right).inset(38)
        }
        
        checkbox.snp.makeConstraints{
            $0.top.equalTo(textlistbg1.snp.top).inset(10)
            $0.bottom.equalTo(textlistbg1.snp.bottom).inset(10)
            $0.left.equalTo(textlistbg1.snp.left).inset(13)
            $0.width.equalTo(22)
            $0.height.equalTo(22)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        

    }

}

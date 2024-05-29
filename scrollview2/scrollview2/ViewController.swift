import UIKit
import SnapKit
import Then

class ViewController: UIViewController {

    let scrollview = UIScrollView()
    let contentview = UIView()
    let label = UILabel() .then{
        $0.text = "hahaha"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollview)
        scrollview.addSubview(contentview)
        contentview.addSubview(label)
        view.backgroundColor = .white
        scrollview.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
        contentview.snp.makeConstraints{
            $0.edges.equalTo(scrollview.contentLayoutGuide)
            $0.height.greaterThanOrEqualTo(view.snp.height)
            $0.width.equalTo(scrollview.snp.width)
            $0.height.equalTo(1200)
        }
        
        label.snp.makeConstraints{
            $0.top.equalToSuperview().inset(100)
            $0.left.right.equalToSuperview().inset(30)
            $0.bottom.equalToSuperview().inset(200)
        }
    }


}


import UIKit
import Then
import SnapKit

class TodoList{
    var text: String
    var isChecked: Bool = false 

    init(text: String) {
        self.text = text
    }
}

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TodoListTableViewCell.id, for: indexPath) as! TodoListTableViewCell
        cell.textlist1.text = list[indexPath.row].text
        cell.checkbox.isChecked = list[indexPath.row].isChecked
        return cell
    }
    
    var list = [TodoList]()

    let titleLabel = UILabel().then {
        $0.font = .systemFont(ofSize: 50, weight: .bold)
        $0.text = "To Do List 🗓️"
    }
    
    let label = UILabel().then {
        $0.font = .systemFont(ofSize: 20, weight: .medium)
        $0 .text = "계획 없는 목표는 한낱 꿈에 불과하다"
    }
    
    let black = UIView().then {
        $0.backgroundColor = .bottom
        $0.layer.cornerRadius = 18
    }
    
    let inputbackground = UIView().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 18
        $0.layer.shadowColor = UIColor.black.cgColor
        $0.layer.shadowOpacity = 0.25
        $0.layer.shadowRadius = 8
        $0.layer.shadowOffset = .init(width: 0, height: 4)
    }
    
    let textfield = UITextField().then {
        $0.font = .systemFont(ofSize: 20, weight: .bold)
        $0.placeholder = "오늘 할 일을 적어주세요!"
    }
    
    let button = UIButton().then {
        $0.setTitle("+", for: .normal)
        $0.titleEdgeInsets = .init(top: 0, left: 8, bottom: 0, right: 8)
        $0.backgroundColor = .black
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 18
        $0.titleLabel?.font = .systemFont(ofSize: 45, weight: .regular)
        $0.addTarget(nil, action: #selector(add), for: .touchUpInside)
    }
    
    @objc func add() {
        list.append(.init(text: textfield.text!))
        tableview.reloadData()
    }
    
    let tableview = UITableView().then {
        $0.register(TodoListTableViewCell.self, forCellReuseIdentifier: TodoListTableViewCell.id)
        $0.rowHeight = 53
        $0.backgroundColor = .background
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(titleLabel)
        view.addSubview(label)
        view.backgroundColor = .background
        view.addSubview(black)
        view.addSubview(inputbackground)
        view.addSubview(textfield)
        view.addSubview(button)

        tableview.delegate = self
        tableview.dataSource = self
        
        view.addSubview(tableview)
        
        titleLabel.snp.makeConstraints{
            $0.top.equalToSuperview().offset(105)
            $0.centerX.equalToSuperview()
        }
        
        label.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(38)
            $0.centerX.equalToSuperview()
        }
        
        black.snp.makeConstraints{
            $0.top.equalTo(self.view.snp.bottom).inset(84)
            $0.bottom.equalToSuperview()
            $0.left.right.equalToSuperview()
        }
        
        inputbackground.snp.makeConstraints{
            $0.top.equalTo(label.snp.bottom).offset(23)
            $0.left.right.equalToSuperview().inset(20)
            $0.height.equalTo(40)
        }

        textfield.snp.makeConstraints{
            $0.top.equalTo(inputbackground.snp.top).inset(1)
            $0.bottom.equalTo(inputbackground.snp.bottom).inset(1)
            $0.left.equalTo(inputbackground.snp.left).inset(8.11)
            $0.right.equalTo(inputbackground.snp.right).inset(8.11)
        }
        
        button.snp.makeConstraints{
            $0.top.equalTo(inputbackground.snp.top).inset(2)
            $0.bottom.equalTo(inputbackground.snp.bottom).inset(2)
            $0.right.equalTo(inputbackground.snp.right).inset(1)
            $0.width.equalTo(46)
            $0.height.equalTo(38)
        }
        
        tableview.snp.makeConstraints{
            $0.top.equalTo(inputbackground.snp.bottom).offset(64)
            $0.bottom.equalTo(black.snp.top)
            $0.right.left.equalToSuperview().offset(0)
        }
    }
}

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentNumber: UILabel!
    
    var storage: Double?
    var operate: String?
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
        }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if currentNumber.text == "0" {
            currentNumber.text = sender.titleLabel?.text
        } else {
            guard let text = currentNumber.text else { return }
            currentNumber.text = text + sender.titleLabel!.text!
        }
    }
    @IBAction func operatorButtonPressed(_ sender: UIButton) {
        if let newValue = currentNumber.text,
           let doubleValue = Double(newValue ){
            storage = doubleValue
            currentNumber.text = "0"
            
            operate = sender .titleLabel?.text
            
        }
    }
    
    
    @IBAction func AC(_ sender: UIButton) {
        currentNumber.text = "0"
    }
    
    @IBAction func dot(_ sender: UIButton) {
        if let text = currentNumber.text, !text.contains(".") {
            currentNumber.text = text + "."
        }
    }
    
    @IBAction func plusMinus(_ sender: Any) {
        if let text = currentNumber.text, let number = Double(text) {
            currentNumber.text = String(number * -1)
        }
    }
    
    @IBAction func percent(_ sender: Any) {
        if let text = currentNumber.text, let number = Double(text) {
            currentNumber.text = String(number / 100)
        }
    }
    
    @IBAction func result(_ sender: UIButton) {
        if let storage,
           let operate,
           let currentNumber = currentNumber.text,
           let doubleCurrentNumber = Double(currentNumber) {
            if operate == "+" {
                self.currentNumber.text = String(doubleCurrentNumber + storage)
            } else if operate == "-" {
                self.currentNumber.text = String(doubleCurrentNumber - storage)
            } else if operate == "÷" {
                self.currentNumber.text = String(doubleCurrentNumber / storage)
            } else if operate == "×" {
                self.currentNumber.text = String(doubleCurrentNumber * storage)
            }
        } else {
            print("error")
        }
    }
    
}

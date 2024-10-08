import UIKit

class Chameleon: UIViewController {
    
    
    //MARK: экземпляр uilabel
    let labelChameleon: UILabel = {
        var label = UILabel()
        label.text = "Chameleon"
        label.textColor = .white
        label.font = UIFont(name: "Kanit", size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    //MARK: экземпляр uitextview
    let textChameleon: UITextView = {
        let text = UITextView()
        text.text = "The Chameleon project is to do your own individual projects for the benefit of society. My goal is to work together with Pavel Durov, the founders of Telegram messenger. He inspires me as a person. I hope that I will succeed and I believe in it."
        text.backgroundColor = UIColor.clear
        text.font = UIFont(name: "Kanit", size: 20)
        text.textColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //MARK: фоновый цвет
        self.view.backgroundColor = UIColor(named:"background")
        
        
        //MARK: добавили элементы в view
        self.view.addSubview(labelChameleon)
        self.view.addSubview(textChameleon)
        
        
        //-MARK: добавили ограничения для ui элементов
        NSLayoutConstraint.activate([
            labelChameleon.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            labelChameleon.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50)
        ])
        
        
        //-MARK: добавили ограничения к тексту хамелеон
        NSLayoutConstraint.activate([
            textChameleon.topAnchor.constraint(equalTo: self.labelChameleon.bottomAnchor, constant: 30),
            textChameleon.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            textChameleon.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            textChameleon.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
            
    }
}

import UIKit

class SuperHeroes: UIViewController {
    
    
    //-MARK: экземпляры классов с помощью замыкания
    let label: UILabel = {
        let label = UILabel()
        label.text = "Super Heroes"
        label.font = UIFont(name: "Kanit", size: 22)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //-MARK: экземпляр класса uitextview
    let text: UITextView = {
        var text = UITextView()
        text.text = "The super heroes project is that this project will contain brief descriptions of superheroes from the Marvel and CD universes. In these brief descriptions there will be the same: pros, cons, main rivals.This project will be more difficult than this project about me. A lot of different UI elements will be used in the project. For example: UITabBarController, UILabel, UITable, UIImageView,UIImage and many different"
        text.textColor = .white
        text.backgroundColor = UIColor.clear
        text.font = UIFont(name: "Kanit", size: 20)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //-MARK: фоновый цвет
        self.view.backgroundColor = UIColor(named: "background")
        
        
        //-MARK: добавили элементы во view
        self.view.addSubview(label)
        self.view.addSubview(text)
        
        
        //-MARK: добавил ограниченияк элементам
        NSLayoutConstraint.activate([
            
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant:50)
            
        ])
        //-MARK: добавил ограничения к text
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 60),
            text.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            text.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
            text.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
        
        
    }
}

import UIKit

class Projects : UIViewController {
    //-MARK: экземпляр класса uilabel
    var labelProjects = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(named: "background")
        
        //-MARK: добавил стили для элемента
        labelProjects.text = "Projects"
        labelProjects.textColor = .white
        labelProjects.font = UIFont(name: "Kanit", size: 22)
        labelProjects.translatesAutoresizingMaskIntoConstraints = false
        
        
        //-MARK: вызов функции по созданию кнопок
        let buttonChameleon = createButton("Chameleon", color: .white, action: #selector(buttonTappedChameleon), background: UIColor(named:"chameleon") ?? .white)
        
        
        let buttonSuperHeroes = createButton("SuperHeroes", color: .white, action: #selector (buttonTappedSuperHeroes), background: UIColor(named:"SuperHeroes") ?? .white)
        
        
        //-MARK: добавил во view
        self.view.addSubview(buttonChameleon)
        self.view.addSubview(labelProjects)
        self.view.addSubview(buttonSuperHeroes)
        
        
        //-MARK: добавил ограничения к элементам
        NSLayoutConstraint.activate([
            labelProjects.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            labelProjects.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50)
        ])
        //-MARK: ограничения к кнопке хамелеон
        NSLayoutConstraint.activate([
            buttonChameleon.topAnchor.constraint(equalTo: labelProjects.bottomAnchor, constant: 60),
            buttonChameleon.widthAnchor.constraint(equalToConstant: 200),
            buttonChameleon.heightAnchor.constraint(equalToConstant: 150),
            buttonChameleon.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
        //-MARK: ограничения к кнопке с супергероями
        NSLayoutConstraint.activate([
            buttonSuperHeroes.topAnchor.constraint(equalTo: buttonChameleon.bottomAnchor, constant: 60),
            buttonSuperHeroes.widthAnchor.constraint(equalToConstant: 200),
            buttonSuperHeroes.heightAnchor.constraint(equalToConstant: 150),
            buttonSuperHeroes.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
        
    }
    
    
    //-MARK: приватная функция для создания кнопок
    private func createButton(_ title: String, color: UIColor, action: Selector, background: UIColor) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(color, for: .normal)
        button.addTarget(self, action: action, for: .touchUpInside)
        button.backgroundColor = background
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont(name: "Kanit", size: 20)
        return button
    }
    
    
    //-MARK: добавление функций addTarget кнопок
    @objc func buttonTappedChameleon() {
        self.navigationController?.pushViewController(Chameleon(), animated: true)
    }
    @objc func buttonTappedSuperHeroes() {
        self.navigationController?.pushViewController(SuperHeroes(), animated: true)
    }
}

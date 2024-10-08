import UIKit

class Studies: UIViewController {
    let label: UILabel = {
        var label = UILabel()
        label.text = "Studies"
        label.font = UIFont(name: "Kanit", size: 22)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //-MARK: добавил кнопку по ооп
    var ale = UIAlertController(title: "Objective Oriented Programming", message: "We will learn C# in this discipline. The programming language is not bad, but unfortunately I don't like programming anything in it.", preferredStyle: .alert)
    var ale_action = UIAlertAction(title: "Okey", style: .default)
    
    
    //-MARK: sдобавил кнопку по пайтону
    var alertForSecondButton = UIAlertController(title: "Python", message: "We study python in subjects like Artificial Intelligence and Data Mining. This language is interesting because I will need it for projects", preferredStyle: .actionSheet)
    var alertForSecondButtonAction = UIAlertAction(title: "I'm fine :)", style: .cancel)
    
    
    //-MARK: добавил кнопку по английскому
    var alertEngl = UIAlertController(title: "England", message: "We continue to learn English at the university. This language is unique to me because it is international and through it you can contact people and get much more new information", preferredStyle: .alert)
    var alertEnglAction = UIAlertAction(title: "English", style: .destructive)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //-MARK: fпервая кнопка
        let buttonObjectiveProgramming = createButton(title: "С#", color: UIColor(named: "ObjectiveProg") ?? .white, textColor: UIColor.white, target: self, action: #selector(objectiveProgramming))
        
        //-MARK: вторая кнопка
        let buttonPython = createButton(title: "Python", color: UIColor(named: "Python") ?? UIColor.white, textColor: UIColor.white, target: self, action: #selector(pythonButton))
        
        //-MARK: третья кнопка
        let buttonEnglish = createButton(title: "English", color: UIColor(named: "england") ?? UIColor.white, textColor: UIColor.white, target: self, action: #selector(englandButton))
        
        
        //-MARK: фоновый цвет
        self.view.backgroundColor = UIColor(named: "background")
        
        
        alertForSecondButton.addAction(alertForSecondButtonAction)
        ale.addAction(ale_action)
        alertEngl.addAction(alertEnglAction)
        
        
        //-MARK: Добавляем кнопки на view
        self.view.addSubview(buttonObjectiveProgramming)
        self.view.addSubview(buttonPython)
        self.view.addSubview(buttonEnglish)
        self.view.addSubview(label)
        
        
        //-MARK: ограничения для кнопки обжектив
        NSLayoutConstraint.activate([
            buttonObjectiveProgramming.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 60),
            buttonObjectiveProgramming.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonObjectiveProgramming.widthAnchor.constraint(equalToConstant: 150),
            buttonObjectiveProgramming.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        
        //-MARK: ограничения для кнопки пайтона
        NSLayoutConstraint.activate([
            buttonPython.topAnchor.constraint(equalTo: buttonObjectiveProgramming.bottomAnchor, constant: 40),
            buttonPython.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonPython.widthAnchor.constraint(equalToConstant: 150),
            buttonPython.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        
        //-MARK: ограничения для кнопки англ
        NSLayoutConstraint.activate([
            buttonEnglish.topAnchor.constraint(equalTo: buttonPython.bottomAnchor, constant: 40),
            buttonEnglish.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonEnglish.widthAnchor.constraint(equalToConstant: 150),
            buttonEnglish.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        
        //-MARK: ограничения для заголовка
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])
    }
    
    
    //-MARK: функция по созданию функции
    private func createButton(title: String, color: UIColor, textColor: UIColor, target: Any?, action: Selector) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.backgroundColor = color
        button.setTitleColor(textColor, for: .normal)
        button.addTarget(self, action: action, for: .touchUpInside)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    
    
    //-MARK: создание функциональности для addtarget кнопок(ооп)
    @objc func objectiveProgramming() {
        self.present(ale, animated: true)
    }
    
    
    //-MARK: создание функциональности для addtarget кнопок(пайтон)
    @objc func pythonButton() {
        self.present(alertForSecondButton, animated: true)
    }
    
    
    //-MARK: создание функциональности для addtarget кнопок(англ)
    @objc func englandButton() {
        self.present(alertEngl, animated: true)
    }
}

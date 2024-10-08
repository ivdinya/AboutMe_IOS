import UIKit

class Me: UIViewController {
    
    //MARK: добавление экземпляра с помощью замыкания UITextView
    var textField: UITextView = {
        let text1 = UITextView()
        text1.text = "Hello everyone, my name is Denis Ivashchenko (metelykx is a pseudonym). I am 18 years old and it is about to be my birthday and I will turn 19. I am from Crimea and I am trying to make my own projects and develop them. I am also interested in football, I used to study at a sports school. I am currently studying and working. I hope that I will succeed and I believe in it."
        text1.textColor = .white
        //делает прозрачность на фон
        text1.backgroundColor = UIColor.black.withAlphaComponent(0)
    
        text1.textAlignment = .center
        text1.isEditable = false
        text1.translatesAutoresizingMaskIntoConstraints = false
        text1.font = UIFont(name: "Kanit", size: 18)
        return text1
    }()
    
    
    
    //MARK: добавление экземпляра с помощью замыкания UIImagView
    var imageMe: UIImageView = {
        let imageOfMe = UIImageView(image: UIImage(named: "denis"))
        imageOfMe.translatesAutoresizingMaskIntoConstraints = false
        return imageOfMe
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //MARK: фоновый цвет
        self.view.backgroundColor = UIColor(named: "background")
        
        
        //MARK: вызов функции hLabel
        let label = hLabel()
        
        
        //MARK: добавление элементов в view
        self.view.addSubview(label)
        self.view.addSubview(textField)
        self.view.addSubview(imageMe) // Добавляем imageMe на view
        
        
        //MARK: добавил ограничения к элементам
        NSLayoutConstraint.activate([
            imageMe.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 40),
            imageMe.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageMe.widthAnchor.constraint(equalToConstant: 153),
            imageMe.heightAnchor.constraint(equalToConstant: 197),
        ])
        
        //MARK: Добавляем constraints для label
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50)
        ])
        
        //MARK: Добавляем constraints для textField
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.topAnchor.constraint(equalTo: imageMe.bottomAnchor, constant: 40),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    
    //MARK: создание функции hlabel
    private func hLabel() -> UILabel {
        let label = UILabel()
        label.text = "About Me"
        label.textColor = .white
        label.font = UIFont(name: "Kanit", size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}

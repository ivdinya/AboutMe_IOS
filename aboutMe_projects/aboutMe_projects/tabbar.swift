import UIKit

class TabBarController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "background")
        
        //-MARK: Tabbar
        let vc1 = Me()
        let vc2 = Projects()
        let vc3 = Studies()
        
        vc1.tabBarItem.image = UIImage(systemName: "person")
        vc2.tabBarItem.image = UIImage(systemName: "folder")
        vc3.tabBarItem.image = UIImage(systemName: "book")
        
//        vc1.title = "About Me"
//        vc2.title = "Projects"
//        vc3.title = "Studies"
        
        //-MARK: создаем навигации
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        
        
        //-MARK: добавляем
        self.viewControllers = [nav1, nav2, nav3]
        
        //-MARK: стили для таббара
        //переменная apper- позволяет дбавлять какие-либо стили для таббара
        let apper = UITabBarAppearance()
        // фон непрозрачный
        apper.configureWithOpaqueBackground()
        // установка цевта
        apper.backgroundColor = UIColor(named: "tab")
        
        // применяем свойства к таббару
        self.tabBar.scrollEdgeAppearance = apper
        
        // Установка настроек внешнего вида для состояния, когда UITabBar находится в области скролла (iOS 15 и выше)
        if #available(iOS 15.0, *) {
                    self.tabBar.scrollEdgeAppearance = apper
                }
    }
}

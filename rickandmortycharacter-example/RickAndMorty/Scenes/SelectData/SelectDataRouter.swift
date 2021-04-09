
import UIKit

class SelectDataRouter: BaseRouter {
    
    // MARK: Properties
    weak var viewController: SelectDataViewController?
    
    // MARK: Initial
    
    init(viewController: SelectDataViewController) {
        self.viewController = viewController
    }
    
    //MARK: Routing
    
    func navigateToCharacterDetail() {
        let homeViewController = HomeViewController()
        let router = HomeRouter(viewController: homeViewController)
        let presenter = HomePresenter(view: homeViewController, router: router)
        homeViewController.presenter = presenter
        
        viewController?.navigationController?.pushViewController(homeViewController, animated: true)
    }
    
}

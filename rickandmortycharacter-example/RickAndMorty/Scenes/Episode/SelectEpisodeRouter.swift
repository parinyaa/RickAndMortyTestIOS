
import UIKit

class SelectEpisodeRouter: BaseRouter {
  
  // MARK: Properties
  weak var viewController: SelectEpisodeViewController?
  
  // MARK: Initial
  
  init(viewController: SelectEpisodeViewController) {
    self.viewController = viewController
  }
  
  //MARK: Routing
    func navigateToHome(episode: RickAndMortyCharacter) {
      let homeViewController = HomeViewController()
      let router = HomeRouter(viewController: homeViewController)
      let presenter = HomePresenter(view: homeViewController, router: router)
        homeViewController.presenter = presenter
      
      viewController?.navigationController?.pushViewController(homeViewController, animated: true)
    }
  
}

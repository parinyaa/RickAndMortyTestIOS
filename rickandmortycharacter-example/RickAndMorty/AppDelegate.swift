
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow()
    
//    let splashScreenViewController = SplashScreenViewController()
//    let selectEpisodeViewController = SelectEpisodeViewController()
//    let homeViewController = HomeViewController()
    let selectDataViewController = SelectDataViewController()
    let router = SelectDataRouter(viewController: selectDataViewController)
    let presenter = SelectDataPresenter(view: selectDataViewController, router: router)
    selectDataViewController.presenter = presenter
    window?.rootViewController = UINavigationController(rootViewController: selectDataViewController)
    
    window?.makeKeyAndVisible()
    return true
  }
  
}


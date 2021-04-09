
import UIKit

class SplashScreenViewController: UIViewController {
    
    var timer: Timer?
    var runCount = 0

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .blue
//    setTimer()
  }

    func routeToHome() {
        let homeViewController = HomeViewController()
            let router = HomeRouter(viewController: homeViewController)
            let presenter = HomePresenter(view: homeViewController, router: router)
            homeViewController.presenter = presenter
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    func setTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
    }
    
    @objc func fireTimer() {
        print("Timer fired!")
        runCount += 1

        if runCount == 3 {
            timer?.invalidate()
            routeToHome()
        }
    }

    
}



import Foundation


class SelectDataPresenter {
  
  // MARK: Properties
  
  private let router: SelectDataRouter
  weak var view: SelectDataDisplayable?
  
  // MARK: Initial
  
  init(view: SelectDataDisplayable, router: SelectDataRouter) {
    self.view = view
    self.router = router
  }
  
  //MARK: Presenting
    
        func presenCharacter() {
            router.navigateToCharacterDetail()
        }
}

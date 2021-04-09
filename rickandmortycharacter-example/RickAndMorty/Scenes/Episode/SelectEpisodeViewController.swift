
import UIKit

protocol SelectEpisodeDisplayable: class {
    func showEpisodes(_ episodes: [RickAndMortyCharacter])
    func showError(_ error: Error)
}

class SelectEpisodeViewController: BaseViewController<SelectEpisodeView>, SelectEpisodeDisplayable {
  
  // MARK: Properties
  
  var presenter: SelectEpisodePresenter!
  
  // MARK: Initial
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.getEpisode()
    
  }
    
    private func setupViewEvents() {
      mainView.didSelectEpisode = { [weak self] in
        self?.presenter.selectEpisode($0)
      }
    }
  
  // MARK: View
    
    func showEpisodes(_ episodes: [RickAndMortyCharacter]) {
        mainView.episodes = episodes
    }
    
    func showError(_ error: Error) {
      
    }
  
}

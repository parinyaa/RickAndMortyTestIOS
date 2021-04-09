
import Foundation


class SelectEpisodePresenter {
  
  // MARK: Properties
  
  private let router: SelectEpisodeRouter
  private let provider: APIProvider
  weak var view: SelectEpisodeDisplayable?
  
  // MARK: Initial
  
  init(view: SelectEpisodeDisplayable, router: SelectEpisodeRouter, provider: APIProvider = ServiceAPIProvider()) {
    self.view = view
    self.router = router
    self.provider = provider
  }
 
  //MARK: Presenting
    
    func getEpisode() {
        let episodeTarget = RickAndMortyTargetType.episode
      provider.request(target: episodeTarget) { [weak self] (result: Result<[RickAndMortyCharacter], Error>) in
        switch result {
        case .success(let episodes):
          self?.view?.showEpisodes(episodes)
        case .failure(let error):
          self?.view?.showError(error)
       }
      }
    }
    
    func selectEpisode(_ episode: RickAndMortyCharacter) {
      router.navigateToHome(episode: episode)
    }
  
}

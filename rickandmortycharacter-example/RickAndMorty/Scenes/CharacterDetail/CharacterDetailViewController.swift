
import UIKit
import Kingfisher

protocol CharacterDetailDisplayable: class {
  
}

class CharacterDetailViewController: BaseViewController<CharacterDetailView>, CharacterDetailDisplayable {
  
  // MARK: Properties
  
  private var character: RickAndMortyCharacter!
  var presenter: CharacterDetailPresenter!
  
  // MARK: Initial
  
  convenience init(character: RickAndMortyCharacter) {
    self.init()
    self.character = character
  }
  
  private init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupCharacterDetail()
  }
  
  private func setupCharacterDetail() {
    mainView.characterImageView.kf.setImage(with: character.image)
    mainView.nameLabel.text = "\(character.name)"
    mainView.idLabel.text = "ID: \(character.id)"
    mainView.genderLabel.text = "Gender: \(character.gender)"
    mainView.speciesLabel.text = "Species: \(character.species)"
    mainView.statusLabel.text = "Status: \(character.status)"
  }
  
  // MARK: View

}

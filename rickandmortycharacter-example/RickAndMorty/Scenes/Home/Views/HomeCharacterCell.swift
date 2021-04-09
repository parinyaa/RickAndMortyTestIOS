import UIKit
import SnapKit
import Kingfisher

class HomeCharacterCell: UITableViewCell {
    
    let characterImageView = UIImageView()
    let nameLabel = Label(size: .body, weight: .bold)
    
    // MARK: Initial
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupView() {
        contentView.addSubviews(characterImageView, nameLabel)
        
        characterImageView.snp.makeConstraints { make in
            let imageSize = CGSize(width: 100, height: 100)
            make.size.equalTo(imageSize)
            make.top.equalToSuperview(offset: .default)
            make.leading.equalToSuperview(offset: .default)
            make.bottom.equalTo(-Spacing.default.value)
        }
        
        characterImageView.contentMode = .scaleAspectFill
        characterImageView.clipsToBounds = true
        
        nameLabel.textColor = .red
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(characterImageView.snp.top, offset: 36)
            make.leading.equalTo(characterImageView.snp.trailing, offset: .default)
            make.trailing.equalToSuperview(offset: .default)
        }
        
    }
    
    // MARK: Methods
    
    func setup(with character: RickAndMortyCharacter) {
        
        nameLabel.text = "\(character.name)"
        if character.gender == "Male"{
            contentView.backgroundColor = .black
        } else {
            contentView.backgroundColor = .white
        }
        characterImageView.kf.setImage(with: character.image)
    }
    
}

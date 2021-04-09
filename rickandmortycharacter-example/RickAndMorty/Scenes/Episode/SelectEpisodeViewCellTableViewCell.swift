import UIKit
import SnapKit
import Kingfisher

class SelectEpisodeViewCell: UITableViewCell {
    
    let nameLabel = Label(size: .body, weight: .bold)

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        contentView.addSubviews(nameLabel)
        
//        nameLabel
        

    }
    

}


import UIKit
import SnapKit

class SelectEpisodeView: BaseView {
    
    // MARK: Views
    
    let tableView = UITableView()
    
    // MARK: Properties
    var didSelectEpisode: ((RickAndMortyCharacter) -> Void)?
    var episodes = [RickAndMortyCharacter]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    // MARK: Initial
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: SetupView
    private func setupView() {
        addSubview(tableView)
        
        tableView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(50)
            make.xEdges.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
//        tableView.backgroundColor = .white
//        tableView.dataSource.self
//        tableView.delegate.self
//        tableView.register()
    }
}

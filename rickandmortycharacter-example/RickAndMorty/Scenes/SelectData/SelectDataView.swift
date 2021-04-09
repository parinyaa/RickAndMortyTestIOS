
import UIKit
import SnapKit

class SelectDataView: BaseView {
    
    // MARK: Views
    let imageSellec = UIImage()
    let buttonSelect = UIButton(type: .custom)
    
    // MARK: Properties
    
    
    // MARK: Initial
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSelecData()
    }
    
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: SetupView
    
    func setupSelecData() {
        addSubview(buttonSelect)
        
        buttonSelect.setImage(UIImage(named: "41TDRNl-RFL.jpg"), for: .normal)
        buttonSelect.snp.makeConstraints { make in
            let size = CGSize(width: 150, height: 150)
            make.size.equalTo(size)
            make.top.equalTo(layoutGuide.snp.topMargin, offset: .default)
            make.centerX.equalToSuperview()
        }
    }
}

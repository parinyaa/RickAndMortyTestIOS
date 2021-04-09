import UIKit

protocol SelectDataDisplayable: class {
    
}

class SelectDataViewController: BaseViewController<SelectDataView>, SelectDataDisplayable {
    
    // MARK: Properties
    
    var presenter: SelectDataPresenter!
    
    // MARK: Initial
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.buttonSelect.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }

    
    // MARK: View

    
    @objc func buttonAction(sender: UIButton!) {
        presenter.presenCharacter()
    }
}

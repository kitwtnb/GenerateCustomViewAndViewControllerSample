import UIKit

class CodeOnlyWithArgumentViewController: UIViewController {
    let label = UILabel()

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(arg: Any?) {
        super.init(nibName: nil, bundle: nil)
    }
}

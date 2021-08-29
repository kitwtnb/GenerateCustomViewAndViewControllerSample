import UIKit

class CodeOnlyWithArgumentView: UIView {
    let label = UILabel()

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    init(arg: Any?) {
        super.init(frame: .zero)
    }
}

import UIKit

class XibFilesOwnerView: UIView {
    @IBOutlet weak var label: UILabel!

    // call from Storyboard/Xib
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        let nibName = String(describing: type(of: self))

        let view = UINib(nibName: nibName, bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView
        // or
        // let view = Bundle.main.loadNibNamed(nibName, owner: self, options: nil)?.first as? UIView

        if let view = view {
            view.frame = self.bounds
            self.addSubview(view)
        }
    }

    // call from Code with initializer arguments
    init(arg: Any?) {
        super.init(frame: .zero)

        let nibName = String(describing: type(of: self))

        let view = UINib(nibName: nibName, bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView
        // or
        // let view = Bundle.main.loadNibNamed(nibName, owner: self, options: nil)?.first as? UIView

        if let view = view {
            view.frame = self.bounds
            self.addSubview(view)
        }
    }
}

import UIKit

class XibCustomClassView: UIView {
    @IBOutlet weak var label: UILabel!
    
    // call from Storyboard/Xib
    override func awakeAfter(using coder: NSCoder) -> Any? {
        guard subviews.isEmpty else { return self }

        let nibName = String(describing: Self.self)

        let view = UINib(nibName: nibName, bundle: nil).instantiate(withOwner: nil, options: nil).first
        // or
        // let view = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)?.first

        return view
    }

    // call from Code with arguments
    static func load(arg: Any?) -> Self {
        let nibName = String(describing: Self.self)

        let view = UINib(nibName: nibName, bundle: nil).instantiate(withOwner: nil, options: nil).first as! Self
        // or
        // let view = Bundle.main.loadNibNamed(nibName, owner: nil, options: nil)?.first as! Self

        view.configure(arg: arg)
        return view
    }

    private func configure(arg: Any?) {}
}

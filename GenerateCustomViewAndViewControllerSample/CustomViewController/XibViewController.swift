import UIKit

class XibViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    // call from Code with initializer arguments
    required init?(coder: NSCoder) { super.init(coder: coder) }
    init(arg: Any?) {
        super.init(nibName: String(describing: XibViewController.self), bundle: nil)
    }

    override func viewDidLoad() {
        precondition(label != nil)
    }
}

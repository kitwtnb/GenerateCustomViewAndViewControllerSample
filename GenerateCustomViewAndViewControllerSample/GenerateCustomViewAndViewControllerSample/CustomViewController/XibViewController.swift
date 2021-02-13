import UIKit

class XibViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        precondition(label != nil)
    }
}

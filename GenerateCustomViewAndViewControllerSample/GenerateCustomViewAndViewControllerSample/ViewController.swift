import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let codeOnlyView = CodeOnlyView()
        precondition(codeOnlyView.label != nil)
    }
}

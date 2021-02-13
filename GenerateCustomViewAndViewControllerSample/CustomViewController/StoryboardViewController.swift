import UIKit

class StoryboardViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    // call from Code with initializer arguments
    required init?(coder: NSCoder) { super.init(coder: coder) }
    init?(coder: NSCoder, arg: Any?) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        precondition(label != nil)
    }
}

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var xibFilesOwnerViewFromStoryboard: XibFilesOwnerView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let codeOnlyView = CodeOnlyView()
        precondition(codeOnlyView.label != nil)

        precondition(xibFilesOwnerViewFromStoryboard.label != nil)

        let xibViewFromCode = XibFilesOwnerView(arg: nil)
        precondition(xibViewFromCode.label != nil)
    }
}

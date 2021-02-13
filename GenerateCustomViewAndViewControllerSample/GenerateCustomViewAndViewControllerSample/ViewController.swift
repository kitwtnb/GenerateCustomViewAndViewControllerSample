import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var xibFilesOwnerViewFromStoryboard: XibFilesOwnerView!
    @IBOutlet weak var xibCustomClassViewFromStoryboard: XibCustomClassView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let codeOnlyView = CodeOnlyView()
        precondition(codeOnlyView.label != nil)

        precondition(xibFilesOwnerViewFromStoryboard.label != nil)

        let xibFilesOwnerViewFromCode = XibFilesOwnerView(arg: nil)
        precondition(xibFilesOwnerViewFromCode.label != nil)

        precondition(xibCustomClassViewFromStoryboard.label != nil)

        let xibCustomClassViewFromCode = XibCustomClassView.load(arg: nil)
        precondition(xibCustomClassViewFromCode.label != nil)

        let codeOnlyViewController = CodeOnlyViewController()
        precondition(codeOnlyViewController.label != nil)
    }
}

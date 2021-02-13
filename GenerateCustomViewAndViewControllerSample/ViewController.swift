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

    @IBAction func didTapTransitionToXibViewController(_ sender: Any) {
        let xibViewController = XibViewController(arg: nil)
        present(xibViewController, animated: true, completion: nil)
    }

    @IBAction func didTapTransitionToStoryboardViewController(_ sender: Any) {
        let storyboard = UIStoryboard(name: String(describing: StoryboardViewController.self), bundle: nil)
        let storyViewController: StoryboardViewController = storyboard.instantiateViewController(identifier: "StoryboardId") { coder in
            StoryboardViewController(coder: coder, arg: nil)
        }
        present(storyViewController, animated: true, completion: nil)
    }
}

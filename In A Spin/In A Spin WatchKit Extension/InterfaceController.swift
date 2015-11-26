import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var spinnerImage: WKInterfaceImage!
    @IBOutlet var button: WKInterfaceButton!
    
    private var animating = false
    
    @IBAction func buttonTapped() {
        if animating {
            spinnerImage.stopAnimating()
            button.setTitle("Spin")
            animating = false
        } else {
            spinnerImage.startAnimating()
            button.setTitle("Freeze")
            animating = true
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let spinnerAnimation = UIImage.animatedImageNamed("spinner", duration: 2)!
        spinnerImage.setImage(spinnerAnimation)
    }

}

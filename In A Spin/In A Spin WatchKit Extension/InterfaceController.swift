import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var spinnerImage: WKInterfaceImage!
    @IBOutlet var button: WKInterfaceButton!
    
    @IBAction func buttonTapped() {
        spinnerImage.startAnimating()
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let spinnerAnimation = UIImage.animatedImageNamed("spinner", duration: 2)!
        spinnerImage.setImage(spinnerAnimation)
    }

}

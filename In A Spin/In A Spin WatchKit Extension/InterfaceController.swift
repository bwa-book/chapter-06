import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var spinnerImage: WKInterfaceImage!
    @IBOutlet var button: WKInterfaceButton!
    
    private var animating = false
    
    @IBAction func buttonTapped() {
        if animating {
            spinnerImage.stopAnimating()
            animating = false
            animateWithDuration(0.2, animations: updateButtonToStopped)
        } else {
            spinnerImage.startAnimating()
            animating = true
            animateWithDuration(0.2, animations: updateButtonToGoing)
        }
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let spinnerAnimation = UIImage.animatedImageNamed("spinner", duration: 2)!
        spinnerImage.setImage(spinnerAnimation)
        updateButtonToStopped()
    }
    
    private func updateButtonToStopped() {
        let goColor = UIColor.init(red: 4/255, green: 222/255, blue: 13/255, alpha: 0.28)
        
        button.setBackgroundColor(goColor)
        button.setTitle("Spin")
    }
    
    private func updateButtonToGoing() {
        let stopColor = UIColor.init(red: 250/255, green: 17/255, blue: 79/255, alpha: 0.34)
        
        button.setBackgroundColor(stopColor)
        button.setTitle("Freeze")
    }

}

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var spinnerImage: WKInterfaceImage!
    @IBOutlet var picker: WKInterfacePicker!
    
    private func setupPicker() {
        var items: [WKPickerItem] = []
        if let itemCount = spinnerAnimation.images?.count {
            for _ in 1...itemCount * 2 {
                items.append(WKPickerItem())
            }
        }
        
        picker.setItems(items)
        picker.setCoordinatedAnimations([spinnerImage])
        picker.focus()
    }
    
    lazy var spinnerAnimation: UIImage = UIImage.animatedImageNamed("spinner", duration: 2)!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        spinnerImage.setImage(spinnerAnimation)
        setupPicker()
    }

}

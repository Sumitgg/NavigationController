import UIKit

class FontInfoViewController: UIViewController {
    var font: UIFont!
    var favourite: Bool = false
    @IBOutlet weak var fontSampleLabel: UILabel!
    @IBOutlet weak var fontSizeSlider: UISlider!
    @IBOutlet weak var fontSizeLabel: UILabel!
    @IBOutlet weak var favouriteSwitch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        fontSampleLabel.font = font
        fontSampleLabel.text =
            "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVv"
            +  "WwXxYyZz 0123456789"
        fontSizeSlider.value = Float(font.pointSize)
        fontSizeLabel.text = "\(Int(font.pointSize))"
        favouriteSwitch.isOn = favourite
        }
    
    @IBAction func slideFontSize(slider: UISlider) {
        let newSize = roundf(slider.value)
        fontSampleLabel.font = font.withSize(CGFloat(newSize))
        fontSizeLabel.text = "\(Int(newSize))"
    }
    
    @IBAction func togglefavourite(sender:UISwitch) {
        let favouritesList = FavouritesList.sharedFavouritesList
        if sender.isOn {
            favouritesList.addFavourtite(fontName: font.fontName)
            } else {
            favouritesList.RemoveFavourite(fontName: font.fontName)
            
        }
        
    }

}
    









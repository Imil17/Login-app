
import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var backButton: UINavigationItem!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.hidesBackButton = true
        
        welcomeLabel.text = "Welcome, \(welcomeText ?? "")"
        
    }
    
}

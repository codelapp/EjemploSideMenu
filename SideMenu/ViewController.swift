import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var width: NSLayoutConstraint!
    var ver = true
    
    
    @IBOutlet weak var sideMenu: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        width.constant = 0
        sideMenu.layer.shadowOpacity = 1
        sideMenu.layer.shadowRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func menu(_ sender: Any) {
        
        if ver {
            width.constant = 180
            ver = false
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }else{
            width.constant = 0
            ver = true
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        
        
    }
    
}


import UIKit

class MainVC: UIViewController {

    var buttonNumber: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttonPressed(sender: UIButton) {
        
        sender.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { sender.transform = CGAffineTransform.identity } ,completion: nil)
        
        buttonNumber = sender.tag
        performSegue(withIdentifier: "GoToDetailVC", sender: sender.tag)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailVC {
            if let btnNumber = sender as? Int {
                destination.buttonNumber = btnNumber
            }
        }
    }
    
    @IBAction func gitAction(_ sender: UIButton) {
        if let url = NSURL(string: "https://github.com/FotiosTragopoulos") {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)}
    }
    
    @IBAction func portfolioAction(_ sender: UIButton) {
        if let url = NSURL(string: "http://fotiostragopoulos.myds.me/iGeometry.html") {
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)}
    }
}

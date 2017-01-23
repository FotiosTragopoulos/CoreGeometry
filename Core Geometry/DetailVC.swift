import UIKit

class DetailVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    private var _buttonNumber: Int!
    
    var detailModels = [DetailModel]()
    
    var buttonNumber: Int {
        get {
            return _buttonNumber
        }   set {
            _buttonNumber = newValue
        }
    }
    
    var cellLabel: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        if buttonNumber == 1 {
            headerImage.image = #imageLiteral(resourceName: "Button Parallelogram")
            headerLabel.text = headerTitle.Parallelogram.rawValue
            var parallelogramDetails = [DetailModel]()
            parallelogramDetails.append(Par1)
            parallelogramDetails.append(Par2)
            parallelogramDetails.append(Par3)
            parallelogramDetails.append(Par4)
            parallelogramDetails.append(Par5)
            parallelogramDetails.append(Par6)
            parallelogramDetails.append(Par7)
            parallelogramDetails.append(Par8)
            detailModels += parallelogramDetails
        } else if buttonNumber == 2 {
            headerImage.image = #imageLiteral(resourceName: "Button Triangle")
            headerLabel.text = headerTitle.Triangle.rawValue
            var triangleDetails = [DetailModel]()
            triangleDetails.append(Tri1)
            triangleDetails.append(Tri2)
            triangleDetails.append(Tri3)
            detailModels += triangleDetails
        } else if buttonNumber == 3 {
            headerImage.image = #imageLiteral(resourceName: "Button Circle")
            headerLabel.text = headerTitle.Circle.rawValue
            var circleDetails = [DetailModel]()
            circleDetails.append(Cir1)
            circleDetails.append(Cir2)
            circleDetails.append(Cir3)
            circleDetails.append(Cir4)
            circleDetails.append(Cir5)
            detailModels += circleDetails
        } else if buttonNumber == 4 {
            headerImage.image = #imageLiteral(resourceName: "Button Polygon")
            headerLabel.text = headerTitle.Polygon.rawValue
            var polygonDetails = [DetailModel]()
            polygonDetails.append(Pol1)
            polygonDetails.append(Pol2)
            polygonDetails.append(Pol3)
            polygonDetails.append(Pol4)
            polygonDetails.append(Pol5)
            detailModels += polygonDetails
        } else if buttonNumber == 5 {
            headerImage.image = #imageLiteral(resourceName: "Button Trapezium")
            headerLabel.text = headerTitle.Trapezium.rawValue
            var trapeziumDetails = [DetailModel]()
            trapeziumDetails.append(Tra1)
            trapeziumDetails.append(Tra2)
            detailModels += trapeziumDetails
        } else if buttonNumber == 6 {
            headerImage.image = #imageLiteral(resourceName: "Button Rhombus")
            headerLabel.text = headerTitle.Rhombus.rawValue
            var rhombusDetails = [DetailModel]()
            rhombusDetails.append(Rho1)
            rhombusDetails.append(Rho2)
            rhombusDetails.append(Rho3)
            rhombusDetails.append(Rho4)
            detailModels += rhombusDetails
        } else if buttonNumber == 7 {
            headerImage.image = #imageLiteral(resourceName: "Button Cone")
            headerLabel.text = headerTitle.Cone.rawValue
            var coneDetails = [DetailModel]()
            coneDetails.append(Con1)
            coneDetails.append(Con2)
            coneDetails.append(Con3)
            coneDetails.append(Con4)
            coneDetails.append(Con5)
            coneDetails.append(Con6)
            detailModels += coneDetails
        } else if buttonNumber == 8 {
            headerImage.image = #imageLiteral(resourceName: "Button Cylinder")
            headerLabel.text = headerTitle.Cylinder.rawValue
            var cylinderDetails = [DetailModel]()
            cylinderDetails.append(Cyl1)
            cylinderDetails.append(Cyl2)
            cylinderDetails.append(Cyl3)
            detailModels += cylinderDetails
        } else if buttonNumber == 9 {
            headerImage.image = #imageLiteral(resourceName: "Button Ellipse")
            headerLabel.text = headerTitle.Ellipse.rawValue
            var ellipseDetails = [DetailModel]()
            ellipseDetails.append(Ell1)
            ellipseDetails.append(Ell2)
            ellipseDetails.append(Ell3)
            detailModels += ellipseDetails
        } else if buttonNumber == 10 {
            headerImage.image = #imageLiteral(resourceName: "Button Analytical")
            headerLabel.text = headerTitle.Analytical.rawValue
            var analyticalDetails = [DetailModel]()
            analyticalDetails.append(Ana1)
            analyticalDetails.append(Ana2)
            analyticalDetails.append(Ana3)
            detailModels += analyticalDetails
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "FunctionCells", for: indexPath) as? DetailCell {
            let detailModel = detailModels[indexPath.row]
            cell.updateUI(detailModel: detailModel)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailModels.count
    }

    @IBAction func dismissView(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellLabel = indexPath.row
        performSegue(withIdentifier: "GoToCalculator", sender: cellLabel)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let calcViewDestination = segue.destination as? CalculatorVC {
            if let calcLabel = sender as? Int {
                if buttonNumber == 1 {
                calcViewDestination.cellLabel = calcLabel
                } else if buttonNumber == 2 {
                    calcViewDestination.cellLabel = calcLabel + 8
                } else if buttonNumber == 3 {
                    calcViewDestination.cellLabel = calcLabel + 11
                } else if buttonNumber == 4 {
                    calcViewDestination.cellLabel = calcLabel + 16
                } else if buttonNumber == 5 {
                    calcViewDestination.cellLabel = calcLabel + 21
                } else if buttonNumber == 6 {
                    calcViewDestination.cellLabel = calcLabel + 23
                } else if buttonNumber == 7 {
                    calcViewDestination.cellLabel = calcLabel + 27
                } else if buttonNumber == 8 {
                    calcViewDestination.cellLabel = calcLabel + 33
                } else if buttonNumber == 9 {
                    calcViewDestination.cellLabel = calcLabel + 36
                } else if buttonNumber == 10 {
                    calcViewDestination.cellLabel = calcLabel + 39
                }
            }
        }
    }
}

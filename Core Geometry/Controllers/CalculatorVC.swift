//
//  CalculatorVC.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 30/12/2016.
//  Copyright © 2016 Fotios Tragopoulos. All rights reserved.
//

import UIKit
import MessageUI

class CalculatorVC: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var calcViewTitle: UILabel!
    @IBOutlet weak var outputField: UITextView!
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var fourthTextField: UITextField!
    @IBOutlet weak var fifthTextField: UITextField!
    @IBOutlet weak var sixthTextField: UITextField!
    @IBOutlet weak var seventhTextField: UITextField!
    
    @IBOutlet weak var Par1ViewRectangle: UIView!
    @IBOutlet weak var Par1ViewFilling: UIView!
    @IBOutlet weak var Par1ViewLine: UIView!
    @IBOutlet weak var Par2ViewSquare: UIView!
    @IBOutlet weak var Par2ViewFilling: UIView!
    @IBOutlet weak var Par2ViewLine: UIView!
    @IBOutlet weak var Par3ViewParallelogram: UIView!
    @IBOutlet weak var Par3ViewFilling: UIView!
    @IBOutlet weak var Par3ViewLine: UIView!
    @IBOutlet weak var Par8ViewCube1: UIView!
    @IBOutlet weak var Tri1ViewFilling: UIView!
    @IBOutlet weak var Tri1ViewTriangle: UIView!
    @IBOutlet weak var Tri1ViewLine: UIView!
    @IBOutlet weak var Cir1ViewFilling: UIView!
    @IBOutlet weak var Cir1ViewCircle: UIView!
    @IBOutlet weak var Cir1ViewLine: UIView!
    @IBOutlet weak var Cir2ViewArc: UIView!
    @IBOutlet weak var Cir3ViewSphere: UIView!
    @IBOutlet weak var Pol1ViewFilling: UIView!
    @IBOutlet weak var Pol1ViewPolygon: UIView!
    @IBOutlet weak var Pol1ViewLine: UIView!
    @IBOutlet weak var Pol1ViewRadius: UIView!
    @IBOutlet weak var Tra1ViewFilling: UIView!
    @IBOutlet weak var Tra1ViewTrapezium: UIView!
    @IBOutlet weak var Tra1ViewLine: UIView!
    @IBOutlet weak var Rho1ViewFilling: UIView!
    @IBOutlet weak var Rho1ViewRhombus: UIView!
    @IBOutlet weak var Rho1ViewLine: UIView!
    @IBOutlet weak var Rho2ViewLine: UIView!
    @IBOutlet weak var Rho3ViewLine: UIView!
    @IBOutlet weak var Con1ViewFilling: UIView!
    @IBOutlet weak var Con1ViewSlantHeight: UIView!
    @IBOutlet weak var Con1ViewRadius: UIView!
    @IBOutlet weak var Con1ViewHeight: UIView!
    @IBOutlet weak var Cyl1ViewFilling: UIView!
    @IBOutlet weak var Cyl1ViewRadius: UIView!
    @IBOutlet weak var Cyl1ViewHeight: UIView!
    @IBOutlet weak var Ell1ViewFilling: UIView!
    @IBOutlet weak var Ell1ViewPerimeter: UIView!
    @IBOutlet weak var Ell1ViewRadius1: UIView!
    @IBOutlet weak var Ell1ViewRadius2: UIView!
    @IBOutlet weak var Ell3ViewFilling: UIView!
    @IBOutlet weak var Ell3ViewPerimeter: UIView!
    @IBOutlet weak var Ell3ViewRadius1: UIView!
    @IBOutlet weak var Ell3ViewRadius2: UIView!
    @IBOutlet weak var Ell3ViewRadius3: UIView!
    @IBOutlet weak var Ana1ViewCoordiantes: UIView!
    @IBOutlet weak var Ana2ViewCoordinates: UIView!
    @IBOutlet weak var Ana1ViewPoints: UIView!
    @IBOutlet weak var Ana2ViewPoints: UIView!
    @IBOutlet weak var Ana1ViewLine: UIView!
    @IBOutlet weak var Ana3ViewCoordinates_X: UIView!
    @IBOutlet weak var Ana3ViewCoordinates_Y: UIView!
    @IBOutlet weak var Ana3ViewCoordinates_Z: UIView!
    @IBOutlet weak var Ana3ViewPoint1: UIView!
    @IBOutlet weak var Ana3ViewPoint2: UIView!
    @IBOutlet weak var Ana3ViewLine: UIView!
    
    private var _cellLabel: Int!
    
    var cellLabel: Int {
        get {
            return _cellLabel
        }   set {
            _cellLabel = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Par1ViewRectangle.isHidden = true
        Par1ViewFilling.isHidden = true
        Par1ViewLine.isHidden = true
        Par2ViewSquare.isHidden = true
        Par2ViewFilling.isHidden = true
        Par2ViewLine.isHidden = true
        Par3ViewParallelogram.isHidden = true
        Par3ViewLine.isHidden = true
        Par3ViewFilling.isHidden = true
        Par8ViewCube1.isHidden = true
        Tri1ViewFilling.isHidden = true
        Tri1ViewTriangle.isHidden = true
        Tri1ViewLine.isHidden = true
        Cir1ViewFilling.isHidden = true
        Cir1ViewCircle.isHidden = true
        Cir1ViewLine.isHidden = true
        Cir2ViewArc.isHidden = true
        Cir3ViewSphere.isHidden = true
        Pol1ViewFilling.isHidden = true
        Pol1ViewPolygon.isHidden = true
        Pol1ViewLine.isHidden = true
        Pol1ViewRadius.isHidden = true
        Tra1ViewFilling.isHidden = true
        Tra1ViewTrapezium.isHidden = true
        Tra1ViewLine.isHidden = true
        Rho1ViewFilling.isHidden = true
        Rho1ViewRhombus.isHidden = true
        Rho1ViewLine.isHidden = true
        Rho2ViewLine.isHidden = true
        Rho3ViewLine.isHidden = true
        Con1ViewFilling.isHidden = true
        Con1ViewSlantHeight.isHidden = true
        Con1ViewRadius.isHidden = true
        Con1ViewHeight.isHidden = true
        Cyl1ViewFilling.isHidden = true
        Cyl1ViewRadius.isHidden = true
        Cyl1ViewHeight.isHidden = true
        Ell1ViewFilling.isHidden = true
        Ell1ViewPerimeter.isHidden = true
        Ell1ViewRadius1.isHidden = true
        Ell1ViewRadius2.isHidden = true
        Ell3ViewFilling.isHidden = true
        Ell3ViewPerimeter.isHidden = true
        Ell3ViewRadius1.isHidden = true
        Ell3ViewRadius2.isHidden = true
        Ell3ViewRadius3.isHidden = true
        Ana1ViewCoordiantes.isHidden = true
        Ana2ViewCoordinates.isHidden = true
        Ana1ViewPoints.isHidden = true
        Ana2ViewPoints.isHidden = true
        Ana1ViewLine.isHidden = true
        Ana3ViewCoordinates_X.isHidden = true
        Ana3ViewCoordinates_Y.isHidden = true
        Ana3ViewCoordinates_Z.isHidden = true
        Ana3ViewPoint1.isHidden = true
        Ana3ViewPoint2.isHidden = true
        Ana3ViewLine.isHidden = true

//Parallelogram
        if cellLabel == 0 {
            calcViewTitle.text = Par1.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Diagonal in meters"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Par1ViewRectangle.isHidden = false
            Par1ViewFilling.isHidden = false
            Par1ViewLine.isHidden = false
            outputField.text = "Diagonal² = SideA² + SideB² \nDiagonal = √(SideA² + SideB²)"
        } else if cellLabel == 1 {
            calcViewTitle.text = Par2.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Diagonal in meters"
            secondTextField.textColor = UIColor.red
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Par2ViewSquare.isHidden = false
            Par2ViewFilling.isHidden = false
            Par2ViewLine.isHidden = false
            outputField.text = "Diagonal² = SideA² + SideA² \nDiagonal = √(SideA² + SideA²) \nDiagonal = √(2﹒SideA²) \nDiagonal = √2﹒SideA"
        } else if cellLabel == 2 {
            calcViewTitle.text = Par3.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Height in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Par3ViewParallelogram.isHidden = false
            Par3ViewFilling.isHidden = false
            Par3ViewLine.isHidden = false
            outputField.text = "Surface Area = SideA﹒Height"
        } else if cellLabel == 3 {
            calcViewTitle.text = Par4.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Par1ViewRectangle.isHidden = false
            Par1ViewFilling.isHidden = false
            outputField.text = "Surface Area = SideA﹒SideB"
        } else if cellLabel == 4 {
            calcViewTitle.text = Par5.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Surface Area in m²"
            secondTextField.textColor = UIColor.black
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Par2ViewSquare.isHidden = false
            Par2ViewFilling.isHidden = false
            outputField.text = "Surface Area = SideA﹒SideA"
        } else if cellLabel == 5 {
            calcViewTitle.text = Par6.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Perimeter in meters"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Par3ViewParallelogram.isHidden = false
            Par3ViewFilling.isHidden = false
            outputField.text = "Perimeter = 2﹒SideA + 2﹒SideB \nPerimeter = 2(SideA + SideB)"
        } else if cellLabel == 6 {
            calcViewTitle.text = Par7.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Perimeter in meters"
            secondTextField.textColor = UIColor.black
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Par2ViewSquare.isHidden = false
            Par2ViewFilling.isHidden = false
            outputField.text = "Perimeter = 4﹒SideA"
        } else if cellLabel == 7 {
            calcViewTitle.text = Par8.cellTitle
            firstTextField.placeholder = "Edge in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Volume in m³"
            secondTextField.textColor = UIColor.black
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Par8ViewCube1.isHidden = false
            outputField.text = "Volume = Edge³"
//Triangle
        } else if cellLabel == 8 {
            calcViewTitle.text = Tri1.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Height in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Tri1ViewFilling.isHidden = false
            Tri1ViewTriangle.isHidden = false
            Tri1ViewLine.isHidden = false
            outputField.text = "Surface Area = ½﹒SideA﹒Height"
        } else if cellLabel == 9 {
            calcViewTitle.text = Tri2.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Side C in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "Surface Area in m²"
            fourthTextField.textColor = UIColor.black
            fourthTextField.isUserInteractionEnabled = false
            fourthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Tri1ViewFilling.isHidden = false
            Tri1ViewTriangle.isHidden = false
            outputField.text = "Semiperimeter (r) = (SideA + SideB + SideC) ÷ 2 \n\nSurface Area = √(r(r - a)(r - b)(r - c))"
        } else if cellLabel == 10 {
            calcViewTitle.text = Tri3.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Side C in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "Perimeter in meters"
            fourthTextField.textColor = UIColor.blue
            fourthTextField.isUserInteractionEnabled = false
            fourthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Tri1ViewFilling.isHidden = false
            Tri1ViewTriangle.isHidden = false
            outputField.text = "Perimeter = SideA + SideB + SideC"
//Circle
        } else if cellLabel == 11 {
            calcViewTitle.text = Cir1.cellTitle
            firstTextField.placeholder = "Radius in meters"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "Surface Area in m²"
            secondTextField.textColor = UIColor.black
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Cir1ViewFilling.isHidden = false
            Cir1ViewCircle.isHidden = false
            Cir1ViewLine.isHidden = false
            outputField.text = "Surface Area = π﹒Radius²"
        } else if cellLabel == 12 {
            calcViewTitle.text = Cir2.cellTitle
            firstTextField.placeholder = "Arc Length in degrees"
            firstTextField.textColor = UIColor.init(red: 111.0/255.0, green: 110.0/255.0, blue: 1.0/255.0, alpha: 1.0)
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Sector's Area in m²"
            thirdTextField.textColor = UIColor.init(red: 111.0/255.0, green: 110.0/255.0, blue: 1.0/255.0, alpha: 1.0)
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Cir1ViewFilling.isHidden = false
            Cir1ViewCircle.isHidden = false
            Cir1ViewLine.isHidden = false
            Cir2ViewArc.isHidden = false
            outputField.text = "Sector's Area = (π﹒Radius²﹒Arc Length°) ÷ 360"
        } else if cellLabel == 13 {
            calcViewTitle.text = Cir3.cellTitle
            firstTextField.placeholder = "Radius in meters"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "Curved Surface Area in m²"
            secondTextField.textColor = UIColor.black
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Cir3ViewSphere.isHidden = false
            Cir1ViewLine.isHidden = false
            outputField.text = "Curved Surface Area = 4﹒π﹒Radius²"
        } else if cellLabel == 14 {
            calcViewTitle.text = Cir4.cellTitle
            firstTextField.placeholder = "Radius in meters"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "Perimeter in meters"
            secondTextField.textColor = UIColor.blue
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Cir1ViewFilling.isHidden = false
            Cir1ViewCircle.isHidden = false
            Cir1ViewLine.isHidden = false
            outputField.text = "Perimeter = 2﹒π﹒Radius"
        } else if cellLabel == 15 {
            calcViewTitle.text = Cir5.cellTitle
            firstTextField.placeholder = "Radius in meters"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "Volume in m³"
            secondTextField.textColor = UIColor.black
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Cir3ViewSphere.isHidden = false
            Cir1ViewLine.isHidden = false
            outputField.text = "Volume = (4 ÷ 3)﹒π﹒Radius³"
//Polygon
        } else if cellLabel == 16 {
            calcViewTitle.text = Pol1.cellTitle
            firstTextField.placeholder = "Perimeter in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Apothem in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Pol1ViewFilling.isHidden = false
            Pol1ViewPolygon.isHidden = false
            Pol1ViewLine.isHidden = false
            outputField.text = "Surface Area = (Apothem﹒Perimeter) ÷ 2"
        } else if cellLabel == 17 {
            calcViewTitle.text = Pol2.cellTitle
            firstTextField.placeholder = "Number of Sides (n)"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Apothem in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Pol1ViewFilling.isHidden = false
            Pol1ViewPolygon.isHidden = false
            Pol1ViewLine.isHidden = false
            outputField.text = "Surface Area = Apothem²﹒n﹒tan(π ÷ n)"
        } else if cellLabel == 18 {
            calcViewTitle.text = Pol3.cellTitle
            firstTextField.placeholder = "Number of Sides (n)"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Pol1ViewFilling.isHidden = false
            Pol1ViewPolygon.isHidden = false
            Pol1ViewRadius.isHidden = false
            outputField.text = "Surface Area = (Radius²﹒n﹒sin((2﹒π) ÷ n)) ÷ 2"
        } else if cellLabel == 19 {
            calcViewTitle.text = Pol4.cellTitle
            firstTextField.placeholder = "Number of Sides (n)"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Length of a Side in meters (s)"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Pol1ViewFilling.isHidden = false
            Pol1ViewPolygon.isHidden = false
            outputField.text = "Surface Area = (s²﹒n) ÷ (4﹒tan(π ÷ n))"
        } else if cellLabel == 20 {
            calcViewTitle.text = Pol5.cellTitle
            firstTextField.placeholder = "Number of Sides (n)"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Length of a Side in meters (s)"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Perimeter in meters"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Pol1ViewFilling.isHidden = false
            Pol1ViewPolygon.isHidden = false
            outputField.text = "Perimeter = n﹒s"
//Trapezium
        } else if cellLabel == 21 {
            calcViewTitle.text = Tra1.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Height in meters"
            thirdTextField.textColor = UIColor.red
            fourthTextField.placeholder = "Surface Area in m²"
            fourthTextField.textColor = UIColor.black
            fourthTextField.isUserInteractionEnabled = false
            fourthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Tra1ViewFilling.isHidden = false
            Tra1ViewTrapezium.isHidden = false
            Tra1ViewLine.isHidden = false
            outputField.text = "Surface Area = ((SideA + SideB)﹒Height) ÷ 2"
        } else if cellLabel == 22 {
            calcViewTitle.text = Tra2.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Side C in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "Side D in meters"
            fourthTextField.textColor = UIColor.blue
            fifthTextField.placeholder = "Perimeter in meters"
            fifthTextField.textColor = UIColor.blue
            fifthTextField.isUserInteractionEnabled = false
            fifthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Tra1ViewFilling.isHidden = false
            Tra1ViewTrapezium.isHidden = false
            outputField.text = "Perimeter = SideA + SideB + SideC + SideD"
//Rhombus
        } else if cellLabel == 23 {
            calcViewTitle.text = Rho1.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Slant Height in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Rho1ViewFilling.isHidden = false
            Rho1ViewRhombus.isHidden = false
            Rho1ViewLine.isHidden = false
            outputField.text = "Surface Area = SideA﹒Height"
        } else if cellLabel == 24 {
            calcViewTitle.text = Rho2.cellTitle
            firstTextField.placeholder = "Diagonal A in meters"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "Diagonal B in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Rho1ViewFilling.isHidden = false
            Rho1ViewRhombus.isHidden = false
            Rho2ViewLine.isHidden = false
            outputField.text = "Surface Area = (Diagonal A﹒Diagonal B) ÷ 2"
        } else if cellLabel == 25 {
            calcViewTitle.text = Rho3.cellTitle
            firstTextField.placeholder = "Angle â in degrees"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "Surface Area in m²"
            secondTextField.textColor = UIColor.black
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Rho1ViewFilling.isHidden = false
            Rho1ViewRhombus.isHidden = false
            Rho3ViewLine.isHidden = false
            outputField.text = "Surface Area = â²﹒sin(â)"
        } else if cellLabel == 26 {
            calcViewTitle.text = Rho4.cellTitle
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Perimeter in meters"
            secondTextField.textColor = UIColor.black
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Rho1ViewFilling.isHidden = false
            Rho1ViewRhombus.isHidden = false
            outputField.text = "Perimeter = 4﹒SideA"
//Cone
        } else if cellLabel == 27 {
            calcViewTitle.text = Con1.cellTitle
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.init(red: 111.0/255.0, green: 110.0/255.0, blue: 1.0/255.0, alpha: 1.0)
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Slant Height in meters"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Con1ViewFilling.isHidden = false
            Con1ViewSlantHeight.isHidden = false
            Con1ViewRadius.isHidden = false
            Con1ViewHeight.isHidden = false
            outputField.text = "Slant Height = √(Radius² + Height²)"
        } else if cellLabel == 28 {
            calcViewTitle.text = Con2.cellTitle
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.init(red: 111.0/255.0, green: 110.0/255.0, blue: 1.0/255.0, alpha: 1.0)
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Total Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Con1ViewFilling.isHidden = false
            Con1ViewRadius.isHidden = false
            Con1ViewHeight.isHidden = false
            outputField.text = "Surface Area = π﹒Radius﹒(√(Radius² + Height²) + Radius)"
        } else if cellLabel == 29 {
            calcViewTitle.text = Con3.cellTitle
            firstTextField.placeholder = "Slant Height in meters (l)"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Total Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Con1ViewFilling.isHidden = false
            Con1ViewSlantHeight.isHidden = false
            Con1ViewRadius.isHidden = false
            outputField.text = "Surface Area = π﹒Radius﹒(l + Radius)"
        } else if cellLabel == 30 {
            calcViewTitle.text = Con4.cellTitle
            firstTextField.placeholder = "Slant Height in meters (l)"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Curved Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Con1ViewFilling.isHidden = false
            Con1ViewSlantHeight.isHidden = false
            Con1ViewRadius.isHidden = false
            outputField.text = "Surface Area = π﹒Radius﹒l"
        } else if cellLabel == 31 {
            calcViewTitle.text = Con5.cellTitle
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.init(red: 111.0/255.0, green: 110.0/255.0, blue: 1.0/255.0, alpha: 1.0)
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Curved Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Con1ViewFilling.isHidden = false
            Con1ViewRadius.isHidden = false
            Con1ViewHeight.isHidden = false
            outputField.text = "Surface Area = π﹒Radius﹒√(Radius² + Height²)"
        } else if cellLabel == 32 {
            calcViewTitle.text = Con6.cellTitle
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.init(red: 111.0/255.0, green: 110.0/255.0, blue: 1.0/255.0, alpha: 1.0)
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Volume in m³"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Con1ViewFilling.isHidden = false
            Con1ViewRadius.isHidden = false
            Con1ViewHeight.isHidden = false
            outputField.text = "Volume = ⅓﹒π﹒Radius²﹒Height"
//Cylinder
        } else if cellLabel == 33 {
            calcViewTitle.text = Cyl1.cellTitle
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Curved Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Cyl1ViewFilling.isHidden = false
            Cyl1ViewRadius.isHidden = false
            Cyl1ViewHeight.isHidden = false
            outputField.text = "Surface Area = 2﹒π﹒Radius﹒Height"
        } else if cellLabel == 34 {
            calcViewTitle.text = Cyl2.cellTitle
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Total Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Cyl1ViewFilling.isHidden = false
            Cyl1ViewRadius.isHidden = false
            Cyl1ViewHeight.isHidden = false
            outputField.text = "Surface Area = 2﹒π﹒Radius﹒(Height + Radius)"
        } else if cellLabel == 35 {
            calcViewTitle.text = Cyl3.cellTitle
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Volume in m³"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Cyl1ViewFilling.isHidden = false
            Cyl1ViewRadius.isHidden = false
            Cyl1ViewHeight.isHidden = false
            outputField.text = "Volume = π﹒Radius²﹒Height"
//Ellipse
        } else if cellLabel == 36 {
            calcViewTitle.text = Ell1.cellTitle
            firstTextField.placeholder = "Radius A in meters"
            firstTextField.textColor = UIColor.init(red: 111.0/255.0, green: 110.0/255.0, blue: 1.0/255.0, alpha: 1.0)
            secondTextField.placeholder = "Radius B in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.black
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Ell1ViewFilling.isHidden = false
            Ell1ViewPerimeter.isHidden = false
            Ell1ViewRadius1.isHidden = false
            Ell1ViewRadius2.isHidden = false
            outputField.text = "Surface Area = π﹒RadiusA﹒RadiusB"
        } else if cellLabel == 37 {
            calcViewTitle.text = Ell2.cellTitle
            firstTextField.placeholder = "Radius A in meters"
            firstTextField.textColor = UIColor.init(red: 111.0/255.0, green: 110.0/255.0, blue: 1.0/255.0, alpha: 1.0)
            secondTextField.placeholder = "Radius B in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "Perimeter in meters"
            thirdTextField.textColor = UIColor.blue
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Ell1ViewFilling.isHidden = false
            Ell1ViewPerimeter.isHidden = false
            Ell1ViewRadius1.isHidden = false
            Ell1ViewRadius2.isHidden = false
            outputField.text = "Perimeter = 2﹒π﹒√((RadiusA² + RadiusB²) ÷ 2)"
        } else if cellLabel == 38 {
            calcViewTitle.text = Ell3.cellTitle
            firstTextField.placeholder = "Radius A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius B in meters"
            secondTextField.textColor = UIColor.init(red: 111.0/255.0, green: 110.0/255.0, blue: 1.0/255.0, alpha: 1.0)
            thirdTextField.placeholder = "Radius C in meters"
            thirdTextField.textColor = UIColor.orange
            fourthTextField.placeholder = "Volume in m³"
            fourthTextField.textColor = UIColor.black
            fourthTextField.isUserInteractionEnabled = false
            fourthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Ell3ViewFilling.isHidden = false
            Ell3ViewPerimeter.isHidden = false
            Ell3ViewRadius1.isHidden = false
            Ell3ViewRadius2.isHidden = false
            Ell3ViewRadius3.isHidden = false
            outputField.text = "Volume = (4 ÷ 3)﹒π﹒RadiusA﹒RadiusB﹒RadiusC"
//Analytical
        } else if cellLabel == 39 {
            calcViewTitle.text = Ana1.cellTitle
            firstTextField.placeholder = "x₁ in meters"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "x₂ in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "y₁ in meters"
            thirdTextField.textColor = UIColor.red
            fourthTextField.placeholder = "y₂ in meters"
            fourthTextField.textColor = UIColor.red
            fifthTextField.placeholder = "Distance in meters"
            fifthTextField.textColor = UIColor.blue
            fifthTextField.isUserInteractionEnabled = false
            fifthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Ana1ViewCoordiantes.isHidden = false
            Ana2ViewCoordinates.isHidden = false
            Ana1ViewPoints.isHidden = false
            Ana2ViewPoints.isHidden = false
            Ana1ViewLine.isHidden = false
            outputField.text = "Distance = √((x₂ - x₁)² + (y₂ - y₁)²)"
        } else if cellLabel == 40 {
            calcViewTitle.text = Ana2.cellTitle
            firstTextField.placeholder = "x₁ in meters"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "x₂ in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "y₁ in meters"
            thirdTextField.textColor = UIColor.red
            fourthTextField.placeholder = "y₂ in meters"
            fourthTextField.textColor = UIColor.red
            fifthTextField.placeholder = "z₁ in meters"
            fifthTextField.textColor = UIColor.red
            sixthTextField.placeholder = "z₂ in meters"
            sixthTextField.textColor = UIColor.red
            seventhTextField.placeholder = "Distance in meters"
            seventhTextField.textColor = UIColor.blue
            seventhTextField.isUserInteractionEnabled = false
            seventhTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            Ana3ViewCoordinates_X.isHidden = false
            Ana3ViewCoordinates_Y.isHidden = false
            Ana3ViewCoordinates_Z.isHidden = false
            Ana3ViewPoint1.isHidden = false
            Ana3ViewPoint2.isHidden = false
            Ana3ViewLine.isHidden = false
            outputField.text = "Distance = √((x₂ - x₁)² + (y₂ - y₁)² + (z₂ - z₁)²)"
        } else if cellLabel == 41 {
            calcViewTitle.text = Ana3.cellTitle
            firstTextField.placeholder = "x₁ in meters"
            firstTextField.textColor = UIColor.red
            secondTextField.placeholder = "x₂ in meters"
            secondTextField.textColor = UIColor.red
            thirdTextField.placeholder = "y₁ in meters"
            thirdTextField.textColor = UIColor.red
            fourthTextField.placeholder = "y₂ in meters"
            fourthTextField.textColor = UIColor.red
            fifthTextField.placeholder = "Slope of a Line"
            fifthTextField.textColor = UIColor.blue
            fifthTextField.isUserInteractionEnabled = false
            fifthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            Ana1ViewCoordiantes.isHidden = false
            Ana2ViewCoordinates.isHidden = false
            Ana1ViewPoints.isHidden = false
            Ana2ViewPoints.isHidden = false
            Ana1ViewLine.isHidden = false
            outputField.text = "Slope of a Line = (y₂ - y₁) ÷ (x₂ - x₁)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Back button
    @IBAction func dismissView(_ sender: Any) {
        dismiss(animated: true, completion: nil) 
    }
    
    //Hides the keyboard when tap in the View
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    //Deletes the trailing zeros
    func forTrailingZero(temp: Double) -> String{
        let tempVar = String(format: "%g", temp)
        return tempVar
    }
    
    //Return the content of the textfield as a double
    func format(a : UITextField) -> Double {
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = NSLocale.current
        let text = String(describing: a.text!)
        let aDouble = numberFormatter.number(from: text)?.doubleValue ?? 0.0
        let result = round(10000 * aDouble)/10000
        return result
    }
    
    //Present an alert for empty input
    func showAlert() {
        let alertController = UIAlertController(title: "", message: "Please fill in all the fields.", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in})
        alertController.addAction(ok)
        present(alertController, animated: true, completion: nil)
    }
    
    //Animates the selected view
    func animate(a: UIView) {
        a.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.15, initialSpringVelocity: 6.0, options: .allowUserInteraction, animations: { a.transform = CGAffineTransform.identity } ,completion: nil)
    }
    
    @IBAction func firstField(_ sender: UITextField) {
        //Parallelogram
        if cellLabel == 0 {
            animate(a: Par1ViewRectangle)
        } else if cellLabel == 1 {
            animate(a: Par2ViewSquare)
        } else if cellLabel == 2 {
            animate(a: Par3ViewParallelogram)
        } else if cellLabel == 3 {
            animate(a: Par1ViewRectangle)
        } else if cellLabel == 4 {
            animate(a: Par2ViewSquare)
        } else if cellLabel == 5 {
            animate(a: Par3ViewParallelogram)
        } else if cellLabel == 6 {
            animate(a: Par2ViewSquare)
        } else if cellLabel == 7 {
            animate(a: Par8ViewCube1)
            
        //Triangle
        } else if cellLabel == 8 {
            animate(a: Tri1ViewTriangle)
        } else if cellLabel == 9 {
            animate(a: Tri1ViewTriangle)
        } else if cellLabel == 10 {
            animate(a: Tri1ViewTriangle)
            
        //Circle
        } else if cellLabel == 11 {
            animate(a: Cir1ViewLine)
        } else if cellLabel == 12 {
            animate(a: Cir2ViewArc)
        } else if cellLabel == 13 {
            animate(a: Cir1ViewLine)
        } else if cellLabel == 14 {
            animate(a: Cir1ViewLine)
        } else if cellLabel == 15 {
            animate(a: Cir1ViewLine)
            
        //Polygon
        } else if cellLabel == 16 {
            animate(a: Pol1ViewPolygon)
        } else if cellLabel == 17 {
            animate(a: Pol1ViewPolygon)
        } else if cellLabel == 18 {
            animate(a: Pol1ViewPolygon)
        } else if cellLabel == 19 {
            animate(a: Pol1ViewPolygon)
        } else if cellLabel == 20 {
            animate(a: Pol1ViewPolygon)
            
        //Trapezium
        } else if cellLabel == 21 {
            animate(a: Tra1ViewTrapezium)
        } else if cellLabel == 22 {
            animate(a: Tra1ViewTrapezium)
            
        //Rhombus
        } else if cellLabel == 23 {
            animate(a: Rho1ViewRhombus)
        } else if cellLabel == 24 {
            animate(a: Rho2ViewLine)
        } else if cellLabel == 25 {
            animate(a: Rho3ViewLine)
        } else if cellLabel == 26 {
            animate(a: Rho1ViewRhombus)
            
        //Cone
        } else if cellLabel == 27 {
            animate(a: Con1ViewHeight)
        } else if cellLabel == 28 {
            animate(a: Con1ViewHeight)
        } else if cellLabel == 29 {
            animate(a: Con1ViewSlantHeight)
        } else if cellLabel == 30 {
            animate(a: Con1ViewSlantHeight)
        } else if cellLabel == 31 {
            animate(a: Con1ViewHeight)
        } else if cellLabel == 32 {
            animate(a: Con1ViewHeight)
            
        //Cylinder
        } else if cellLabel == 33 {
            animate(a: Cyl1ViewHeight)
        } else if cellLabel == 34 {
            animate(a: Cyl1ViewHeight)
        } else if cellLabel == 35 {
            animate(a: Cyl1ViewHeight)
            
        //Ellipse
        } else if cellLabel == 36 {
            animate(a: Ell1ViewRadius1)
        } else if cellLabel == 37 {
            animate(a: Ell1ViewRadius1)
        } else if cellLabel == 38 {
            animate(a: Ell3ViewRadius1)
            
        //Analytical
        } else if cellLabel == 39 {
            animate(a: Ana1ViewPoints)
            animate(a: Ana2ViewCoordinates)
        } else if cellLabel == 40 {
            animate(a: Ana3ViewPoint1)
            animate(a: Ana3ViewCoordinates_Y)
        } else if cellLabel == 41 {
            animate(a: Ana1ViewPoints)
            animate(a: Ana2ViewCoordinates)
        }
    }

    @IBAction func secondField(_ sender: UITextField) {
        //Parallelogram
        if cellLabel == 0 {
            animate(a: Par1ViewRectangle)
        } else if cellLabel == 2 {
            animate(a: Par3ViewLine)
        } else if cellLabel == 3 {
            animate(a: Par1ViewRectangle)
        } else if cellLabel == 5 {
            animate(a: Par3ViewParallelogram)
            
            //Triangle
        } else if cellLabel == 8 {
            animate(a: Tri1ViewLine)
        } else if cellLabel == 9 {
            animate(a: Tri1ViewTriangle)
        } else if cellLabel == 10 {
            animate(a: Tri1ViewTriangle)
            
            //Circle
        } else if cellLabel == 12 {
            animate(a: Cir1ViewLine)
            
            //Polygon
        } else if cellLabel == 16 {
            animate(a: Pol1ViewLine)
        } else if cellLabel == 17 {
            animate(a: Pol1ViewLine)
        } else if cellLabel == 18 {
            animate(a: Pol1ViewRadius)
        } else if cellLabel == 19 {
            animate(a: Pol1ViewPolygon)
        } else if cellLabel == 20 {
            animate(a: Pol1ViewPolygon)
            
            //Trapezium
        } else if cellLabel == 21 {
            animate(a: Tra1ViewTrapezium)
        } else if cellLabel == 22 {
            animate(a: Tra1ViewTrapezium)
            
            //Rhombus
        } else if cellLabel == 23 {
            animate(a: Rho1ViewLine)
        } else if cellLabel == 24 {
            animate(a: Rho2ViewLine)
            
            //Cone
        } else if cellLabel == 27 {
            animate(a: Con1ViewRadius)
        } else if cellLabel == 28 {
            animate(a: Con1ViewRadius)
        } else if cellLabel == 29 {
            animate(a: Con1ViewRadius)
        } else if cellLabel == 30 {
            animate(a: Con1ViewRadius)
        } else if cellLabel == 31 {
            animate(a: Con1ViewRadius)
        } else if cellLabel == 32 {
            animate(a: Con1ViewRadius)
            
            //Cylinder
        } else if cellLabel == 33 {
            animate(a: Cyl1ViewRadius)
        } else if cellLabel == 34 {
            animate(a: Cyl1ViewRadius)
        } else if cellLabel == 35 {
            animate(a: Cyl1ViewRadius)
            
            //Ellipse
        } else if cellLabel == 36 {
            animate(a: Ell1ViewRadius2)
        } else if cellLabel == 37 {
            animate(a: Ell1ViewRadius2)
        } else if cellLabel == 38 {
            animate(a: Ell3ViewRadius2)
            
            //Analytical
        } else if cellLabel == 39 {
            animate(a: Ana2ViewPoints)
            animate(a: Ana2ViewCoordinates)
        } else if cellLabel == 40 {
            animate(a: Ana3ViewPoint2)
            animate(a: Ana3ViewCoordinates_Y)
        } else if cellLabel == 41 {
            animate(a: Ana2ViewPoints)
            animate(a: Ana2ViewCoordinates)
        }
    }
    
    @IBAction func thirdField(_ sender: UITextField) {
            //Triangle
        if cellLabel == 9 {
            animate(a: Tri1ViewTriangle)
        } else if cellLabel == 10 {
            animate(a: Tri1ViewTriangle)

            //Trapezium
        } else if cellLabel == 21 {
            animate(a: Tra1ViewLine)
        } else if cellLabel == 22 {
            animate(a: Tra1ViewTrapezium)
            
            //Ellipse
        } else if cellLabel == 38 {
            animate(a: Ell3ViewRadius3)
            
            //Analytical
        } else if cellLabel == 39 {
            animate(a: Ana1ViewPoints)
            animate(a: Ana1ViewCoordiantes)
        } else if cellLabel == 40 {
            animate(a: Ana3ViewPoint1)
            animate(a: Ana3ViewCoordinates_X)
        } else if cellLabel == 41 {
            animate(a: Ana1ViewPoints)
            animate(a: Ana1ViewCoordiantes)
        }
    }
    
    @IBAction func fourthField(_ sender: UITextField) {
            //Trapezium
        if cellLabel == 22 {
            animate(a: Tra1ViewTrapezium)

            //Analytical
        } else if cellLabel == 39 {
            animate(a: Ana2ViewPoints)
            animate(a: Ana1ViewCoordiantes)
        } else if cellLabel == 40 {
            animate(a: Ana3ViewPoint2)
            animate(a: Ana3ViewCoordinates_X)
        } else if cellLabel == 41 {
            animate(a: Ana2ViewPoints)
            animate(a: Ana1ViewCoordiantes)
        }
    }
    
    @IBAction func fifthField(_ sender: UITextField) {
        animate(a: Ana3ViewPoint1)
        animate(a: Ana3ViewCoordinates_Z)
    }
    
    @IBAction func sixthField(_ sender: UITextField) {
        animate(a: Ana3ViewPoint2)
        animate(a: Ana3ViewCoordinates_Z)
    }
    
    //Calculate button action
    @IBAction func calculateAction(_ sender: Any) {
        let a = format(a: firstTextField)
        let b = format(a: secondTextField)
        let c = format(a: thirdTextField)
        let d = format(a: fourthTextField)
        let e = format(a: fifthTextField)
        let f = format(a: sixthTextField)
        
        //Parallelogram
        if cellLabel == 0 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000*(sqrt((a * a)+(b * b))))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Side B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Diagonal = \(forTrailingZero(temp: c)) m"
                animate(a: Par1ViewLine)
                let calculationOutput = "\n\nDiagonal = √(\(forTrailingZero(temp: a))² + \(forTrailingZero(temp: b))²) \nDiagonal = √(\(forTrailingZero(temp: a*a)) + \(forTrailingZero(temp: b*b))) \nDiagonal = √\((forTrailingZero(temp: (a*a)+(b*b)))) \nDiagonal = \(forTrailingZero(temp: c)) m"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Par1ViewLine)
            } else {
                showAlert()
            }
        } else if cellLabel == 1 {
            if firstTextField.text != "" && secondTextField.text == "" {
                let b = round(10000*(sqrt(2) * a))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Diagonal = \(forTrailingZero(temp: b)) m"
                animate(a: Par2ViewLine)
                let calculationOutput = "\n\nDiagonal = √2﹒\(forTrailingZero(temp: a)) \nDiagonal = \(forTrailingZero(temp: b)) m"
                outputField.text.append(calculationOutput)
            } else if secondTextField.text != "" {
                animate(a: Par2ViewLine)
            } else {
                showAlert()
            }
        } else if cellLabel == 2 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000*(a * b))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Height = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Par3ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = \(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: b)) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Par3ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 3 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000*(a * b))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Side B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Par1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = \(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: b)) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Par1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 4 {
            if firstTextField.text != "" && secondTextField.text == "" {
                let b = round(10000*(a * a))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Surface Area = \(forTrailingZero(temp: b)) m²"
                animate(a: Par2ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = \(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: a)) \nSurface Area = \(forTrailingZero(temp: b)) m²"
                outputField.text.append(calculationOutput)
            } else if secondTextField.text != "" {
                animate(a: Par2ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 5 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000*(2 * (a + b)))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Side B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Perimeter = \(forTrailingZero(temp: c)) m"
                animate(a: Par3ViewParallelogram)
                
                let calculationOutput = "\n\nPerimeter = 2(\(forTrailingZero(temp: a)) + \(forTrailingZero(temp: b))) \nPerimeter = 2﹒\(forTrailingZero(temp: a + b)) \nPerimeter = \(forTrailingZero(temp: c)) m"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Par3ViewParallelogram)
            } else {
                showAlert()
            }
        } else if cellLabel == 6 {
            if firstTextField.text != "" && secondTextField.text == "" {
                let b = round(10000*(4 * a))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Perimeter = \(forTrailingZero(temp: b)) m"
                animate(a: Par2ViewSquare)
                
                let calculationOutput = "\n\nPerimeter = 4﹒\(forTrailingZero(temp: a)) \nPerimeter = \(forTrailingZero(temp: b)) m"
                outputField.text.append(calculationOutput)
            } else if secondTextField.text != "" {
                animate(a: Par2ViewSquare)
            } else {
                showAlert()
            }
        } else if cellLabel == 7 {
            if firstTextField.text != "" && secondTextField.text == "" {
                let b = round(10000*(a * a * a))/10000
                firstTextField.text = "Edge = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Volume = \(forTrailingZero(temp: b)) m³"
                animate(a: Par8ViewCube1)
                
                let calculationOutput = "\n\nVolume = \(forTrailingZero(temp: a))³ \nVolume = \(forTrailingZero(temp: b)) m³"
                outputField.text.append(calculationOutput)
            } else if secondTextField.text != "" {
                animate(a: Par8ViewCube1)
            } else {
                showAlert()
            }
            
        //Triangle
        } else if cellLabel == 8 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * ((a * b) / 2))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Height = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Tri1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = ½﹒\(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: b)) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Tri1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 9 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text != "" && fourthTextField.text == "" {
                let r = (a+b+c)/2
                let d = round(10000 * (sqrt(r*(r-a)*(r-b)*(r-c))))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Side B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Side C = \(forTrailingZero(temp: c)) m"
                fourthTextField.text = "Surface Area = \(forTrailingZero(temp: d)) m²"
                animate(a: Tri1ViewFilling)
                
                let calculationOutput = "\n\nSemiperimeter (r) = (\(forTrailingZero(temp: a)) + \(forTrailingZero(temp: b)) + \(forTrailingZero(temp: c))) ÷ 2 ⇒ \nSemiperimeter (r) = \(forTrailingZero(temp: a+b+c)) ÷ 2 \nSemiperimeter (r) = \(forTrailingZero(temp: (r))) m \n\nSurface Area = √(\(forTrailingZero(temp: r))(\(forTrailingZero(temp: r)) - \(forTrailingZero(temp: a)))(\(forTrailingZero(temp: r)) - \(forTrailingZero(temp: b)))(\(forTrailingZero(temp: r)) - \(forTrailingZero(temp: c)))) \nSurface Area = √(\(forTrailingZero(temp: r))(\(forTrailingZero(temp: r-a))﹒\(forTrailingZero(temp: r-b))﹒\(forTrailingZero(temp: r-c))) \nSurface Area = √(\(forTrailingZero(temp: r))﹒\(forTrailingZero(temp: ((r-a)*(r-b)*(r-c))))) \nSurface Area = √\(forTrailingZero(temp: (r*(r-a)*(r-b)*(r-c)))) \nSurface Area = \(forTrailingZero(temp: d)) m²"
                outputField.text.append(calculationOutput)
            } else if fourthTextField.text != "" {
                animate(a: Tri1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 10 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text != "" && fourthTextField.text == "" {
                let d = round(10000 * (a + b + c))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Side B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Side C = \(forTrailingZero(temp: c)) m"
                fourthTextField.text = "Perimeter = \(forTrailingZero(temp: d)) m"
                animate(a: Tri1ViewTriangle)
                
                let calculationOutput = "\n\nPerimeter = \(forTrailingZero(temp: a)) + \(forTrailingZero(temp: b)) + \(forTrailingZero(temp: c)) \nPerimeter = \(forTrailingZero(temp: d)) m"
                outputField.text.append(calculationOutput)
            } else if fourthTextField.text != "" {
                animate(a: Tri1ViewTriangle)
            } else {
                showAlert()
            }
            
        //Circle
        } else if cellLabel == 11 {
            if firstTextField.text != "" && secondTextField.text == "" {
                let b = round(10000 * (Double.pi * (a * a)))/10000
                firstTextField.text = "Radius = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Surface Area = \(forTrailingZero(temp: b)) m²"
                animate(a: Cir1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = \(round(100 * Double.pi)/100)﹒\(forTrailingZero(temp: a))² \nSurface Area = \(forTrailingZero(temp: b)) m²"
                outputField.text.append(calculationOutput)
            } else if secondTextField.text != "" {
                animate(a: Cir1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 12 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * ((Double.pi * (b * b) * a)/360))/10000
                firstTextField.text = "Arc Length = \(forTrailingZero(temp: a))˚"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Sector's Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Cir2ViewArc)
                
                let calculationOutput = "\n\nSector's Area = (\(round(100 * Double.pi)/100)﹒\(forTrailingZero(temp: b))²﹒\(forTrailingZero(temp: a))) ÷ 360 \nSector's Area = (\(round(100 * Double.pi)/100)﹒\(forTrailingZero(temp: b*b))﹒\(forTrailingZero(temp: a))) ÷ 360 \nSector's Area = \(forTrailingZero(temp: (round(100 * Double.pi)/100)*(b*b)*a)) ÷ 360 \nSector's Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Cir2ViewArc)
            } else {
                showAlert()
            }
        } else if cellLabel == 13 {
            if firstTextField.text != "" && secondTextField.text == "" {
                let b = round(10000 * (4 * Double.pi * (a * a)))/10000
                firstTextField.text = "Radius = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Surface Area = \(forTrailingZero(temp: b)) m²"
                animate(a: Cir3ViewSphere)
                
                let calculationOutput = "\n\nCurved Surface Area = 4﹒\(round(100 * Double.pi)/100)﹒\(forTrailingZero(temp: a))² \nCurved Surface Area = 4﹒\(round(100 * Double.pi)/100)﹒\(forTrailingZero(temp: a*a)) \nCurved Surface Area = \(forTrailingZero(temp: b)) m²"
                outputField.text.append(calculationOutput)
            } else if secondTextField.text != "" {
                animate(a: Cir3ViewSphere)
            } else {
                showAlert()
            }
        } else if cellLabel == 14 {
            if firstTextField.text != "" && secondTextField.text == "" {
                let b = round(10000 * (2 * Double.pi * a))/10000
                firstTextField.text = "Radius = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Perimeter = \(forTrailingZero(temp: b)) m"
                animate(a: Cir1ViewCircle)
                
                let calculationOutput = "\n\nPerimeter = 2﹒\(round(100 * Double.pi)/100)﹒\(forTrailingZero(temp: a)) \nPerimeter = \(forTrailingZero(temp: b)) m"
                outputField.text.append(calculationOutput)
            } else if secondTextField.text != "" {
                animate(a: Cir1ViewCircle)
            } else {
                showAlert()
            }
        } else if cellLabel == 15 {
            if firstTextField.text != "" && secondTextField.text == "" {
                let b = round(10000 * ((4 / 3) * Double.pi * (a * a * a)))/10000
                firstTextField.text = "Radius = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Volume = \(forTrailingZero(temp: b)) m³"
                animate(a: Cir3ViewSphere)
                
                let calculationOutput = "\n\nVolume = (4 ÷ 3)﹒\(round(100 * Double.pi)/100)﹒\(forTrailingZero(temp: a))³ \nVolume = 1.3333﹒\(round(100 * Double.pi)/100)﹒\(forTrailingZero(temp: a*a*a)) \nVolume = \(forTrailingZero(temp: b)) m³"
                outputField.text.append(calculationOutput)
            } else if secondTextField.text != "" {
                animate(a: Cir3ViewSphere)
            } else {
                showAlert()
            }
            
        //Polygon
        } else if cellLabel == 16 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * ((a * b) / 2))/10000
                firstTextField.text = "Perimeter = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Apothem = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Pol1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = (\(forTrailingZero(temp: b))﹒\(forTrailingZero(temp: a))) ÷ 2 \nSurface Area = \(forTrailingZero(temp: b*a)) ÷ 2 \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Pol1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 17 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * ((b * b) * a * tan(Double.pi / a)))/10000
                firstTextField.text = "Number of Sides = \(forTrailingZero(temp: a))"
                secondTextField.text = "Apothem = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Pol1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = \(forTrailingZero(temp: b))²﹒\(forTrailingZero(temp: a))﹒tan(3.14 ÷ \(forTrailingZero(temp: a))) \nSurface Area = \(forTrailingZero(temp: b*b))﹒\(forTrailingZero(temp: a))﹒tan(\(forTrailingZero(temp: 3.14/a))) \nSurface Area = \(forTrailingZero(temp: b*b))﹒\(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: tan(3.14 / a))) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Pol1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 18 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (((b * b) * a * sin((2 * Double.pi) / a))/2))/10000
                firstTextField.text = "Number of Sides = \(forTrailingZero(temp: a))"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Pol1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = (\(forTrailingZero(temp: b))²﹒\(forTrailingZero(temp: a))﹒sin((2﹒3.14) ÷ \(forTrailingZero(temp: a)))) ÷ 2 \nSurface Area = (\(forTrailingZero(temp: b*b))﹒\(forTrailingZero(temp: a))﹒sin(6.28 ÷ \(forTrailingZero(temp: a)))) ÷ 2 \nSurface Area = (\(forTrailingZero(temp: b*b))﹒\(forTrailingZero(temp: a))﹒sin(\(forTrailingZero(temp: 6.28/a)))) ÷ 2 \nSurface Area = (\(forTrailingZero(temp: b*b))﹒\(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: sin(6.28 / a)))) ÷ 2 \nSurface Area = (\(forTrailingZero(temp: b*b*a))﹒\(forTrailingZero(temp: sin(6.28 / a)))) ÷ 2 \nSurface Area = \(forTrailingZero(temp: ((b * b) * a * sin((2 * Double.pi) / a)))) ÷ 2 \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Pol1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 19 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (((b * b) * a) / (4 * tan(Double.pi / a))))/10000
                firstTextField.text = "Number of Sides = \(forTrailingZero(temp: a))"
                secondTextField.text = "Length of Side = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Pol1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = (\(forTrailingZero(temp: b))²﹒\(forTrailingZero(temp: a))) ÷ (4﹒tan(3.14 ÷ \(forTrailingZero(temp: a)))) \nSurface Area = (\(forTrailingZero(temp: b*b))﹒\(forTrailingZero(temp: a))) ÷ (4﹒tan(\(forTrailingZero(temp: 3.14/a)))) \nSurface Area = \(forTrailingZero(temp: b*b*a)) ÷ (4﹒\(forTrailingZero(temp: tan(3.14/a)))) \nSurface Area = \(forTrailingZero(temp: b*b*a)) ÷ \(forTrailingZero(temp: (4 * tan(3.14/a)))) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Pol1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 20 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (a * b))/10000
                firstTextField.text = "Number of Sides = \(forTrailingZero(temp: a))"
                secondTextField.text = "Length of a Side = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Perimeter = \(forTrailingZero(temp: c)) m"
                animate(a: Pol1ViewPolygon)
                
                let calculationOutput = "\n\nPerimeter = \(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: b)) \nPerimeter = \(forTrailingZero(temp: c)) m"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Pol1ViewPolygon)
            } else {
                showAlert()
            }
            
        //Trapezium
        } else if cellLabel == 21 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text != "" && fourthTextField.text == "" {
                let d = round(10000 * (((a + b) * c))/2 )/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Side B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Height = \(forTrailingZero(temp: c)) m"
                fourthTextField.text = "Surface Area = \(forTrailingZero(temp: d)) m²"
                animate(a: Tra1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = ((\(forTrailingZero(temp: a)) + \(forTrailingZero(temp: b)))﹒\(forTrailingZero(temp: c))) ÷ 2 \nSurface Area = (\(forTrailingZero(temp: a+b))﹒\(forTrailingZero(temp: c))) ÷ 2 \nSurface Area = \(forTrailingZero(temp: (a+b)*c)) ÷ 2 \nSurface Area = \(forTrailingZero(temp: d)) m²"
                outputField.text.append(calculationOutput)
            } else if fourthTextField.text != "" {
                animate(a: Tra1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 22 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text != "" && fourthTextField.text != "" && fifthTextField.text == ""{
                let e = round(10000 * (a + b + c + d))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Side B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Side C = \(forTrailingZero(temp: c)) m"
                fourthTextField.text = "Side D = \(forTrailingZero(temp: d)) m"
                fifthTextField.text = "Perimeter = \(forTrailingZero(temp: e)) m"
                animate(a: Tra1ViewTrapezium)
                
                let calculationOutput = "\n\nPerimeter = \(forTrailingZero(temp: a)) + \(forTrailingZero(temp: b)) + \(forTrailingZero(temp: c)) + \(forTrailingZero(temp: d)) \nPerimeter = \(forTrailingZero(temp: e)) m"
                outputField.text.append(calculationOutput)
            } else if fifthTextField.text != "" {
                animate(a: Tra1ViewTrapezium)
            } else {
                showAlert()
            }
            
        //Rhombus
        } else if cellLabel == 23 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (a * b))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Slant Height = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Rho1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = \(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: b)) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Rho1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 24 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * ((a * b)/2))/10000
                firstTextField.text = "Diagonal A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Diagonal B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Rho1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = (\(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: b))) ÷ 2 \nSurface Area = \(forTrailingZero(temp: a*b)) ÷ 2 \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Rho1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 25 {
            if firstTextField.text != "" && secondTextField.text == "" {
                let b = round(10000 * ((a * a) * sin(a)))/10000
                firstTextField.text = "Angle A = \(forTrailingZero(temp: a))˚"
                secondTextField.text = "Surface Area = \(forTrailingZero(temp: b)) m²"
                animate(a: Rho1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = \(forTrailingZero(temp: a))²﹒sin(\(forTrailingZero(temp: a))) \nSurface Area = \(forTrailingZero(temp: a*a))﹒\(forTrailingZero(temp: sin(a))) \nSurface Area = \(forTrailingZero(temp: b)) m²"
                outputField.text.append(calculationOutput)
            } else if secondTextField.text != "" {
                animate(a: Rho1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 26 {
            if firstTextField.text != "" && secondTextField.text == "" {
                let b = round(10000 * (4 * a))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Perimeter = \(forTrailingZero(temp: b)) m"
                animate(a: Rho1ViewRhombus)
                
                let calculationOutput = "\n\nPerimeter = 4﹒\(forTrailingZero(temp: a)) \nPerimeter = \(forTrailingZero(temp: 4*a)) m"
                outputField.text.append(calculationOutput)
            } else if secondTextField.text != "" {
                animate(a: Rho1ViewRhombus)
            } else {
                showAlert()
            }
            
        //Cone
        } else if cellLabel == 27 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (sqrt((b * b) + (a * a))))/10000
                firstTextField.text = "Height = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Slant Height = \(forTrailingZero(temp: c)) m"
                animate(a: Con1ViewSlantHeight)
                
                let calculationOutput = "\n\nSlant Height = √(\(forTrailingZero(temp: b))² + \(forTrailingZero(temp: a))²) \nSlant Height = √(\(forTrailingZero(temp: b*b)) + \(forTrailingZero(temp: a*a))) \nSlant Height = √\(forTrailingZero(temp: (a*a)+(b*b))) \nSlant Height = \(forTrailingZero(temp: c)) m"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Con1ViewSlantHeight)
            } else {
                showAlert()
            }
        } else if cellLabel == 28 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (3.14 * b * ((sqrt((b * b) + (a * a))) + b)))/10000
                firstTextField.text = "Height = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Con1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = 3.14﹒\(forTrailingZero(temp: b))﹒(√(\(forTrailingZero(temp: b))² + \(forTrailingZero(temp: a))²) + \(forTrailingZero(temp: b))) \nSurface Area = 3.14﹒\(forTrailingZero(temp: b))﹒(√(\(forTrailingZero(temp: b*b)) + \(forTrailingZero(temp: a*a))) + \(forTrailingZero(temp: b))) \nSurface Area = 3.14﹒\(forTrailingZero(temp: b))﹒(√\(forTrailingZero(temp: (b*b)+(a*a))) + \(forTrailingZero(temp: b))) \nSurface Area = 3.14﹒\(forTrailingZero(temp: b))﹒(\(forTrailingZero(temp: (sqrt((b * b) + (a * a))))) + \(forTrailingZero(temp: b))) \nSurface Area = 3.14﹒\(forTrailingZero(temp: b))﹒\(forTrailingZero(temp: (sqrt((b * b) + (a * a))+b))) \nSurface Area = \(forTrailingZero(temp: 3.14*b))﹒\(forTrailingZero(temp: (sqrt((b * b) + (a * a)))+b)) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Con1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 29 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (3.14 * b * (a + b)))/10000
                firstTextField.text = "Slant Height = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Con1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = 3.14﹒\(forTrailingZero(temp: b))﹒(\(forTrailingZero(temp: a)) + \(forTrailingZero(temp: b))) \nSurface Area = \(forTrailingZero(temp: 3.14*b))﹒\(forTrailingZero(temp: a+b)) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Con1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 30 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (3.14 * b * a))/10000
                firstTextField.text = "Slant Height = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Con1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = 3.14﹒\(forTrailingZero(temp: b))﹒\(forTrailingZero(temp: a)) \nSurface Area = \(forTrailingZero(temp: 3.14*b))﹒\(forTrailingZero(temp: a)) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Con1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 31 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (3.14 * b * sqrt((b * b) + (a * a))))/10000
                firstTextField.text = "Height = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Con1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = 3.14﹒\(forTrailingZero(temp: b))﹒√(\(forTrailingZero(temp: a))² + \(forTrailingZero(temp: b))²) \nSurface Area = \(forTrailingZero(temp: b*3.14))﹒√(\(forTrailingZero(temp: a*a)) + \(forTrailingZero(temp: b*b))) \nSurface Area = \(forTrailingZero(temp: b*3.14))﹒√\(forTrailingZero(temp: (a*a)+(b*b))) \nSurface Area = \(forTrailingZero(temp: b*3.14))﹒\(forTrailingZero(temp: sqrt((b * b) + (a * a)))) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Con1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 32 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * ((1 / 3) * 3.14 * (b * b) * a))/10000
                firstTextField.text = "Height = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Volume = \(forTrailingZero(temp: c)) m³"
                animate(a: Con1ViewFilling)
                
                let calculationOutput = "\n\nVolume = ⅓﹒3.14﹒\(forTrailingZero(temp: b))²﹒\(forTrailingZero(temp: a)) \nVolume = ⅓﹒3.14﹒\(forTrailingZero(temp: b*b))﹒\(forTrailingZero(temp: a)) \nVolume = 1.04667﹒\(forTrailingZero(temp: b*b))﹒\(forTrailingZero(temp: a)) \nVolume = \(forTrailingZero(temp: 1.04667*(b*b)))﹒\(forTrailingZero(temp: a)) \nVolume = \(forTrailingZero(temp: c)) m³"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Con1ViewFilling)
            } else {
                showAlert()
            }
            
        //Cylinder
        } else if cellLabel == 33 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (2 * 3.14 * b * a))/10000
                firstTextField.text = "Height = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Cyl1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = 2﹒3.14﹒\(forTrailingZero(temp: b))﹒\(forTrailingZero(temp: a)) \nSurface Area = 6.28﹒\(forTrailingZero(temp: b))﹒\(forTrailingZero(temp: a)) \nSurface Area = \(forTrailingZero(temp: 6.28*b))﹒\(forTrailingZero(temp: a)) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Cyl1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 34 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (2 * 3.14 * b * (a + b)))/10000
                firstTextField.text = "Height = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Cyl1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = 2﹒3.14﹒\(forTrailingZero(temp: b))﹒(\(forTrailingZero(temp: a)) + \(forTrailingZero(temp: b))) \nSurface Area = 6.28﹒\(forTrailingZero(temp: b))﹒\(forTrailingZero(temp: a+b)) \nSurface Area = \(forTrailingZero(temp: 6.28*b))﹒\(forTrailingZero(temp: a+b)) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Cyl1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 35 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (3.14 * (b * b) * a))/10000
                firstTextField.text = "Height = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Volume = \(forTrailingZero(temp: c)) m³"
                animate(a: Cyl1ViewFilling)
                
                let calculationOutput = "\n\nVolume = 3.14﹒\(forTrailingZero(temp: b))²﹒\(forTrailingZero(temp: a)) \nVolume = 3.14﹒\(forTrailingZero(temp: b*b))﹒\(forTrailingZero(temp: a)) \nVolume = \(forTrailingZero(temp: 3.14*(b*b)))﹒\(forTrailingZero(temp: a)) \nVolume = \(forTrailingZero(temp: c)) m³"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Cyl1ViewFilling)
            } else {
                showAlert()
            }
            
        //Ellipse
        } else if cellLabel == 36 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (3.14 * a * b))/10000
                firstTextField.text = "Radius A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Surface Area = \(forTrailingZero(temp: c)) m²"
                animate(a: Ell1ViewFilling)
                
                let calculationOutput = "\n\nSurface Area = 3.14﹒\(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: b)) \nSurface Area = \(forTrailingZero(temp: 3.14*a))﹒\(forTrailingZero(temp: b)) \nSurface Area = \(forTrailingZero(temp: c)) m²"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Ell1ViewFilling)
            } else {
                showAlert()
            }
        } else if cellLabel == 37 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text == "" {
                let c = round(10000 * (2 * 3.14 * (sqrt(((a * a) + (b * b))/2))))/10000
                firstTextField.text = "Radius A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Perimeter = \(forTrailingZero(temp: c)) m"
                animate(a: Ell1ViewPerimeter)
                
                let calculationOutput = "\n\nPerimeter = 2﹒3.14﹒√((\(forTrailingZero(temp: a))² + \(forTrailingZero(temp: b))²) ÷ 2) \nPerimeter = 6.28﹒√((\(forTrailingZero(temp: a*a)) + \(forTrailingZero(temp: b*b))) ÷ 2) \nPerimeter = 6.28﹒√(\(forTrailingZero(temp: (a*a)+(b*b))) ÷ 2) \nPerimeter = 6.28﹒√\(forTrailingZero(temp: ((a*a)+(b*b))/2)) \nPerimeter = 6.28﹒\(forTrailingZero(temp: (sqrt(((a * a) + (b * b))/2)))) \nPerimeter = \(forTrailingZero(temp: c)) m"
                outputField.text.append(calculationOutput)
            } else if thirdTextField.text != "" {
                animate(a: Ell1ViewPerimeter)
            } else {
                showAlert()
            }
        } else if cellLabel == 38 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text != "" && fourthTextField.text == "" {
                let d = round(10000 * ((4 / 3) * 3.14 * a * b * c))/10000
                firstTextField.text = "Radius A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Radius B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Radius C = \(forTrailingZero(temp: c)) m"
                fourthTextField.text = "Volume = \(forTrailingZero(temp: d)) m³"
                animate(a: Ell3ViewFilling)
                animate(a: Ell3ViewPerimeter)
                
                let calculationOutput = "\n\nVolume = (4 ÷ 3)﹒3.14﹒\(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: b))﹒\(forTrailingZero(temp: c)) \nVolume = 1.3333﹒3.14﹒\(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: b))﹒\(forTrailingZero(temp: c)) \nVolume = 4.1867﹒\(forTrailingZero(temp: a))﹒\(forTrailingZero(temp: b))﹒\(forTrailingZero(temp: c)) \nVolume = \(forTrailingZero(temp: 4.1867*a))﹒\(forTrailingZero(temp: b))﹒\(forTrailingZero(temp: c)) \nVolume = \(forTrailingZero(temp: 4.1867*a*b))﹒\(forTrailingZero(temp: c)) \nVolume = \(forTrailingZero(temp: d)) m³"
                outputField.text.append(calculationOutput)

            } else if fourthTextField.text != "" {
                animate(a: Ell3ViewFilling)
                animate(a: Ell3ViewPerimeter)
            } else {
                showAlert()
            }
            
        //Analytical
        } else if cellLabel == 39 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text != "" && fourthTextField.text != "" && fifthTextField.text == "" {
                let e = round(10000 * sqrt(((b - a) * (b - a)) + ((d - c) * (d - c))))/10000
                firstTextField.text = "x₁ = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "x₂ = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "y₁ = \(forTrailingZero(temp: c)) m"
                fourthTextField.text = "y₂ = \(forTrailingZero(temp: d)) m"
                fifthTextField.text = "Distance = \(forTrailingZero(temp: e)) m"
                animate(a: Ana1ViewLine)
                animate(a: Ana1ViewPoints)
                animate(a: Ana2ViewPoints)
                
                let calculationOutput = "\n\nDistance = √((\(forTrailingZero(temp: b)) - \(forTrailingZero(temp: a)))² + (\(forTrailingZero(temp: d)) - \(forTrailingZero(temp: c)))²) \nDistance = √(\(forTrailingZero(temp: b-a))² + \(forTrailingZero(temp: d-c))²) \nDistance = √(\(forTrailingZero(temp: (b-a)*(b-a))) + \(forTrailingZero(temp: (d-c)*(d-c)))) \nDistance = √\(forTrailingZero(temp: ((b-a)*(b-a))+((d-c)*(d-c)))) \nDistance = \(forTrailingZero(temp: e)) m"
                outputField.text.append(calculationOutput)
            } else if fifthTextField.text != "" {
                animate(a: Ana1ViewLine)
                animate(a: Ana1ViewPoints)
                animate(a: Ana2ViewPoints)
            } else {
                showAlert()
            }
        } else if cellLabel == 40 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text != "" && fourthTextField.text != "" && fifthTextField.text != "" && sixthTextField.text != "" && seventhTextField.text == "" {
                let g = round(10000 * sqrt(((b - a) * (b - a)) + ((d - c) * (d - c)) + ((f - e) * (f - e))))/10000
                firstTextField.text = "x₁ = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "x₂ = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "y₁ = \(forTrailingZero(temp: c)) m"
                fourthTextField.text = "y₂ = \(forTrailingZero(temp: d)) m"
                fifthTextField.text = "z₁ = \(forTrailingZero(temp: e)) m"
                sixthTextField.text = "z₂ = \(forTrailingZero(temp: f)) m"
                seventhTextField.text = "Distance = \(forTrailingZero(temp: g)) m"
                animate(a: Ana3ViewLine)
                animate(a: Ana3ViewPoint1)
                animate(a: Ana3ViewPoint2)
                
                let calculationOutput = "\n\nDistance = √((\(forTrailingZero(temp: b)) - \(forTrailingZero(temp: a)))² + (\(forTrailingZero(temp: d)) - \(forTrailingZero(temp: c)))² + (\(forTrailingZero(temp: f)) - \(forTrailingZero(temp: e)))²) \nDistance = √(\(forTrailingZero(temp: b-a))² + \(forTrailingZero(temp: d-c))² + \(forTrailingZero(temp: f-e))²) \nDistance = √(\(forTrailingZero(temp: (b-a)*(b-a))) + \(forTrailingZero(temp: (d-c)*(d-c))) + \(forTrailingZero(temp: (f-e)*(f-e)))) \nDistance = √\(forTrailingZero(temp: ((b-a)*(b-a))+((d-c)*(d-c))+((f-e)*(f-e)))) \nDistance = \(forTrailingZero(temp: g)) m"
                outputField.text.append(calculationOutput)
            } else if seventhTextField.text != "" {
                animate(a: Ana3ViewLine)
                animate(a: Ana3ViewPoint1)
                animate(a: Ana3ViewPoint2)
            } else {
                showAlert()
            }
        } else if cellLabel == 41 {
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text != "" && fourthTextField.text != "" && fifthTextField.text == "" {
                let e = round(10000 * ((d - c) / (b - a)))/10000
                firstTextField.text = "x₁ = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "x₂ = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "y₁ = \(forTrailingZero(temp: c)) m"
                fourthTextField.text = "y₂ = \(forTrailingZero(temp: d)) m"
                fifthTextField.text = "Line Slope = \(forTrailingZero(temp: e))"
                animate(a: Ana1ViewLine)
                animate(a: Ana1ViewPoints)
                animate(a: Ana2ViewPoints)
                
                let calculationOutput = "\n\nSlope of a Line = ((\(forTrailingZero(temp: b)) - \(forTrailingZero(temp: a))) ÷ (\(forTrailingZero(temp: d)) - \(forTrailingZero(temp: c)))) \nSlope of a Line = \(forTrailingZero(temp: b-a)) ÷ \(forTrailingZero(temp: d-c)) \nSlope of a Line = \(forTrailingZero(temp: e))"
                outputField.text.append(calculationOutput)
            } else if fifthTextField.text != "" {
                animate(a: Ana1ViewLine)
                animate(a: Ana1ViewPoints)
                animate(a: Ana2ViewPoints)
            } else {
                showAlert()
            }
        }
            self.view.endEditing(true)
    }
    
    @IBAction func resetAction(_ sender: UIButton) {
        firstTextField.text = ""
        secondTextField.text = ""
        thirdTextField.text = ""
        fourthTextField.text = ""
        fifthTextField.text = ""
        sixthTextField.text = ""
        seventhTextField.text = ""
    }
    
    @IBAction func emailSend(_ sender: UIButton) {
        if !MFMailComposeViewController.canSendMail() {
            let alertController = UIAlertController(title: "", message: "Mail services are not enabled in this device", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in})
            alertController.addAction(ok)
            present(alertController, animated: true, completion: nil)
        } else {
            let composeVC = MFMailComposeViewController()
            composeVC.mailComposeDelegate = self
            composeVC.setToRecipients([""])
            composeVC.setSubject("\(calcViewTitle.text!) - Core Geometry")
            composeVC.setMessageBody("\(outputField.text!)", isHTML: false)
            self.present(composeVC, animated: true, completion: nil)
            }
        }
    //Dismiss the Mail View Controller
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }

    @IBAction func clearAction(_ sender: UIButton) {
        viewDidLoad()
    }
}

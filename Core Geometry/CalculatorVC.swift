//
//  CalculatorVC.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 30/12/2016.
//  Copyright © 2016 Fotios Tragopoulos. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController {

    @IBOutlet weak var calcViewTitle: UILabel!
    
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
        
        if cellLabel == 0 {
            calcViewTitle.text = Par1.cellTitle
            //Creating the TextFields
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
            
        } else if cellLabel == 1 {
            calcViewTitle.text = Par2.cellTitle
            //Creating the TextFields
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
            
        } else if cellLabel == 2 {
            calcViewTitle.text = Par3.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Height in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Par3ViewParallelogram.isHidden = false
            Par3ViewFilling.isHidden = false
            Par3ViewLine.isHidden = false
            
        } else if cellLabel == 3 {
            calcViewTitle.text = Par4.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Par1ViewRectangle.isHidden = false
            Par1ViewFilling.isHidden = false
            
        } else if cellLabel == 4 {
            calcViewTitle.text = Par5.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Surface Area in m²"
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
            
        } else if cellLabel == 5 {
            calcViewTitle.text = Par6.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Perimeter in meters"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Par3ViewParallelogram.isHidden = false
            Par3ViewFilling.isHidden = false
            
        } else if cellLabel == 6 {
            calcViewTitle.text = Par7.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Perimeter in meters"
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
            
        } else if cellLabel == 7 {
            calcViewTitle.text = Par8.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Edge in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Volume in m³"
            secondTextField.textColor = UIColor.red
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Par8ViewCube1.isHidden = false
            
        } else if cellLabel == 8 {
            calcViewTitle.text = Tri1.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Height in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Tri1ViewFilling.isHidden = false
            Tri1ViewTriangle.isHidden = false
            Tri1ViewLine.isHidden = false
            
        } else if cellLabel == 9 {
            calcViewTitle.text = Tri2.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Side C in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "Surface Area in m²"
            fourthTextField.textColor = UIColor.red
            fourthTextField.isUserInteractionEnabled = false
            fourthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Tri1ViewFilling.isHidden = false
            Tri1ViewTriangle.isHidden = false
            
        } else if cellLabel == 10 {
            calcViewTitle.text = Tri3.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Side C in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "Perimeter in meters"
            fourthTextField.textColor = UIColor.red
            fourthTextField.isUserInteractionEnabled = false
            fourthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Tri1ViewFilling.isHidden = false
            Tri1ViewTriangle.isHidden = false
            
        } else if cellLabel == 11 {
            calcViewTitle.text = Cir1.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Radius in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Surface Area in m²"
            secondTextField.textColor = UIColor.red
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
            
        } else if cellLabel == 12 {
            calcViewTitle.text = Cir2.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Arc Length in degrees"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Sector's Area in m²"
            thirdTextField.textColor = UIColor.red
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
            
        } else if cellLabel == 13 {
            calcViewTitle.text = Cir3.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Radius in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Curved Surface Area in m²"
            secondTextField.textColor = UIColor.red
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Cir3ViewSphere.isHidden = false
            Cir1ViewLine.isHidden = false
            
        } else if cellLabel == 14 {
            calcViewTitle.text = Cir4.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Radius in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Perimeter in meters"
            secondTextField.textColor = UIColor.red
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
            
        } else if cellLabel == 15 {
            calcViewTitle.text = Cir5.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Radius in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Volume in m³"
            secondTextField.textColor = UIColor.red
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
        
            Cir3ViewSphere.isHidden = false
            Cir1ViewLine.isHidden = false
            
        } else if cellLabel == 16 {
            calcViewTitle.text = Pol1.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Perimeter in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Apothem in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Pol1ViewFilling.isHidden = false
            Pol1ViewPolygon.isHidden = false
            Pol1ViewLine.isHidden = false
            
        } else if cellLabel == 17 {
            calcViewTitle.text = Pol2.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Number of Sides"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Apothem in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Pol1ViewFilling.isHidden = false
            Pol1ViewPolygon.isHidden = false
            Pol1ViewLine.isHidden = false
            
        } else if cellLabel == 18 {
            calcViewTitle.text = Pol3.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Number of Sides"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Pol1ViewFilling.isHidden = false
            Pol1ViewPolygon.isHidden = false
            Pol1ViewRadius.isHidden = false
            
        } else if cellLabel == 19 {
            calcViewTitle.text = Pol4.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Number of Sides"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Length of a Side in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Pol1ViewFilling.isHidden = false
            Pol1ViewPolygon.isHidden = false
            
        } else if cellLabel == 20 {
            calcViewTitle.text = Pol5.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Number of Sides"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Length of a Side in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Perimeter in meters"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Pol1ViewFilling.isHidden = false
            Pol1ViewPolygon.isHidden = false
            
        } else if cellLabel == 21 {
            calcViewTitle.text = Tra1.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Height in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "Surface Area in m²"
            fourthTextField.textColor = UIColor.red
            fourthTextField.isUserInteractionEnabled = false
            fourthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Tra1ViewFilling.isHidden = false
            Tra1ViewTrapezium.isHidden = false
            Tra1ViewLine.isHidden = false
            
        } else if cellLabel == 22 {
            calcViewTitle.text = Tra2.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Side B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Side C in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "Side D in meters"
            fourthTextField.textColor = UIColor.blue
            fifthTextField.placeholder = "Perimeter in meters"
            fifthTextField.textColor = UIColor.red
            fifthTextField.isUserInteractionEnabled = false
            fifthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Tra1ViewFilling.isHidden = false
            Tra1ViewTrapezium.isHidden = false
            
        } else if cellLabel == 23 {
            calcViewTitle.text = Rho1.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Slant Height in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Rho1ViewFilling.isHidden = false
            Rho1ViewRhombus.isHidden = false
            Rho1ViewLine.isHidden = false
            
        } else if cellLabel == 24 {
            calcViewTitle.text = Rho2.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Diagonal A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Diagonal B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Rho1ViewFilling.isHidden = false
            Rho1ViewRhombus.isHidden = false
            Rho2ViewLine.isHidden = false
            
        } else if cellLabel == 25 {
            calcViewTitle.text = Rho3.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Angle â in degrees"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Surface Area in m²"
            secondTextField.textColor = UIColor.red
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
            
        } else if cellLabel == 26 {
            calcViewTitle.text = Rho4.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Side A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Perimeter in meters"
            secondTextField.textColor = UIColor.red
            secondTextField.isUserInteractionEnabled = false
            secondTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            thirdTextField.isHidden = true
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Rho1ViewFilling.isHidden = false
            Rho1ViewRhombus.isHidden = false
            
        } else if cellLabel == 27 {
            calcViewTitle.text = Con1.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.blue
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
            
        } else if cellLabel == 28 {
            calcViewTitle.text = Con2.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Total Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Con1ViewFilling.isHidden = false
            Con1ViewRadius.isHidden = false
            Con1ViewHeight.isHidden = false
            
        } else if cellLabel == 29 {
            calcViewTitle.text = Con3.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Slant Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Total Surface Area in m²"
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
            
        } else if cellLabel == 30 {
            calcViewTitle.text = Con4.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Slant Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Curved Surface Area in m²"
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

        } else if cellLabel == 31 {
            calcViewTitle.text = Con5.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Curved Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Con1ViewFilling.isHidden = false
            Con1ViewRadius.isHidden = false
            Con1ViewHeight.isHidden = false
            
        } else if cellLabel == 32 {
            calcViewTitle.text = Con6.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Volume in m³"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Con1ViewFilling.isHidden = false
            Con1ViewRadius.isHidden = false
            Con1ViewHeight.isHidden = false
            
        } else if cellLabel == 33 {
            calcViewTitle.text = Cyl1.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Curved Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Cyl1ViewFilling.isHidden = false
            Cyl1ViewRadius.isHidden = false
            Cyl1ViewHeight.isHidden = false
            
        } else if cellLabel == 34 {
            calcViewTitle.text = Cyl2.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Total Surface Area in m²"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Cyl1ViewFilling.isHidden = false
            Cyl1ViewRadius.isHidden = false
            Cyl1ViewHeight.isHidden = false
            
        } else if cellLabel == 35 {
            calcViewTitle.text = Cyl3.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Height in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Volume in m³"
            thirdTextField.textColor = UIColor.red
            thirdTextField.isUserInteractionEnabled = false
            thirdTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            fourthTextField.isHidden = true
            fifthTextField.isHidden = true
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Cyl1ViewFilling.isHidden = false
            Cyl1ViewRadius.isHidden = false
            Cyl1ViewHeight.isHidden = false
            
        } else if cellLabel == 36 {
            calcViewTitle.text = Ell1.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Radius A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Surface Area in m²"
            thirdTextField.textColor = UIColor.red
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
            
        } else if cellLabel == 37 {
            calcViewTitle.text = Ell2.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Radius A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Perimeter in meters"
            thirdTextField.textColor = UIColor.red
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
            
        } else if cellLabel == 38 {
            calcViewTitle.text = Ell3.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "Radius A in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "Radius B in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "Radius C in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "Volume in m³"
            fourthTextField.textColor = UIColor.red
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
            
        } else if cellLabel == 39 {
            calcViewTitle.text = Ana1.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "x₁ in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "x₂ in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "y₁ in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "y₂ in meters"
            fourthTextField.textColor = UIColor.blue
            fifthTextField.placeholder = "Distance in meters"
            fifthTextField.textColor = UIColor.red
            fifthTextField.isUserInteractionEnabled = false
            fifthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Ana1ViewCoordiantes.isHidden = false
            Ana2ViewCoordinates.isHidden = false
            Ana1ViewPoints.isHidden = false
            Ana2ViewPoints.isHidden = false
            Ana1ViewLine.isHidden = false
            
        } else if cellLabel == 40 {
            calcViewTitle.text = Ana2.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "x₁ in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "x₂ in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "y₁ in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "y₂ in meters"
            fourthTextField.textColor = UIColor.blue
            fifthTextField.placeholder = "z₁ in meters"
            fifthTextField.textColor = UIColor.blue
            sixthTextField.placeholder = "z₂ in meters"
            sixthTextField.textColor = UIColor.blue
            seventhTextField.placeholder = "Distance in meters"
            seventhTextField.textColor = UIColor.red
            seventhTextField.isUserInteractionEnabled = false
            seventhTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            
            Ana3ViewCoordinates_X.isHidden = false
            Ana3ViewCoordinates_Y.isHidden = false
            Ana3ViewCoordinates_Z.isHidden = false
            Ana3ViewPoint1.isHidden = false
            Ana3ViewPoint2.isHidden = false
            Ana3ViewLine.isHidden = false
            
        } else if cellLabel == 41 {
            calcViewTitle.text = Ana3.cellTitle
            //Creating the TextFields
            firstTextField.placeholder = "x₁ in meters"
            firstTextField.textColor = UIColor.blue
            secondTextField.placeholder = "x₂ in meters"
            secondTextField.textColor = UIColor.blue
            thirdTextField.placeholder = "y₁ in meters"
            thirdTextField.textColor = UIColor.blue
            fourthTextField.placeholder = "y₂ in meters"
            fourthTextField.textColor = UIColor.blue
            fifthTextField.placeholder = "Slope of a Line"
            fifthTextField.textColor = UIColor.red
            fifthTextField.isUserInteractionEnabled = false
            fifthTextField.backgroundColor = UIColor.init(white: 1.0, alpha: 0.0)
            sixthTextField.isHidden = true
            seventhTextField.isHidden = true
            
            Ana1ViewCoordiantes.isHidden = false
            Ana2ViewCoordinates.isHidden = false
            Ana1ViewPoints.isHidden = false
            Ana2ViewPoints.isHidden = false
            Ana1ViewLine.isHidden = false
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
    
    //Info button action
    @IBAction func landscapeInfo(_ sender: UIButton) {
        //Create the alert controller
        let alertController = UIAlertController(title: "", message: "Thanks for downloading Core Geometry", preferredStyle: .actionSheet)
        //Create and add the GitHub link
        let gitImage = UIImage(named: "githubsrc")
        let link = "https://github.com/FotiosTragopoulos/Core-Geometry"
        let gitLink = UIAlertAction(title: "GitHub Project", style: .default) { action -> Void in
            UIApplication.shared.openURL(NSURL(string: link)! as URL)
            print("something here... button click or action logging")
        }
        gitLink.setValue(gitImage, forKey: "image")
        //Create and add the Portfolio link
        let portImage = UIImage(named: "web")
        let linkPortfolio = "http://fotiostragopoulos.myds.me/iGeometry.html"
        let portLink = UIAlertAction(title: "Portfolio Website", style: .default) { action -> Void in
            UIApplication.shared.openURL(NSURL(string: linkPortfolio)! as URL)
            print("something here... button click or action logging")
        }
        portLink.setValue(portImage, forKey: "image")
        //Create and add OK action
        let yesAction = UIAlertAction(title: "OK", style: .cancel) { action -> Void in
        }
        alertController.addAction(portLink)
        alertController.addAction(gitLink)
        alertController.addAction(yesAction)
        //Present the AlertController
        self.present(alertController, animated: true, completion: nil)
    }
    
    //GitHub button action
    @IBAction func gitAction(_ sender: UIButton) {
        if let url = NSURL(string: "https://github.com/FotiosTragopoulos/Core-Geometry") {
            UIApplication.shared.openURL(url as URL) }
    }
    
    //Portfolio button action
    @IBAction func portfollioAction(_ sender: UIButton) {
        if let url = NSURL(string: "http://fotiostragopoulos.myds.me/iGeometry.html") {
            UIApplication.shared.openURL(url as URL)}
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
        if cellLabel == 0 {
            
            if (firstTextField.text != "" && secondTextField.text != "") {
                let a = format(a: firstTextField)
                let b = format(a: secondTextField)
                let c = round(10000*(sqrt((a * a)+(b * b))))/10000
                firstTextField.text = "Side A = \(forTrailingZero(temp: a)) m"
                secondTextField.text = "Side B = \(forTrailingZero(temp: b)) m"
                thirdTextField.text = "Diagonal = \(forTrailingZero(temp: c)) m"
                
            } else {
                showAlert()
            }
            self.view.endEditing(true)
        }
    }
}

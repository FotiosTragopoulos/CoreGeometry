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
    
    @IBAction func dismissView(_ sender: Any) {
        dismiss(animated: true, completion: nil) 
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func landscapeInfo(_ sender: UIButton) {
        //Create the alert controller
        let alertController = UIAlertController(title: "", message: "Thanks for downloading Core Geometry", preferredStyle: .actionSheet)
        
        //Create and add the GitHub link
        let gitImage = UIImage(named: "githubsrc")
        let link = "https://github.com/FotiosTragopoulos/Calculator3D"
        let gitLink = UIAlertAction(title: "GitHub Project", style: .default) { action -> Void in
            UIApplication.shared.openURL(NSURL(string: link)! as URL)
            print("something here... button click or action logging")
        }
        gitLink.setValue(gitImage, forKey: "image")
        
        //Create and add the Portfolio link
        let portImage = UIImage(named: "web")
        let linkPortfolio = "http://fotiostragopoulos.myds.me"
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
    
    @IBAction func gitAction(_ sender: UIButton) {
        if let url = NSURL(string: "https://github.com/FotiosTragopoulos/Calculator3D") {
            UIApplication.shared.openURL(url as URL) }
    }
    
    @IBAction func portfollioAction(_ sender: UIButton) {
        if let url = NSURL(string: "http://fotiostragopoulos.myds.me") {
            UIApplication.shared.openURL(url as URL)}
    }

}

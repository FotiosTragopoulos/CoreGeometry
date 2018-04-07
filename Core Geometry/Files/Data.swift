//
//  Data.swift
//  Core Geometry
//
//  Created by Fotios Tragopoulos on 31/12/2016.
//  Copyright © 2016 Fotios Tragopoulos. All rights reserved.
//

import UIKit

//Header Title
enum headerTitle : String {
    case Parallelogram = "A parallelogram is a quadrilateral with two pairs of parallel sides. The opposite sides of a parallelogram are of equal length and the opposite angles are of equal measure."
    case Triangle = "Any three points, when non-collinear, determine a unique triangle and a unique plane. A triangle has three sides and three angles. The three angles always add to 180°."
    case Circle = "A circle is the set of all points in a plane that are at a given distance from a given point. It is the curve traced out by a point that moves so that its distance from a given point is constant."
    case Polygon = "A polygon is a plane 2D shape that is bounded by a finite chain of straight line segments closing in a loop to form a closed chain. These segments are called its sides."
    case Trapezium = "A convex quadrilateral with at least one pair of parallel sides is referred to as a trapezoid in American and Canadian English but as a trapezium in English outside North America."
    case Rhombus = "A rhombus is a simple quadrilateral whose four sides all have the same length. Another name is equilateral quadrilateral, since equilateral means that all of its sides are equal in length."
    case Cone = "A cone is a three-dimensional geometric shape that tapers smoothly from a flat base (frequently, though not necessarily, circular) to a point called the apex or vertex."
    case Cylinder = "A cylinder is one of the most basic curvilinear geometric shapes, the surface formed by the points at a fixed distance from a given straight line, the axis of the cylinder."
    case Ellipse = "An ellipse is a curve on a plane that surrounds two focal points such that the sum of the distances to the two focal points is constant for every point on the curve."
    case Analytical = "Analytic geometry is the study of geometry using a coordinate system. Frequently used in physics and engineering, and is the foundation of most modern fields of geometry."
}

//TableView's cells

//Parallelogram Options
let Par1 = DetailModel(cellImage: #imageLiteral(resourceName: "Rectangle_Diagonal"), cellTitle: "Diagonal of a Rectangle")
let Par2 = DetailModel(cellImage: #imageLiteral(resourceName: "Square_Diagonal"), cellTitle: "Diagonal of a Square")
let Par3 = DetailModel(cellImage: #imageLiteral(resourceName: "Parallelogram_SurfaceArea"), cellTitle: "Surface Area of a Parallelogram")
let Par4 = DetailModel(cellImage: #imageLiteral(resourceName: "Rectangle_SurfaceArea"), cellTitle: "Surface Area of a Rectangle")
let Par5 = DetailModel(cellImage: #imageLiteral(resourceName: "Square_SurfaceArea"), cellTitle: "Surface Area of a Square")
let Par6 = DetailModel(cellImage: #imageLiteral(resourceName: "Parallelogram_Perimeter"), cellTitle: "Perimeter of a Parallelogram")
let Par7 = DetailModel(cellImage: #imageLiteral(resourceName: "Square_Perimeter"), cellTitle: "Perimeter of a Square")
let Par8 = DetailModel(cellImage: #imageLiteral(resourceName: "Cube_Volume"), cellTitle: "Volume of a Cube")

//Triangle Options
let Tri1 = DetailModel(cellImage: #imageLiteral(resourceName: "Triangle_SurfaceArea"), cellTitle: "Surface Area of a Triangle")
let Tri2 = DetailModel(cellImage: #imageLiteral(resourceName: "Triangle_SurfaceArea_Heron"), cellTitle: "Surface Area - Heron's Formula")
let Tri3 = DetailModel(cellImage: #imageLiteral(resourceName: "Triangle_Perimeter"), cellTitle: "Perimeter of a Triangle")

//Circle Options
let Cir1 = DetailModel(cellImage: #imageLiteral(resourceName: "Circle_SurfaceArea"), cellTitle: "Surface Area of a Circle")
let Cir2 = DetailModel(cellImage: #imageLiteral(resourceName: "Circle_SectorArea"), cellTitle: "Area of a Sector of a Circle")
let Cir3 = DetailModel(cellImage: #imageLiteral(resourceName: "Sphere_CurvedArea"), cellTitle: "Curved Surface Area of a Sphere")
let Cir4 = DetailModel(cellImage: #imageLiteral(resourceName: "Circle_Perimeter"), cellTitle: "Perimeter of a Circle")
let Cir5 = DetailModel(cellImage: #imageLiteral(resourceName: "Sphere_Volume"), cellTitle: "Volume of a Sphere")

//Polygon Options
let Pol1 = DetailModel(cellImage: #imageLiteral(resourceName: "Polygon_SurfaceArea1"), cellTitle: "Surface Area (Apothem - Perimeter)")
let Pol2 = DetailModel(cellImage: #imageLiteral(resourceName: "Polygon_SurfaceArea2"), cellTitle: "Surface Area (Apothem - Number of Sides)")
let Pol3 = DetailModel(cellImage: #imageLiteral(resourceName: "Polygon_SurfaceArea3"), cellTitle: "Surface Area (Radius - Number of Sides)")
let Pol4 = DetailModel(cellImage: #imageLiteral(resourceName: "Polygon_SurfaceArea4"), cellTitle: "Surface Area (Length of a Side - Number of Sides)")
let Pol5 = DetailModel(cellImage: #imageLiteral(resourceName: "Polygon_Perimeter"), cellTitle: "Perimeter of a Canonical Polygon")

//Trapezium Options
let Tra1 = DetailModel(cellImage: #imageLiteral(resourceName: "Trapezium_SurfaceArea"), cellTitle: "Surface Area of a Trapezium")
let Tra2 = DetailModel(cellImage: #imageLiteral(resourceName: "Trapezium_Perimeter"), cellTitle: "Perimeter of a Trapezium")

//Rhombus Options
let Rho1 = DetailModel(cellImage: #imageLiteral(resourceName: "Rhombus_SurfaceArea1"), cellTitle: "Surface Area (Side - Height)")
let Rho2 = DetailModel(cellImage: #imageLiteral(resourceName: "Rhombus_SurfaceArea2"), cellTitle: "Surface Area (Diagonals)")
let Rho3 = DetailModel(cellImage: #imageLiteral(resourceName: "Rhombus_SurfaceArea3"), cellTitle: "Surface Area (Angle)")
let Rho4 = DetailModel(cellImage: #imageLiteral(resourceName: "Rhombus_Perimeter"), cellTitle: "Perimeter of Rhombus")

//Cone Options
let Con1 = DetailModel(cellImage: #imageLiteral(resourceName: "Cone_SlantHeight"), cellTitle: "Slant Height of a Cone")
let Con2 = DetailModel(cellImage: #imageLiteral(resourceName: "Cone_TotalSurfaceArea1"), cellTitle: "Total Surface Area (Radius - Height)")
let Con3 = DetailModel(cellImage: #imageLiteral(resourceName: "Cone_TotalSurfaceArea2"), cellTitle: "Total Surface Area (Radius - Slant Height)")
let Con4 = DetailModel(cellImage: #imageLiteral(resourceName: "Cone_CurvedSurfaceArea1"), cellTitle: "Curved Surface Area (Radius - Slant Height)")
let Con5 = DetailModel(cellImage: #imageLiteral(resourceName: "Cone_CurvedSurfaceArea2"), cellTitle: "Curved Surface Area (Radius - Height)")
let Con6 = DetailModel(cellImage: #imageLiteral(resourceName: "Cone_Volume"), cellTitle: "Volume of a Cone")

//Cylinder Options
let Cyl1 = DetailModel(cellImage: #imageLiteral(resourceName: "Cylinder_CurvedSurfaceArea"), cellTitle: "Curved Surface Area of a Cylinder")
let Cyl2 = DetailModel(cellImage: #imageLiteral(resourceName: "Cylinder_TotalSurfaceArea"), cellTitle: "Total Surface Area of a Cylinder")
let Cyl3 = DetailModel(cellImage: #imageLiteral(resourceName: "Cylinder_Volume"), cellTitle: "Volume of a Cylinder")

//Ellipse Options
let Ell1 = DetailModel(cellImage: #imageLiteral(resourceName: "Ellipse_SurfaceArea"), cellTitle: "Surface Area of Ellipse")
let Ell2 = DetailModel(cellImage: #imageLiteral(resourceName: "Ellipse_Perimeter"), cellTitle: "Perimeter of Ellipse")
let Ell3 = DetailModel(cellImage: #imageLiteral(resourceName: "Ellipsoid_Volume"), cellTitle: "Volume of Ellipsoid")

//Analytical Options
let Ana1 = DetailModel(cellImage: #imageLiteral(resourceName: "Distance_XY"), cellTitle: "Distance Between 2 Points (x,y)")
let Ana2 = DetailModel(cellImage: #imageLiteral(resourceName: "Distance_XYZ"), cellTitle: "Distance Between 2 Points (x,y,z)")
let Ana3 = DetailModel(cellImage: #imageLiteral(resourceName: "LineSlope"), cellTitle: "Slope of a Line")













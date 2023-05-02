//
//  ViewController.swift
//  LaundryWeb
//
//  Created by Apple on 02/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imGheader: UIImageView!{
        didSet{
            imGheader.layer.cornerRadius = 20
            imGheader.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]

        }
    }
    @IBOutlet weak var contactBtn: UIButton!
    @IBOutlet weak var aboutbtn: UIButton!
    @IBOutlet weak var howWorkbtn: UIButton!
    @IBOutlet weak var stackVIew: UIStackView!
    @IBOutlet weak var orderBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        orderBtn.layer.cornerRadius = 5
        orderBtn.layer.borderWidth = 1
        var color1 = hexStringToUIColor(hex: "#d3d3d3")
        orderBtn.layer.borderColor = color1.cgColor
        
            
        howWorkbtn.layer.cornerRadius = 5
        howWorkbtn.layer.borderWidth = 1
        var color2 = hexStringToUIColor(hex: "#004871")
        howWorkbtn.layer.borderColor = color2.cgColor

        aboutbtn.layer.cornerRadius = 5
        aboutbtn.layer.borderWidth = 1
        var color3 = hexStringToUIColor(hex: "#d3d3d3")
        aboutbtn.layer.borderColor = color3.cgColor

        contactBtn.layer.cornerRadius = 5
        contactBtn.layer.borderWidth = 1
        var color4 = hexStringToUIColor(hex: "#004871")
        contactBtn.layer.borderColor = color4.cgColor

    }
    

    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}


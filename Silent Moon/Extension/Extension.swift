//
//  Extension.swift
//  Silent Moon
//
//  Created by Максим Неверовский on 22.01.2022.
//

import UIKit

extension UIFont{
    
    enum FontType: String{
        case bold = "-Bold"
        case regular = "-Regular"
        case medium = "-Medium"
        case light = "-Light"
    }
    
    static func helveticaHeue(_ type: FontType, size: CGFloat) -> UIFont{
        return UIFont(name: "HelveticaNeue\(type.rawValue)", size: size)!
    }
}

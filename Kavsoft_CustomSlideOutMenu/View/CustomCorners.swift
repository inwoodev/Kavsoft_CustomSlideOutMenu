//
//  CustomCorners.swift
//  Kavsoft_CustomSlideOutMenu
//
//  Created by 황인우 on 2022/07/22.
//

import SwiftUI

struct CustomCorners: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(
                width: radius,
                height: radius)
        )
        
        return Path(path.cgPath)
    }
}

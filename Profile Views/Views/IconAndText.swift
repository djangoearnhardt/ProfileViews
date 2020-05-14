//
//  IconAndText.swift
//  Profile Views
//
//  Created by Sam LoBue on 5/14/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct IconAndText: View {
    let iconName: String
    let text: String
    
    var body: some View {
        VStack {
        Image(systemName: iconName)
            Text(text).bodyStyle()
            
        }
        .background(RoundedRectangle(cornerRadius: 36, style: .continuous)
        .fill(Color.orange)
        .frame(width: 80, height: 80))

//    Capsule()
//        .fill(Color.green)
//        .frame(width: 100, height: 50)
//
//    Ellipse()
//        .fill(Color.blue)
//        .frame(width: 100, height: 50)
//
//    Circle()
//        .fill(Color.white)
//        .frame(width: 100, height: 50)
        
    }
}

struct IconAndText_Previews: PreviewProvider {
    static var previews: some View {
        IconAndText(iconName: "book.fill", text: "Education")
    }
}

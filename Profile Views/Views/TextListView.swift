//
//  TextListView.swift
//  Profile Views
//
//  Created by Sam LoBue on 5/9/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct TextListView: View {
    let bodyText: [String]?
    var horizontalSpacing: CGFloat = 5
    
    var body: some View {
        if bodyText == nil {
            return AnyView(EmptyView())
        } else {
            
            return AnyView(VStack(alignment: .leading, spacing: horizontalSpacing) {
                ForEach(bodyText!, id: \.self) { degree in
                    Text("\(degree)").bodyStyle()
                }
                }
            )
        }
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        TextListView(bodyText: ["The Streets", "West Virginia University"])
    }
}

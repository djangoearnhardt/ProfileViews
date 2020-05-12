//
//  TextListView.swift
//  Profile Views
//
//  Created by Sam LoBue on 5/9/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct TextListView: View {
    let details: [String]?
    
    var body: some View {
        if details == nil {
            return AnyView(EmptyView())
        } else {
            
            return AnyView(VStack(alignment: .leading, spacing: 5) {
                ForEach(details!, id: \.self) { degree in
                    Text("\(degree)").bodyStyle()
                }
                }
            )
        }
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        TextListView(details: ["The Streets", "West Virginia University"])
    }
}

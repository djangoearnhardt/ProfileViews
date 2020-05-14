//
//  CategoryAndDetails.swift
//  Profile Views
//
//  Created by Sam LoBue on 5/11/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct CategoryAndDetails: View {
    let category: String
    let bodyText: [String]?
    var verticalSpacing: CGFloat = 40
    var horizontalSpacing: CGFloat = 10
    
    var body: some View {
        
        return AnyView(
            HStack(alignment: .firstTextBaseline, spacing: verticalSpacing) {
                Text(category).bodyStyle()
                VStack {
                    TextListView(bodyText: bodyText, horizontalSpacing: horizontalSpacing)
                }
            }
        )
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryAndDetails(category: "Education", bodyText: ["Sunday Valley", "Sturgill Simpson", "Anime Movies"])
    }
}

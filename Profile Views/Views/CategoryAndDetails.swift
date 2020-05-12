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
    let details: [String]?
    var spacing: CGFloat = 40
    
    var body: some View {
        
        return AnyView(
            HStack(alignment: .firstTextBaseline, spacing: spacing) {
                Text(category).bodyStyle()
                VStack {
                    TextListView(details: details)
                }
            }
        )
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryAndDetails(category: "Education", details: ["Sunday Valley", "Sturgill Simpson", "Anime Movies"])
    }
}

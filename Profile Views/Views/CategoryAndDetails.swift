//
//  CategoryAndDetails.swift
//  Profile Views
//
//  Created by Sam LoBue on 5/11/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct CategoryAndDetails: View {
    let iconName: String
    let category: String
    let bodyText: [String]?
    var verticalSpacing: CGFloat = 40
    var horizontalSpacing: CGFloat = 10
    
    var body: some View {
        
        return AnyView(
            HStack(alignment: .center, spacing: verticalSpacing) {
                IconAndText(iconName: iconName, text: category)
                VStack {
                    TextListView(bodyText: bodyText, horizontalSpacing: horizontalSpacing)
                }
            }
        )
    }
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryAndDetails(iconName: "book.fill", category: "Education", bodyText: ["Sunday Valley", "Sturgill Simpson", "Anime Movies"])
    }
}

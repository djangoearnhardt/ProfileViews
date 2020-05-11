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
    
    var body: some View {
        if details == nil {
            return AnyView(EmptyView())
        } else {
        return AnyView(
            VStack {
            Text(category).bodyStyle()
                Text(details![0])
                Text(details![1])
            }
            )
    }
}
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryAndDetails(category: "Education", details: ["Sunday Valley", "Sturgill Simpson", "Anime Movies"])
    }
}

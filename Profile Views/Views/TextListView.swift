//
//  TextListView.swift
//  Profile Views
//
//  Created by Sam LoBue on 5/9/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct TextListView: View {
    let education: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ForEach(education, id: \.self) { degree in
                Text("\(degree)").bodyStyle()
            }
        }
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        TextListView(education: ["The Streets", "West Virginia University"])
    }
}

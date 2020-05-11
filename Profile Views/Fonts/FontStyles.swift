//
//  FontStyles.swift
//  Profile Views
//
//  Created by Sam LoBue on 5/11/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct FontStyles { }

// View Modifier Struct
struct BodyStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.quattroRegular.rawValue, size: 16))
    }
}

// Create extension on View to allow .bodyStyle call
extension View {
    func bodyStyle() -> some View {
        self.modifier(BodyStyle())
    }
}

struct HeadlineStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Fonts.quattroBold.rawValue, size: 20))
    }
}

// Create extension on View to allow .bodyStyle call
extension View {
    func headlineStyle() -> some View {
        self.modifier(HeadlineStyle())
    }
}

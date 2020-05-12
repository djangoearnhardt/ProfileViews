//
//  BusinessCardView.swift
//  Profile Views
//
//  Created by Sam LoBue on 5/11/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct BusinessCardView: View {
    let profile: Profile
    var imageHeightAndWidth: CGFloat = 100
    
    var body: some View {
        HStack(spacing: 20) {
            VStack {
                Image(profile.picture)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageHeightAndWidth, height: imageHeightAndWidth)
            }
            HStack(spacing: 5) {
                VStack(alignment: .leading, spacing: 20){
                    Text("Name: ").bodyStyle()
                    Text("Email: ").bodyStyle()
                    Text("Phone: ").bodyStyle()
                }
                VStack(alignment: .leading, spacing: 20) {
                    Text(profile.name).bodyStyle()
                    Text(profile.email).bodyStyle()
                    Text(profile.phoneNumber).bodyStyle()
                }
            }
        }
    }
}

struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        BusinessCardView(profile: Profile(
            name: "Sturgill Simpson",
            email: "outlaw@country.net",
            phoneNumber: "555-555-5555",
            education: ["The streets", "West Virginia University"],
            groups: ["Sunday Valley", "Sturgill Simpson", "Anime Movies"],
            recordedMusic: ["CD", "Tape cassette"],
            picture: "electricGuitar",
            studioPolicy: ["Practice makes perfect.", "Write a new song each week, or be prepared to improvise at the start of each lesson", "Don't take no slack from nobody"]))
    }
}

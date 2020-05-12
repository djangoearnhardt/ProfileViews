//
//  ProfileView.swift
//  Profile Views
//
//  Created by Sam LoBue on 5/9/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    let profile: Profile
    var body: some View {
        VStack {
            Text("Contact Info").headlineStyle()
            Spacer()
                .frame(height: 20)
            
            BusinessCardView(profile: profile)
            Spacer()
                .frame(height: 20)

                Text("Professional Bio").headlineStyle()
            Spacer()
                .frame(height: 20)
            
            VStack(alignment: .leading, spacing: 20) {
                HStack(alignment: .firstTextBaseline) {
                    if (profile.education != nil) {
                        CategoryAndDetails(category: "Education", details: profile.education)
                    }
                }
                HStack(alignment: .firstTextBaseline) {
                    if (profile.groups != nil) {
                        CategoryAndDetails(category: "Groups", details: profile.groups,spacing: 60)
                    }
                }
                HStack(alignment: .firstTextBaseline) {
                    if (profile.recordedMusic != nil) {
                        CategoryAndDetails(category: "Recorded\nMusic", details: profile.recordedMusic)
                    }
                }
            }
            Spacer()
                .frame(height: 20)
            VStack {
                Text("Studio Policy").headlineStyle()
            }
        }.background(Color(.lightGray))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(profile: Profile(
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


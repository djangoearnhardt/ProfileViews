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
        ScrollView {
        VStack {
            Text("Contact Info").headlineStyle()
            Spacer()
                .frame(height: 20)
            
            BusinessCardView(profile: profile)
            Spacer()
                .frame(height: 40)

                Text("Professional Bio").headlineStyle()
            Spacer()
                .frame(height: 20)
            
            VStack(alignment: .leading, spacing: 20) {
                HStack(alignment: .firstTextBaseline) {
                    if (profile.education != nil) {
                        CategoryAndDetails(iconName: "book.fill", category: "Education", bodyText: profile.education)
                    }
                }
                HStack(alignment: .firstTextBaseline) {
                    if (profile.groups != nil) {
                        CategoryAndDetails(iconName: "person.3.fill", category: "Groups", bodyText: profile.groups,verticalSpacing: 60)
                    }
                }
                HStack(alignment: .firstTextBaseline) {
                    if (profile.recordedMusic != nil) {
                        CategoryAndDetails(iconName: "music.note.list", category: "Recorded\nMusic", bodyText: profile.recordedMusic)
                    }
                }
            }
            Spacer()
                .frame(height: 40)
            VStack {
                Text("Studio Policy").headlineStyle()
                Spacer()
                .frame(height: 20)
                HStack(alignment: .firstTextBaseline) {
                    if (profile.studioPolicy != nil) {
                        CategoryAndDetails(iconName: "metronome", category: "", bodyText: profile.studioPolicy, horizontalSpacing: 20)
                    }
                }
            }
            Spacer()
        }
        .background(Color(.lightGray))
        }
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
            studioPolicy: ["Practice makes perfect.", "Write a new song each week, or be prepared to improvise at the start of each lesson", "Don't take no slack from nobody","Practice makes perfect.", "Write a new song each week, or be prepared to improvise at the start of each lesson", "Don't take no slack from nobody","Practice makes perfect.", "Write a new song each week, or be prepared to improvise at the start of each lesson", "Don't take no slack from nobody","Practice makes perfect.", "Write a new song each week, or be prepared to improvise at the start of each lesson", "Don't take no slack from nobody"]))
    }
}


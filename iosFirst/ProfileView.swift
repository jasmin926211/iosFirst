//
//  ProfileView.swift
//  iosFirst
//
//  Created by Jasmin Thummar on 27/03/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
         Image("profile_photo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    ProfileView()
}

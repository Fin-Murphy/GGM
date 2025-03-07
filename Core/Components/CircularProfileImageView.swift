//
//  CircularProfileImageView.swift
//  GangGangMedia
//
//  Created by Owner on 12/3/23.
//

import SwiftUI
import Kingfisher

struct CircularProfileImageView: View {
    let user: User
    
    var body: some View {
        if let imageUrl = user.profileImageUrl {
            KFImage(URL(string: imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width:80, height:80)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width:80, height:80)
                .clipShape(Circle())
                .foregroundColor(Color(.systemGray4))
        }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView(user: User.MOCK_USERS[0])
    }
}


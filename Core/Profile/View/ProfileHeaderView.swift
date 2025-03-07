//
//  ProfileHeaderView.swift
//  GangGangMedia
//
//  Created by Owner on 11/27/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    let user: User
    @State private var showEditProfile = false
    
    var body: some View {
        VStack (spacing: 10){
            //picture and stats
            HStack{
                CircularProfileImageView(user: user)
                
                Spacer()
                
                HStack(spacing: 8) {
                    
                    UserStatView(value: 3, title: "Followers")
                    
                    UserStatView(value: 15, title: "Following")
                    
                    UserStatView(value: 101001, title: "Posts")
                }
                
            }
            .padding(.horizontal)
            //.padding(.bottom, 8)
            
            
            //name and bio
            VStack (alignment: .leading, spacing: 4){
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            Button{
                if user.isCurrentUser {
                    showEditProfile.toggle()
                } else {
                    print("follow")
                }
            } label: {
                Text(user.isCurrentUser ? "edit profile" : "follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ? .black : .white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(user.isCurrentUser ? .gray : .clear, lineWidth:1)
                    )
                
            }
            
            //action button
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile) {
            EditProfileView(user: user)
        }
    }
}

//struct ProfileHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileHeaderView(user: User.MOCK_USERS[0])
//    }
//}


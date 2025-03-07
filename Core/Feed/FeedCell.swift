//
//  FeedCell.swift
//  GangGangMedia
//
//  Created by Owner on 10/4/23.
//

import SwiftUI

struct FeedCell: View {
    
    let post: Post
    
    
    var body: some View {
        
        VStack{
            //Image anmd username
            HStack{
                if let user = post.user {
                    
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold) 
                }
                
                Spacer()
            }
            .padding(.leading, 8)

            //.padding(.leading)
            
            Image(post.imageURL)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //Action Buttons
            HStack (spacing: 16){
                
                Button {
                    print("like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }

                Button {
                    print("comment post")
                } label: {
                    Image(systemName: "bubble.right")
                }
                
                Button {
                    print("share post")
                } label: {
                    Image(systemName: "paperplane")
                }

                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            //likes label
            Text("\(post.likes) likes")
                .font(.footnote)
                
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            //caption label
            HStack {
                Text("\(post.user?.username ?? "") ").fontWeight(.semibold) +
                Text(post.caption).font(.footnote)
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("6h ago")
            //.fontWeight(.semibold)
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            .foregroundColor(.gray)
        }
        
        
        
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POSTS[0])
    }
}

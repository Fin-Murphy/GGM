//
//  FeedView.swift
//  GangGangMedia
//
//  Created by Owner on 10/4/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                
                LazyVStack (spacing: 32){
                    ForEach(Post.MOCK_POSTS) {post in
                        
                        FeedCell(post: post)
                    
                    }
                    
                }.padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "figure.walk")
                        .imageScale(.large)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

//
//  SearchView.swift
//  GangGangMedia
//
//  Created by Owner on 10/5/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @StateObject var viewModel = SearchViewModel()
    
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack (spacing: 12){
                    ForEach(viewModel.users) {user in
                        
                        NavigationLink(value: user) {
                            HStack {
                                Image(/*user.profileImageURL ?? ""*/systemName: "person.circle")
                                    .resizable()
                                    .scaledToFill()
                                    .foregroundColor(.gray)
                                    .frame(width:40)
                                .clipShape(Circle())
                                
                                
                                VStack (alignment: .leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    
                                    
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                    
                                    
                                    //Text("FihMan12")
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        }
                        
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
                
                
                
            }
            .navigationDestination(for: User.self, destination: {user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

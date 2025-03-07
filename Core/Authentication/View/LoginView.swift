//
//  LoginView'.swift
//  GangGangMedia
//
//  Created by Owner on 10/6/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        

        NavigationStack{
            

            ///
            ///   F I G U R E   O U T   T H E   S T U P I D    S P A C E R S
            ///
            
            VStack{
                
                Spacer()
                
                Image(systemName: "figure.walk")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                
                //text fields
                VStack{
                    TextField("Enter your email", text: $viewModel.email )
                        .autocapitalization(.none)
                        .modifier(IGTextFieldModifier())
                       
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .modifier(IGTextFieldModifier())
                    
                    
                    Button {
                        print("forgot password")
                    } label: {
                        Text("Forgot Password")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.top)
                        .padding(.trailing, 28)
                        
                    } // FORGOT PASSWORD
                    .frame(maxWidth: .infinity, alignment: .trailing)

                        
                        
                        
                    Button {
                        Task { try await viewModel.signIn() }
                    } label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width:360,height:44)
                            .background(Color(.systemBlue))
                            .cornerRadius(8)
                            
                
                    }.padding(.vertical) //LOGIN
                    
                    
                    HStack{
                        
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height:0.5)
                            
                        Text("OR")
                            .font(.footnote)
                            .fontWeight(.semibold)

                        
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height:0.5)
                    } // OR divider
                    .foregroundColor(.gray)

                    Spacer()
                    
                    Divider()
                    
                    NavigationLink {
                        AddEmailView()
//                            .environmentObject(registrationViewModel)
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack{
                            Text("Dont have an account?")

                            Text("Sign Up")
                                .fontWeight(.semibold)
                        }
                        .font(.footnote)

                    }
                    .padding(.vertical, 16)


                    
                }
                
                
            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

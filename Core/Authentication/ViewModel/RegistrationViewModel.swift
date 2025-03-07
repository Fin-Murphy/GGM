//
//  RegistrationViewModel.swift
//  GangGangMedia
//
//  Created by Owner on 12/1/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
//    @MainActor
    func createUser() async throws{
        try await AuthService.shared.createUser(email: email, password: password, username: username)
        
        username = ""
        email = ""
        password = ""
    }
}



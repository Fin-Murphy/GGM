//
//  LoginViewModel.swift
//  GangGangMedia
//
//  Created by Owner on 12/1/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
 
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}


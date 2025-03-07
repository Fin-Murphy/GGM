//
//  User.swift
//  GangGangMedia
//
//  Created by Owner on 10/13/23.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
  
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        
        .init(id: NSUUID().uuidString, username: "The_Fishy_Man", profileImageUrl: nil, fullname: "Fish n", bio: "345345", email: "testuser@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Not fish man", profileImageUrl: nil, fullname: "not tn", bio: "totally a cat", email: "testuser@gmail.com"),
        .init(id: NSUUID().uuidString, username: "fisher bioy", profileImageUrl: nil, fullname: nil, bio: "flip flop", email: "testuser@gmail.com"),
        .init(id: NSUUID().uuidString, username: "corly fry", profileImageUrl: nil, fullname: "fishing pole", bio: "blegh", email: "testuser@gmail.com"),
        .init(id: NSUUID().uuidString, username: "not that", profileImageUrl: nil, fullname: "sketch", bio: "very sketch", email: "testuser@gmail.com"),
        .init(id: NSUUID().uuidString, username: "a fish", profileImageUrl: nil, fullname: "sharky", bio: "hum dum dum dum", email: "testuser@gmail.com")
    ]
    
}

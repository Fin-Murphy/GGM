//
//  Post.swift
//  GangGangMedia
//
//  Created by Owner on 11/13/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageURL: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "I heart NY",
            likes: 100,
            imageURL: "Testp1",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
                ),
        
        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Theis might be a picture",
            likes: 4230,
            imageURL: "Testp2",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
                ),
        
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "AAAAAAA",
            likes: 10000,
            imageURL: "Testp3",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
                ),
    
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Every day we inch closer to despair",
            likes: 1,
            imageURL: "Testp4",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
                ),
        
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "Regurgitated mashed potato",
                likes: 40,
                imageURL: "Testp5",
                timestamp: Date(),
                user: User.MOCK_USERS[4]
                    )
    ]
}





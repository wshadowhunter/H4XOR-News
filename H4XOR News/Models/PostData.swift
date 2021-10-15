//
//  PostData.swift
//  H4XOR News
//
//  Created by Hao Sun on 10/15/21.
//

import Foundation

struct Results: Codable {
    let hits: Array<Post>
}

struct Post: Codable, Identifiable{
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}

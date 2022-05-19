//
//  data.swift
//  test
//
//  Created by imac44 on 16.05.2022.
//

import UIKit

struct Data: Decodable {
    let userId: Int
    let imageName: Int
    let title: String
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case imageName = "id"
        case text = "body"
        case userId, title
    }
}

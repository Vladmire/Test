//
//  DataAPI.swift
//  test
//
//  Created by imac44 on 16.05.2022.
//

import Foundation

class DataAPI {
    
    static func getData() -> [Data] {
        let data: [Data] = [
            Data(imageName: "circle", title: "title", text: "text"),
            Data(imageName: "circle", title: "title", text: "text"),
            Data(imageName: "circle", title: "title", text: "text"),
            Data(imageName: "circle", title: "title", text: "text")
        ]
        return data
    }
    
    
    
}

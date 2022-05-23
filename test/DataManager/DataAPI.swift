//
//  DataAPI.swift
//  test
//
//  Created by imac44 on 16.05.2022.
//

import Foundation

class DataAPI {
    
    static private func readDataFromFile() -> String {
        var rawData: String = ""
        
        if let filePath = Bundle.main.path(forResource: "file", ofType: "txt") {
            do {
                rawData = try String(contentsOfFile: filePath, encoding: .utf8)
            } catch(let error) {
                print("request error: \(error)")
            }
        }
        return rawData
    }
    
    static func decodeData() -> [Data] {
        let rawData = readDataFromFile().data(using: .utf8)!
        let decoder = JSONDecoder()
        var data: [Data] = []
        do {
            data = try decoder.decode([Data].self, from: rawData)
        } catch(let error) {
            print("request error: \(error)")
        }
        return data
    }
}

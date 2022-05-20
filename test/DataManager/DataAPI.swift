//
//  DataAPI.swift
//  test
//
//  Created by imac44 on 16.05.2022.
//

import Foundation

class DataAPI {
    
    static func readDataFromFile() -> String {
        var rawData: String = ""
        if let filePath = Bundle.main.path(forResource: "file", ofType: "txt") {
            
            do {
                rawData = try String(contentsOfFile: filePath, encoding: .utf8)
                print("this is file data: \(rawData)")
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
    
    
    
    
    
    
//    enum DataAPIError: Error {
//        case invalidURL
//        case missingdata
//    }
//
//    static func fetchData(completion: @escaping (Result<[Data], Error>) -> Void) {
//
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
//            completion(.failure(DataAPIError.invalidURL))
//            return
//        }
//        URLSession.shared.dataTask(with: url) {
//            data, response, error in
//            if let error = error {
//                completion(.failure(error))
//                return
//            }
//            guard let data = data else {
//                completion(.failure(DataAPIError.missingdata))
//                return
//            }
//            do {
//                let dataResult = try JSONDecoder().decode([Data].self, from: data)
//                completion(.success(dataResult))
//            } catch {
//                completion(.failure(error))
//            }
//        }.resume()
//    }
//
//    static func obtaindata() async throws -> [Data] {
//
//        let data: [Data] = try await withCheckedThrowingContinuation({continuation in
//
//            fetchData { result in
//                switch result {
//                case .success(let dataResult):
//                    continuation.resume(returning: dataResult)
//                    break
//                case .failure(let error):
//                    continuation.resume(throwing: error)
//                    break
//                }
//            }
//        })
//
//        return data
//    }
}

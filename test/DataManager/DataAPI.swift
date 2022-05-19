//
//  DataAPI.swift
//  test
//
//  Created by imac44 on 16.05.2022.
//

import Foundation

class DataAPI {
    
    
    static let shared = DataAPI()
    private let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    
    func callAPI(completion: @escaping (Result<[Data], Error>) -> Void) {
        let task = URLSession.shared.dataTask(with: url) {
            data, response, error in
            if let error = error {
                completion(.failure(error))
            }
            
            if let fetchedData = data {
                do {
                    let datas = try JSONDecoder().decode([Data].self, from: fetchedData)
                    completion(.success(datas))
                } catch let decoderError{
                    completion(.failure(decoderError))
                }
            }
        }
        task.resume()
    }
    
    func getData() -> [Data] {
        var data: [Data] = []
        
        callAPI { result in
            switch result {
            case .success(let datas):
                data = datas
                break
            case .failure(let error):
                print(error)
                break
            }
        }
        if data.isEmpty {
            print(0)
        }
        return data
    }
}

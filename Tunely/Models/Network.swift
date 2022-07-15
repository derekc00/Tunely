//
//  Network.swift
//  Flix
//
//  Created by Derek Chang on 12/31/20.
//  Copyright © 2020 Derek Chang. All rights reserved.
//

import Foundation

class Network {
    
    //
    // MARK: - Class Methods
    //
    static func loadJSONFile<T: Decodable>(from filename: String,
                                           type: T.Type,
                                           completionHandler: @escaping (T?, NetworkError?) -> Void) {

        guard let url = Bundle.main.url(forResource: filename, withExtension: "json") else {
            completionHandler(nil, .invalidUrl)
            return
        }
        
        let request = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            let statusCode = (response as? HTTPURLResponse)?.statusCode ?? 200
            
            if statusCode != 200 {
              completionHandler(nil, .requestError)
              return
            }
            
            do {
                if let jsonData = data {
                    let decoder = JSONDecoder()
                    let typedObject: T? = try decoder.decode(T.self, from: jsonData)
                    completionHandler(typedObject, nil)
                }
            } catch {
                print(error)
                completionHandler(nil, .parseError)
            }
        }
      
      dataTask.resume()
    }
}

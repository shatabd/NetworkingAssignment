//
//  Networking.swift
//  NetworkingAssignment
//
//  Created by Macmini-13 on 20/09/2022.
//

import Foundation

class Networking {
    
    func apiCall(url: String, completion: @escaping (_ data: [Article], _ error: String?) -> Void) {
            
            var components = URLComponents(string: API.URL)
            components?.queryItems = [URLQueryItem(name: "apiKey", value: "eedc92368f91440cae7498e20eefc92c"), URLQueryItem(name: "q", value: "tesla")]
            guard let NewsComp = components, let url = NewsComp.url else {
                return
            }
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "GET"
            let task = URLSession.shared.dataTask(with: urlRequest) {
                data, response, error in
                
                if let data = data {
                    do {
                        let encodedData = try JSONDecoder().decode(News.self, from: data)
                        completion(encodedData.articles, nil)
                    }
                    catch (let error) {
                        completion([], error.localizedDescription)
                    }
                }
                if let error = error {
                    completion([], error.localizedDescription)
                }
                
            }
            task.resume()
            
        }
    
}



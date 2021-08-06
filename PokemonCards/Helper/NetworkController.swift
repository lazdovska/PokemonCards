//
//  NetworkController.swift
//  PokemonCards
//
//  Created by kristine.lazdovska on 06/08/2021.
//

import Foundation

class NetworkController {
    
    enum HTTPMethod: String {
        case get = "GET"
        case post = "POST"
        case put = "PUT"
        case delete = "DELETE"
    }
    
    
    static func performRequest(for url: URL,
                               httpMethod: HTTPMethod,
                               urlParams: [String: String]? = nil,
                               body: Data? = nil,
                               completion: ((Data?, Error?) -> Void)? = nil ) {
        
        let requestURL = self.url(byAdding: urlParams, to: url)
        var request = URLRequest(url: requestURL)
        request.httpMethod = httpMethod.rawValue
        request.httpBody = body
        
        
        let dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            completion?(data, error)
        }
        
        dataTask.resume()
    }
    
    static func url(byAdding params: [String: String]?, to url: URL) ->URL {
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        
        components?.queryItems = params?.compactMap{
            URLQueryItem(name: $0.key, value: $0.value)
        }
        guard let url = components?.url else {
            fatalError("URL components is nil")
        }
        return url
    }
}


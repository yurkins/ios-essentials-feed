//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Iurie Manea on 29.01.2024.
//

import Foundation

public class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public enum Result: Equatable {
        case succes([FeedItem])
        case failure(RemoteFeedLoader.Error)
    }
    
    public init(url: URL = URL(string: "http://a-url.com")!, client: HTTPClient) {
        self.client = client
        self.url = url
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { result in
            switch result {
            case let .succes(data, response):
                completion(FeedItemsMapper.map(data, from: response))
            case .failure:
                completion(.failure(.connectivity))
            }
        }
    }
}

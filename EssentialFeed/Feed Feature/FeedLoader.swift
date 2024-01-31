//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Iurie Manea on 29.01.2024.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case succes([FeedItem])
    case failure(Error)
}

extension LoadFeedResult: Equatable where Error: Equatable {}

public protocol FeedLoader {
    associatedtype Error: Swift.Error
    func load(completion: @escaping (LoadFeedResult<Error>) -> Void)
}

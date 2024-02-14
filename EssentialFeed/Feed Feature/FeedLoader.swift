//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Iurie Manea on 29.01.2024.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}

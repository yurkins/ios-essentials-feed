//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Iurie Manea on 29.01.2024.
//

import Foundation

public struct FeedItem: Codable, Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}

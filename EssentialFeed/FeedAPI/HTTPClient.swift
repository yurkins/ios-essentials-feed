//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Iurie Manea on 30.01.2024.
//

import Foundation

public enum HTTPClientResult {
    case succes(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}

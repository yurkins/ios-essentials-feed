//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Iurie Manea on 29.01.2024.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requesteURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requesteURL)
    }

}

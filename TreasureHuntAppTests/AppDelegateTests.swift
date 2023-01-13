//
//  AppDelegateTests.swift
//  TreasureHuntAppTests
//
//  Created by Tommy on 1/12/23.
//

import XCTest
@testable import TreasureHuntApp

final class AppDelegateTests: XCTestCase {

    func googleApiKeyTests() throws {
        
        // test whether the googleApiKey is correct
        let Ap = AppDelegate()
        XCTAssertEqual(Ap.googleApiKey, "AIzaSyBmuv-_QM0m8wKNKpZOS6q_-2bcomI44c0")
    }

}

//
//  HomepageTests.swift
//  TreasureHuntAppTests
//
//  Created by Tommy on 1/12/23.
//

import XCTest
@testable import TreasureHuntApp

final class HomepageTests: XCTestCase {
    
    var treasure1Button: XCTestExpectation!
    var treasure2Button: XCTestExpectation!
    var treasure3Button: XCTestExpectation!

    func treasure1ButtonTest() throws {
        
        // check if controller has UIButton property
        treasure1Button = expectation(description: "treasure1Button recieved")

        let buttonTests1 = UIButton()
        buttonTests1.addTarget(self, action: #selector(Homepage.Treasure1page), for: .touchUpInside)

        buttonTests1.sendActions(for: .touchUpInside)

        wait(for: [treasure1Button], timeout: 0.1)        
    }
    
    func treasure2ButtonTest() throws {
        
        // check if controller has UIButton property
        treasure2Button = expectation(description: "treasure2Button recieved")

        let buttonTests2 = UIButton()
        buttonTests2.addTarget(self, action: #selector(Homepage.Treasure2page), for: .touchUpInside)

        buttonTests2.sendActions(for: .touchUpInside)

        wait(for: [treasure2Button], timeout: 0.1)
    }
    
    func treasure3ButtonTest() throws {
        
        // check if controller has UIButton property
        treasure3Button = expectation(description: "treasure3Button recieved")

        let buttonTests3 = UIButton()
        buttonTests3.addTarget(self, action: #selector(Homepage.Treasure3page), for: .touchUpInside)

        buttonTests3.sendActions(for: .touchUpInside)

        wait(for: [treasure3Button], timeout: 0.1)
    }
}

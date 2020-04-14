//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by David Wright on 4/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {

    func testPlacingXOnEmptySquare() {
        
        var board = GameBoard()
        
        // XCTAssert which would crash in debug/testing
        // Place X on an empty square (0,0)
        XCTAssertNoThrow(try board.place(mark: .x, on: (0,0)))
        //XCTAssertThrowsError(try board.place(mark: .x, on: (0,0)))
        
        // If the X was placed, I want to fetch the mark on (0,0)
        let markOnEmptySquare = board[(0,0)]!
        
        // If I could fetch the mark, I want to make sure that mark is an X
        XCTAssert(markOnEmptySquare == .x, "The mark you just placed is different than the mark requested")
    }

}

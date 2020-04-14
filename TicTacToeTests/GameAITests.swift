//
//  GameAITests.swift
//  TicTacToeTests
//
//  Created by David Wright on 4/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameAITests: XCTestCase {

    func testWinningConditionForXTopRow() {
        winningConditionForTopRow(mark: .x)
    }
    
    func testWinningConditionForOTopRow() {
        winningConditionForTopRow(mark: .o)
    }

    func winningConditionForTopRow(mark: GameBoard.Mark) {
        var board = GameBoard()
        
        // Place Marks on the top row.
        XCTAssertNoThrow(try board.place(mark: mark, on: (0,0)))
        XCTAssertNoThrow(try board.place(mark: mark, on: (1,0)))
        XCTAssertNoThrow(try board.place(mark: mark, on: (2,0)))
        
        // Mark should win.
        let markPlayerDidWin = game(board: board, isWonBy: mark)
        XCTAssert(markPlayerDidWin)
    }
    
    func testTopRowFilledNoWin() {
        
    }
    
}

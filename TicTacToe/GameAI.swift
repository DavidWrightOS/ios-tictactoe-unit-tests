//
//  GameAI.swift
//  TicTacToe
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

func game(board: GameBoard, isWonBy player: GameBoard.Mark) -> Bool {
    
    // Code the multiple ways a user can win.
    // - 3 in a row
    // - 3 in a column
    // - 2 diagonals
    
    // Return whether all top positions have the same mark.
    // X X X
    // - - -
    // - - -
    //
    // X X X
    // - - -
    // - - -
    
    //    if player == board[(0, 0)],
    //        player == board[(1, 0)],
    //        player == board[(2, 0)] {
    //        return true
    //    }
    
    // Get the top coordinates.
    let topPositions = [(0, 0), (1, 0), (2, 0)]
    
    // Transform the top coordinates to Marks.
    let topMarks = topPositions.map { topPosition -> GameBoard.Mark? in
        return board[topPosition]
    }
    
    // Check all top marks.
    var playerDidWin = true
    for possibleMark in topMarks {
        
        if let mark = possibleMark {
            // There is a mark.
            if mark != player {
                playerDidWin = false
            }
            
        } else {
            // If the square is empty, player did not win.
            playerDidWin = false
            break
        }
    }
    
    return playerDidWin
}

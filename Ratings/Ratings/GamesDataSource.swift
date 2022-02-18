//
//  GamesDataSource.swift
//  Ratings
//
//  Created by DAM07 on 15/2/22.
//
import UIKit

class GamesDataSource: NSObject {
  // MARK: - Properties
  var games = [
    "Angry Birds",
    "Chess",
    "Russian Roulette",
    "Spin the Bottle",
    "Texas Hold'em Poker",
    "Tic-Tac-Toe"
  ]

  var selectedGame: String? {
    didSet {
      if let selectedGame = selectedGame,
        let index = games.firstIndex(of: selectedGame) {
        selectedGameIndex = index
      }
    }
  }

  var selectedGameIndex: Int?

  // MARK: - Datasource Methods
  func selectGame(at indexPath: IndexPath) {
    selectedGame = games[indexPath.row]
  }

  func numberOfGames() -> Int {
    games.count
  }

  func gameName(at indexPath: IndexPath) -> String {
    games[indexPath.row]
  }
}

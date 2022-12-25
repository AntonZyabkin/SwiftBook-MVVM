//
//  NetworkManager.swift
//  MVVM3
//
//  Created by Anton Zyabkin on 25.12.2022.
//

import Foundation

final class NetworkManager: NSObject {
    func fetchMovies(complition: ([String]) -> ()) {
        complition(["movie1", "movie2", "movie3"])
    }
}

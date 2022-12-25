//
//  ViewModel.swift
//  MVVM3
//
//  Created by Anton Zyabkin on 25.12.2022.
//

import Foundation

final class ViewModel: NSObject {
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var  movies: [String]?
    
    func fetchMovies(complition: @escaping () -> ()) {
        networkManager.fetchMovies { [weak self] movies in
            self?.movies = movies
            complition()
        }
    }
    
    func numberOfRowsInSection() -> Int {
        return movies?.count ?? 0
    }
    
    func titleForCell(atIndexPath indexPath: IndexPath) -> String {
        guard let movies = movies else { return ""}
        return movies[indexPath.row]
    }
}

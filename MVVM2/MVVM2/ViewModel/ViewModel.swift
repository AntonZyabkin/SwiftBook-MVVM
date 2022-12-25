//
//  ViewModel.swift
//  MVVM2
//
//  Created by Anton Zyabkin on 25.12.2022.
//

import Foundation


final class ViewModel: TableViewViewModelType {

    private var selectedIndexPath: IndexPath?
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Max", secondName: "Kolby", age: 21),
        Profile(name: "Mark", secondName: "Salmon", age: 53),
        ]
    
    func cellViewModel(forIndexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[forIndexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil}
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}

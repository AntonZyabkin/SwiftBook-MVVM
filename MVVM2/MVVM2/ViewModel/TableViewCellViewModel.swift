//
//  TableViewCellViewModel.swift
//  MVVM2
//
//  Created by Anton Zyabkin on 25.12.2022.
//

import Foundation

final class TableViewCellViewModel: TableViewCellViewModelType {
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(profile.age)
    }
    private var profile: Profile
    
    init(profile: Profile) {
        self.profile = profile
    }
}

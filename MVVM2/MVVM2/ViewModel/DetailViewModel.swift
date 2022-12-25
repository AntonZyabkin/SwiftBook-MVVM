//
//  DetailViewModel.swift
//  MVVM2
//
//  Created by Anton Zyabkin on 25.12.2022.
//

import Foundation

final class DetailViewModel: DetailViewModelType {
    var description: String {
        return String("\(profile.secondName) \(profile.name) is \(String(profile.age)) old")
    }
    
    private var profile: Profile
    var age: Box<String?> = Box(nil)
    init(profile: Profile) {
        self.profile = profile
    }
}

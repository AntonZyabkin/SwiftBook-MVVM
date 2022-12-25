//
//  ViewModel.swift
//  MVVM1
//
//  Created by Anton Zyabkin on 25.12.2022.
//

import Foundation

class ViewModel {
    
    private var profile = Profile(name: "John", secondName: "Smith", age: 33)
    
    var secomdName: String {
        return profile.secondName
    }
    
    var name: String {
        return profile.name
    }
    
    var age: String {
        return String(describing: profile.age)
    }
}

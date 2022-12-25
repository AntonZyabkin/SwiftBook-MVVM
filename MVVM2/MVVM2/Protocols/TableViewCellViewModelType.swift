//
//  TableViewCellViewModelType.swift
//  MVVM2
//
//  Created by Anton Zyabkin on 25.12.2022.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}

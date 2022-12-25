//
//  TableViewCell.swift
//  MVVM2
//
//  Created by Anton Zyabkin on 25.12.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var age: UILabel!

        
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else {
                return
            }
            fullName.text = viewModel.fullName
            age.text = viewModel.age
        }
    }
}

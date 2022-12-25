//
//  ViewController.swift
//  MVVM1
//
//  Created by Anton Zyabkin on 25.12.2022.
//

import UIKit

class ViewController: UIViewController {

        
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!

    var viewModel: ViewModel! {
        didSet {
            self.nameLabel.text = viewModel.name
            self.ageLabel.text = viewModel.age
            self.secondNameLabel.text = viewModel.secomdName

        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
        view.backgroundColor = .systemGray
    }
}


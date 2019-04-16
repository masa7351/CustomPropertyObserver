//
//  ViewController.swift
//  CustomPropertyObserver
//
//  Created by Masanao Imai on 2018/07/27.
//  Copyright © 2018年 Masanao Imai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = ViewModel()
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func coutupAction(_ sender: Any) {
        viewModel.counter = viewModel.counter + 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.observe(viewModel.counter) { [weak self] counter in
            //            self?.counterLabel!.text = counter
            self?.counterLabel.text = "\(counter)"
        }

    }
}


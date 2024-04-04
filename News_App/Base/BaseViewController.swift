//
//  BaseViewController.swift
//  News_App
//
//  Created by Eldar Gaiypov on 4/4/24.
//

import UIKit
import SnapKit

class BaseViewController: ViewController {
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        addTargets()
        setupViews()
        setupConstraints()
    }
    
    func addTargets() {}
    
    func setupViews() {}
    
    func setupConstraints() {}
}

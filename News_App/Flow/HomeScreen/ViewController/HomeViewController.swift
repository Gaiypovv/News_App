//
//  HomeViewController.swift
//  News_App
//
//  Created by Eldar Gaiypov on 4/4/24.
//

import UIKit
import SnapKit

class HomeViewController: BaseViewController {
    
    private let contentView = HomeView()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        addTargets()
        setupViews()
        setupConstraints()
    }
    
    override func addTargets() {}
    
    override func setupViews() {
        view.addSubview(contentView)
    }
    
    override func setupConstraints() {
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}

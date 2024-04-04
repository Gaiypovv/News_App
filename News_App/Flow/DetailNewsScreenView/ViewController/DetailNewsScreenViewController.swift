//
//  DetailNewsScreenViewController.swift
//  News_App
//
//  Created by Eldar Gaiypov on 5/4/24.
//

import UIKit
import SnapKit

class DetailNewsScreenViewController: BaseViewController {
    
    private let contentView = DetailNewsScreenView()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        addTargets()
        setupViews()
        setupConstraints()
    }
    
    override func addTargets() {
        contentView.backButton.addTarget(self, action: #selector(exiteButtonPressed), for: .touchUpInside)
    }
    
    @objc func exiteButtonPressed() {
           dismiss(animated: true,completion: nil)
       }
    
    override func setupViews() {
        view.addSubview(contentView)
    }
    
    override func setupConstraints() {
        contentView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
}

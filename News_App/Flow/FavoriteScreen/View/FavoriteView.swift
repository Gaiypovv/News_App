//
//  FavoriteView.swift
//  News_App
//
//  Created by Eldar Gaiypov on 4/4/24.
//

import UIKit
import SnapKit

class FavoriteView: BaseView {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
        
    override func setupViews() {
        backgroundColor = .blue
    }
    override func setupConstraints() {}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

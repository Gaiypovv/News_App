//
//  FavoriteView.swift
//  News_App
//
//  Created by Eldar Gaiypov on 4/4/24.
//

import UIKit
import SnapKit

class FavoriteView: BaseView {
    
    lazy var tableView : UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        tableView.register(FavoriteCustomCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
        setupConstraints()
    }
        
    override func setupViews() {
        addSubview(tableView)
    }
    
    override func setupConstraints() {
        
        tableView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 30))
            make.leading.trailing.equalToSuperview().inset(flexibleWidth(to: 16))
            make.width.equalTo(343)
            make.bottom.equalToSuperview().inset(flexibleHeight(to: 83))
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

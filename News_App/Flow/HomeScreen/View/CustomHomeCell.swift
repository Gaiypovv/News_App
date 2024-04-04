//
//  CustomHomeCell.swift
//  News_App
//
//  Created by Eldar Gaiypov on 5/4/24.
//

import UIKit
import SnapKit

class CustomHomeCell : UITableViewCell {
    
    private lazy var articleLabel : UILabel = {
        let label = UILabel()
        label.text = "Политика"
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    private lazy var postImage : UIImageView = {
           let image = UIImageView()
           image.image = UIImage(named: "image1")
           image.contentMode = .scaleAspectFit
           return image
       }()
    
    private lazy var newsLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.text = "Iasdasdasddasfsafasfasfsdafsafdsafsf ajfajsf jaksjfdlkajsdfkjaslkjdfa jalkfjlaksjdflaj..."
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 2
        return label
    }()

    private lazy var likeButton : UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "like"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(articleLabel)
        addSubview(postImage)
        addSubview(newsLabel)
        addSubview(likeButton)
    }
    
    func setupConstraints(){
        
        postImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 5))
            make.leading.equalToSuperview()
            make.width.equalTo(flexibleWidth(to: 90))
            make.bottom.equalToSuperview().offset(flexibleHeight(to: 15))
        }
        
        articleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 20))
            make.leading.equalTo(postImage.snp.trailing).offset(flexibleWidth(to: 10))
        }
        
        newsLabel.snp.makeConstraints { make in
            make.top.equalTo(articleLabel.snp.bottom).offset(flexibleHeight(to: 5))
            make.leading.equalTo(postImage.snp.trailing).offset(flexibleWidth(to: 10))
            make.trailing.equalToSuperview().inset(flexibleWidth(to: 40))
        }
   
        likeButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(flexibleHeight(to: 45))
            make.trailing.equalToSuperview().inset(flexibleWidth(to: 5))
            make.width.height.equalTo(25)
        }
    }
}

//
//  DetailNewsScreenView.swift
//  News_App
//
//  Created by Eldar Gaiypov on 5/4/24.
//

import UIKit
import SnapKit

class DetailNewsScreenView: BaseView {
    
//    private lazy var articleLabel : UILabel = {
//        let label = UILabel()
//        label.text = "Политика"
//        label.font = .systemFont(ofSize: 14)
//        return label
//    }()
    lazy var backButton : UIButton = {
           let button = UIButton()
           button.setImage(UIImage(named: "BackIcon"), for: .normal)
           return button
       }()
    
    private lazy var postImage : UIImageView = {
           let image = UIImageView()
           image.image = UIImage(named: "image1")
           image.contentMode = .scaleAspectFit
           return image
       }()
    
    lazy var bottomSheet: CustomBottomSheet = {
          let view = CustomBottomSheet()
          
          return view
      }()
//    private lazy var newsLabel : UILabel = {
//        let label = UILabel()
//        label.font = .systemFont(ofSize: 15)
//        label.text = "Iasdasdasddasfsafasfasfsdafsafdsafsf ajfajsf jaksjfdlkajsdfkjaslkjdfa jalkfjlaksjdflaj..."
//        label.lineBreakMode = .byWordWrapping
//        label.numberOfLines = 2
//        return label
//    }()
//
    private lazy var likeButton : UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "like"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor = .gray
        setupViews()
        setupConstraints()
    }
        
    override func setupViews() {
//        addSubview(articleLabel)
        addSubview(postImage)
        addSubview(bottomSheet)
        addSubview(backButton)
//        addSubview(newsLabel)
        addSubview(likeButton)
    }
    
    override func setupConstraints() {
        postImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 30))
            make.leading.trailing.equalToSuperview()
            make.width.equalTo(flexibleWidth(to: 375))
            make.height.equalTo(flexibleHeight(to: 489))
//            make.bottom.equalToSuperview().offset(flexibleHeight(to: 15))
        }
        
        bottomSheet.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(flexibleHeight(to: 171))
            make.top.equalToSuperview().offset(UIScreen.main.bounds.height)
        }
        
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 45))
            make.leading.equalToSuperview().inset(flexibleWidth(to: 16))
            make.width.height.equalTo(40)
        }
//        articleLabel.snp.makeConstraints { make in
//            make.top.equalToSuperview().offset(flexibleHeight(to: 20))
//            make.leading.equalTo(postImage.snp.trailing).offset(flexibleWidth(to: 10))
//        }
//        
//        newsLabel.snp.makeConstraints { make in
//            make.top.equalTo(articleLabel.snp.bottom).offset(flexibleHeight(to: 5))
//            make.leading.equalTo(postImage.snp.trailing).offset(flexibleWidth(to: 10))
//            make.trailing.equalToSuperview().inset(flexibleWidth(to: 40))
//        }
//   
        likeButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(flexibleHeight(to: 45))
            make.trailing.equalToSuperview().inset(flexibleWidth(to: 15))
            make.width.height.equalTo(40)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

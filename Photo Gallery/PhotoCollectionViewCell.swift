//
//  PhotoCollectionViewCell.swift
//  Photo Gallery
//
//  Created by Irfan on 31/10/26.
//

import Foundation
import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PhotoCollectionViewCell"
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    func setupUI() {
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12
        
        titleLabel.font = .systemFont(ofSize: 14, weight: .medium)
        titleLabel.textAlignment = .center
        
        contentView.addSubview(imageView)
        contentView.addSubview(titleLabel)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

                    imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
                    imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                    imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                    imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),

                    titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
                    titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                    titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                    titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
                ])
        
    }
    
    func configure(with photo: Photo) {
        imageView.image = photo.image
        titleLabel.text = photo.title
    }
}


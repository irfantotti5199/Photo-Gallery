//
//  PhotoDetailViewController.swift
//  Photo Gallery
//
//  Created by Irfan on 31/10/26.
//

import Foundation
import UIKit

class PhotoDetailViewController: UIViewController {
    private let photo: Photo
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    
    init(photo: Photo) {
        self.photo = photo
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = photo.title
        view.backgroundColor = .systemBackground
        setupUI()
    }
    
    func setupUI() {
        imageView.image = photo.image
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        titleLabel.text = photo.title
        titleLabel.font = .boldSystemFont(ofSize:20)
        titleLabel.textAlignment = .center
        
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(
                            equalTo: view.safeAreaLayoutGuide.topAnchor,
                            constant: 20
                        ),
                        imageView.leadingAnchor.constraint(
                            equalTo: view.leadingAnchor,
                            constant: 16
                        ),
                        imageView.trailingAnchor.constraint(
                            equalTo: view.trailingAnchor,
                            constant: -16
                        ),
                        imageView.bottomAnchor.constraint(
                            equalTo: titleLabel.topAnchor,
                            constant: -20
                        ),

                        titleLabel.leadingAnchor.constraint(
                            equalTo: view.leadingAnchor,
                            constant: 16
                        ),
                        titleLabel.trailingAnchor.constraint(
                            equalTo: view.trailingAnchor,
                            constant: -16
                        ),
                        titleLabel.bottomAnchor.constraint(
                            equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                            constant: -20
                        )
        ])
    }
}

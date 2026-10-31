//
//  GalleryViewController.swift
//  Photo Gallery
//
//  Created by Irfan on 31/10/26.
//

import Foundation
import UIKit

class GalleryViewController: UIViewController {
    
    private var collectionView: UICollectionView!
    
    private let photos = [
        Photo(id: 1, title: "Nature", image: UIImage(named: "photo1")!),
        Photo(id: 2, title: "Mountains", image: UIImage(named:"photo2")!),
        Photo(id: 3, title: "Mountains", image: UIImage(named:"photo3")!),
        Photo(id: 4, title: "Mountains", image: UIImage(named:"photo4")!),
        Photo(id: 5, title: "Mountains", image: UIImage(named:"photo5")!),
        Photo(id: 6, title: "Mountains", image: UIImage(named:"photo6")!),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Photo Gallery"
        view.backgroundColor = .systemBackground
        setupCollectionView()
        
    }
    
    func setupCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 8
        layout.minimumLineSpacing = 8
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate( [
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
        
        collectionView.register(PhotoCollectionViewCell.self, forCellWithReuseIdentifier: PhotoCollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
}

extension GalleryViewController:  UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoCollectionViewCell.identifier, for: indexPath) as! PhotoCollectionViewCell
        let photo = photos[indexPath.item]
        cell.configure(with: photo)
        return cell
    }
}

extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spacing: CGFloat = 8
        let columns : CGFloat = 3
        let totalSpacing = spacing * (columns-1)
        let width = (collectionView.bounds.width - totalSpacing)/columns
        return CGSize(width: width, height: width+25)
    }
}

extension GalleryViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedPhoto = photos[indexPath.item]
        let detailedVC = PhotoDetailViewController(photo: selectedPhoto)
        navigationController?.pushViewController(detailedVC, animated: true)
    }
}

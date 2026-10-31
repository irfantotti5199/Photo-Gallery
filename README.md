# Photo Gallery – UIKit

A simple iOS Photo Gallery application built using **Swift and UIKit**, demonstrating UICollectionView fundamentals and modern collection view layouts.

## Features

- Display photos using UICollectionView.
- Custom UICollectionViewCell implementation.
- Three-column grid layout.
- Cell registration and reuse.
- Photo detail screen with navigation.
- Multiple sections for organizing photos.
- Custom section headers using UICollectionReusableView.
- UICollectionViewCompositionalLayout.
- Programmatic UI using Auto Layout.

## Tech Stack

- **Language:** Swift
- **Framework:** UIKit
- **Layout:** UICollectionViewFlowLayout, UICollectionViewCompositionalLayout
- **Architecture:** MVC
- **Minimum iOS Version:** iOS 13+

## Project Structure

```text
Photo Gallery/
├── AppDelegate.swift
├── SceneDelegate.swift
├── Photo.swift
├── GalleryViewController.swift
├── PhotoCollectionViewCell.swift
├── PhotoDetailViewController.swift
└── Assets.xcassets/
    ├── photo1.imageset/
    ├── photo2.imageset/
    ├── photo3.imageset/
    ├── photo4.imageset/
    ├── photo5.imageset/
    └── photo6.imageset/
```

## Concepts Practiced

- UICollectionViewDataSource
- UICollectionViewDelegate
- UICollectionViewDelegateFlowLayout
- UICollectionViewCell
- UICollectionReusableView
- IndexPath and multiple sections
- Cell reuse and registration
- Auto Layout constraints
- NavigationController
- Compositional Layout

## Getting Started

1. Clone the repository.
2. Open `Photo Gallery.xcodeproj` in Xcode.
3. Select an iOS Simulator.
4. Build and run the application.

```bash
git clone git@github.com:irfantotti5199/Photo-Gallery.git
```

## Purpose

This project was developed as a hands-on exercise to strengthen UIKit development skills and prepare for practical iOS developer interviews.

## Author

Irfan

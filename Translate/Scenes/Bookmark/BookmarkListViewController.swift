//
//  BookmarkListViewController.swift
//  Translate
//
//  Created by David Yoon on 2022/02/02.
//

import UIKit
import SnapKit

final class BookmarkListViewController: UIViewController {
    private var bookmarks: [Bookmark] = []
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let inset: CGFloat = 16.0
        layout.estimatedItemSize = CGSize(width: view.frame.width - (inset * 2), height: 100.0)
        layout.sectionInset = UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
        layout.minimumLineSpacing = 16.0
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.register(BookmarkCollectionViewCell.self, forCellWithReuseIdentifier: BookmarkCollectionViewCell.identifier)
        collectionView.backgroundColor = .secondarySystemBackground
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
        configureNavigation()
        addSubviews()
        setLayoutConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        bookmarks = UserDefaults.standard.bookmarks
        collectionView.reloadData()
    }
}

extension BookmarkListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookmarks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BookmarkCollectionViewCell.identifier, for: indexPath) as? BookmarkCollectionViewCell
        let bookmark = bookmarks[indexPath.row]
        cell?.setup(from: bookmark)
        return cell ?? UICollectionViewCell()
    }
    
    
}


private extension BookmarkListViewController {
    func configureNavigation() {
        navigationItem.title = "즐겨찾기"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func addSubviews() {
        view.addSubview(collectionView)
    }
    
    func setLayoutConstraints() {
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
}

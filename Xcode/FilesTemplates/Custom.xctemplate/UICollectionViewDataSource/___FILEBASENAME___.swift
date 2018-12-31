//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import Reusable
import Foundation

#warning("Read Usage for ___FILEBASENAMEASIDENTIFIER___")

/*
    USAGE

    Add this property :

    private var <#object#>DataSource: (UICollectionViewDelegate & UICollectionViewDataSource)? {
        didSet {
            self.<#CollectionView#>.delegate = <#object#>DataSource
            self.<#CollectionView#>.dataSource = <#object#>DataSource
            self.<#CollectionView#>.reloadData()
        }
    }

    Implement it :

    let source = ___FILEBASENAMEASIDENTIFIER___(objects: <#item#>)
    self.<#object#>DataSource = source
    source.onCellSelected = { [weak self] <#object#> in
        // action when selected
    }
*/

final class ___FILEBASENAMEASIDENTIFIER___: NSObject {

  // MARK: - Private properties
  private let dataList: [<#Object#>]

  // MARK: - Public properties
  public var onCellSelected: (<#Object#>) -> Void = { _ in }

  // MARK: - Life cycle
  public init(objects: [<#Object#>]) {
      self.dataList = objects
  }
}

// MARK: - Misc functions
extension ___FILEBASENAMEASIDENTIFIER___ {

    private func configureCell(at indexPath: IndexPath, with collectionView: UICollectionView) -> <#CollectionViewCell#> {
        let currentCell = collectionView.dequeueReusableCell(for: indexPath) as <#CollectionViewCell#>
        currentCell.prepare(with: self.dataList[indexPath.row])
        return currentCell
    }
}

// MARK: - UICollectionViewDelegate
extension ___FILEBASENAMEASIDENTIFIER___: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)

        self.onCellSelected(dataList[indexPath.row])
    }
}

// MARK: - UICollectionViewDataSource
extension ___FILEBASENAMEASIDENTIFIER___: UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return self.configureCell(at: indexPath, with: collectionView)
    }
}

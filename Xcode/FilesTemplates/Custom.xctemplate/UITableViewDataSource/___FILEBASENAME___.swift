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

    private var <#object#>DataSource: (UITableViewDelegate & UITableViewDataSource)? {
        didSet {
            self.<#TableView#>.delegate = <#object#>DataSource
            self.<#TableView#>.dataSource = <#object#>DataSource
            self.<#TableView#>.reloadData()
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

    private func configureCell(at indexPath: IndexPath, with tableView: UITableView) -> <#TableViewCell#> {
        let currentCell = tableView.dequeueReusableCell(for: indexPath) as <#TableViewCell#>
        currentCell.prepare(with: self.dataList[indexPath.row])
        return currentCell
    }
}

// MARK: - UITableViewDelegate
extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        self.onCellSelected(self.dataList[indexPath.row])
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

// MARK: - UITableViewDataSource
extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return self.configureCell(at: indexPath, with: tableView)
    }
}

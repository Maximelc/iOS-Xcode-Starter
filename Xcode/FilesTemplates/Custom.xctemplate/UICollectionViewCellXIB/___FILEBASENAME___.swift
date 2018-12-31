//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import Reusable

final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaSubclass___, NibReusable {

    // MARK: Global

    /// Set current label title
    var title: String? {
        didSet { self.updateLabel() }
    }

    // MARK: Privates

    // MARK: IBOutlet
    @IBOutlet private weak var titleLabel: UILabel!

    // MARK: Life cycle
    override func awakeFromNib() {
        super.awakeFromNib()

        self.setup()
    }
}

// MARK: - Configurations Setup
extension ___FILEBASENAMEASIDENTIFIER___ {

    private func setup() {
        self.setupLabel()
    }

    private func setupLabel() {

    }
}

// MARK: - Updates Functions
extension ___FILEBASENAMEASIDENTIFIER___ {

    private func updateLabel() {
        self.titleLabel.text = title
    }
}

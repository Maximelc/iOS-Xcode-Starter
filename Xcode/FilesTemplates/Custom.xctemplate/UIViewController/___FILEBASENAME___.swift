//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_cocoaSubclass___ {

    // MARK: - Global

    // MARK: - Privates

    // MARK: - IBOutlet

    // MARK: - Application Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
     
        print("\(self)")
    }
}

// MARK: - Configurations Setup
extension ___FILEBASENAMEASIDENTIFIER___ {

    private func setup() {
        self.setupNavigationBar()
    }

    private func setupNavigationBar() {
        self.title = <#title#>

        if #available(iOS 11.0, *) {
            self.navigationItem.largeTitleDisplayMode = .automatic
            self.navigationController?.navigationBar.prefersLargeTitles = true
        }
    }
}

// MARK: - Updates Functions
extension ___FILEBASENAMEASIDENTIFIER___ {

}

//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import Alamofire
import RealmSwift
import ObjectMapper
import AlamofireObjectMapper

final class ___FILEBASENAMEASIDENTIFIER___: Object, Mappable {

    // MARK: - Global

    // MARK: - Internal
    dynamic internal var identifier: NSNumber? = 0

    // MARK: - Mappable
    convenience required init?(map: Map) {
        self.init()
    }

    func mapping(map: Map) {
        self.identifier <- map["id"]
    }

    // MARK: - Model meta informations
    override class func primaryKey() -> String? {
        return "identifier"
    }

    override class func ignoredProperties() -> [String] {
        return []
    }
}

// MARK: - ___FILEBASENAMEASIDENTIFIER___
extension ___FILEBASENAMEASIDENTIFIER___ {

    // MARK: - Network call

    // MARK: - Privates Functions

    // MARK: - Public Functions
}

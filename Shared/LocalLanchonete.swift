//
//  LocalLanchonete.swift
//  sandwiches
//
//  Created by Nelson Toneze on 27/05/21.
//

import Foundation
import MapKit

class SanFranciscoAnnotation: NSObject, MKAnnotation {
    
    // This property must be key-value observable, which the `@objc dynamic` attributes provide.
    @objc dynamic var coordinate = CLLocationCoordinate2D(latitude: -23.181697, longitude: -50.652888)
    
    // Required if you set the annotation view's `canShowCallout` property to `true`
    var title: String? = NSLocalizedString("SAN_FRANCISCO_TITLE", comment: "SF annotation")
    
    // This property defined by `MKAnnotation` is not required.
    var subtitle: String? = NSLocalizedString("SAN_FRANCISCO_SUBTITLE", comment: "SF annotation")
}

//
//  LandMarkAnnotation.swift
//  MapSwiftUI
//
//  Created by Mohammed Rishan on 11/05/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import Foundation
import MapKit

final class LandMarkAnnotation: NSObject, MKAnnotation {
    
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(landmark: LandMark) {
        self.title = landmark.name
        self.coordinate = landmark.coordinate
    }
}

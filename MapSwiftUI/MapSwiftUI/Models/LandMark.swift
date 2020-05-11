//
//  LandMark.swift
//  MapSwiftUI
//
//  Created by Mohammed Rishan on 11/05/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import Foundation
import MapKit

struct LandMark {
    
    let placemark: MKPlacemark
    
    var id: UUID {
        return UUID()
    }
    
    var name: String {
         self.placemark.name ?? ""
    }
    
    var title: String {
         self.placemark.title ?? ""
    }
    
    var coordinate: CLLocationCoordinate2D {
         self.placemark.coordinate
    }
}

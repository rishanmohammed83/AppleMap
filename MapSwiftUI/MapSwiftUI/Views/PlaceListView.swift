//
//  PlaceListView.swift
//  MapSwiftUI
//
//  Created by Mohammed Rishan on 11/05/20.
//  Copyright © 2020 Mohammed Rishan. All rights reserved.
//

import SwiftUI
import MapKit

struct PlaceListView: View {
    
    let landmarks: [LandMark]
    var onTap: () -> ()
    
    var body: some View {
        
        VStack {
            
            HStack{
                EmptyView()
            }.frame(width: UIScreen.main.bounds.size.width, height: 60)
                .background(Color.blue)
                .gesture(TapGesture()
                    .onEnded(self.onTap)
            )
            
            List(self.landmarks, id: \.id) { landmark in
                Text(landmark.name)
            }.animation(nil)
        }.cornerRadius(16)
    }
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView(landmarks: [LandMark(placemark: MKPlacemark())], onTap: { })
    }
}

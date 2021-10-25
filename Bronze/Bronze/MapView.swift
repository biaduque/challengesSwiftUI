//
//  MapView.swift
//  Bronze
//
//  Created by Beatriz Duque on 25/10/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        //-23.524134461610096, -46.77456388051041
        center: CLLocationCoordinate2D(latitude: -23.524134461610096, longitude:  -46.77456388051041),
        span: MKCoordinateSpan(latitudeDelta:  0.2, longitudeDelta: 0.2)
        
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

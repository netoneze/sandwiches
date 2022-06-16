//
//  MapaLanchonete.swift
//  sandwiches
//
//  Created by Nelson Toneze on 27/05/21.
//

import SwiftUI
import MapKit


struct MapaLanchonete: View {
//-23.181697, -50.652888
    @State private var local = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -23.181697, longitude: -50.652888),
            span: MKCoordinateSpan(latitudeDelta: 0.0015, longitudeDelta: 0.0015)
        )

        var body: some View {
            Map(coordinateRegion: $local)
        }
}

struct MapaLanchonete_Previews: PreviewProvider {
    static var previews: some View {
        MapaLanchonete()
    }
}

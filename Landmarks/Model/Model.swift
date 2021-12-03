/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A representation of a single landmark.
*/

import Foundation
import SwiftUI
import CoreLocation

struct Model: Hashable, Codable, Identifiable {
    var id: Int
    var modelName: String
    var parkName: String
    var state: String
    var description: String

    private var imageName: String
    var image: Image {
        var image = Image(imageName)
        image != nil ? Image(imageName) : Image(systemName: "photo")
        if image != nil {
            return image
        } else {
            image = Image(systemName: "photo")
        }
        return image
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

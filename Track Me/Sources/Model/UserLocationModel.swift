//
//  UserLocationModel.swift
//  Track Me
//
//  Created by Omar T&S on 06/01/2023.
//

import Foundation
import CoreLocation

public struct UserLocation: Codable {
    let speed: CLLocationSpeed
    public private(set) var averageSpeed: CLLocationSpeed?
    public private(set) var maxSpeed: CLLocationSpeed = 0.0
    public private(set) var minSpeed: CLLocationSpeed = 0.0

    public private(set) var currentAltitude: CLLocationDistance?
}

extension UserLocation {
    public var debugDescription: String {
        return "speed: \(speed)" +
        "averageSpeed: \(averageSpeed ?? 0.0)" +
        "altitude: \(currentAltitude ?? 0.0)"
    }
}

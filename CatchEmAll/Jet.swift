//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        let newAltitude = altitude + maxAltitude/5
        if inFlight {
            if newAltitude < maxAltitude {
                altitude = newAltitude
            }
            else {
                altitude = maxAltitude
            }
            decelerate()
        } //if inFlight
        
    }
    
    override func dive() {
        let newAltitude = altitude - maxAltitude/5
        if inFlight {
            if newAltitude > 0 {
                altitude = newAltitude
            }
            else {
                altitude = 0
            }
            accelerate()
        } //if inFlight
        
    }
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = 2 * maxSpeed
        }
    }
    
}

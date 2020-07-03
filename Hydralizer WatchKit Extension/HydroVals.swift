//
//  HydroVals.swift
//  Hydralizer WatchKit Extension
//
//  Created by Anuj Parakh on 7/3/20.
//  Copyright © 2020 Anuj Parakh. All rights reserved.
//

import Foundation

class HydroVals
{
    // glasses / day
    public var glassesPerDay = 8
    // notifying or not
    public var sendNotifications = true
    // glasses drunk today
    public var numGlassesDrunkToday = 0
    // array of glasses drunk everyday
    public var numGlassesDrunk: [Int] = []
    // list of times to remind user to drink water
}

//
//  InterfaceController.swift
//  Hydralizer WatchKit Extension
//
//  Created by Anuj Parakh on 7/2/20.
//  Copyright © 2020 Anuj Parakh. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var notificationSwitch: WKInterfaceSwitch!
    @IBOutlet weak var glassesCounter: WKInterfaceSlider!
    @IBOutlet weak var glassesCounterLabel: WKInterfaceLabel!
    private var notificationsOn = true
    {
        didSet {
            // do something on notifications on/off
        }
    }
    
    private var savedValues = HydroVals() // important values to save
    
    @IBAction func notificationSwitchToggled(_ value: Bool)
    {
        notificationsOn = value
    }
    
    @IBAction func glassesCounterChanged(_ value: Float)
    {
        if (value < 6)
        {
            glassesCounterLabel.setTextColor(UIColor(hex: "#E97C85FF"))
        }
        else
        {
            glassesCounterLabel.setTextColor(UIColor(hex: "#9BC8E9FF"))
        }

        glassesCounterLabel.setText(String(Int(value)))
        
        // TODO: change hydroVals and store in storage
    }
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        // TODO: get hydroVal values from storage
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

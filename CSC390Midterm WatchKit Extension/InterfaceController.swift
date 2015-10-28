//
//  InterfaceController.swift
//  CSC390Midterm WatchKit Extension
//
//  Created by Nicholas Largen on 10/28/15.
//  Copyright © 2015 Nicholas Largen. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var listpicker: WKInterfacePicker!
    
    @IBAction func controlbutton1(value : Int)
    {
        conversioncore.speedselected = value
        print("\(conversioncore.speedselected)")
        
    }
    @IBAction func pickerupdate(value: Int)
    {
        conversioncore.speedselected = value
        print("\(conversioncore.speedselected)")
    }
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        var ThePickerItems = [WKPickerItem]()
        for (var i = 0 ; i < 1000; i++)
        {
            ThePickerItems.append(WKPickerItem())
            ThePickerItems[i].title =  ("\(i) Mbps")
            ThePickerItems[i].caption = "Mbps"
        }
        
        
        self.listpicker.setItems(ThePickerItems)

        
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

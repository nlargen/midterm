//
//  Screen2Controller.swift
//  CSC390Midterm
//
//  Created by Nicholas Largen on 10/28/15.
//  Copyright © 2015 Nicholas Largen. All rights reserved.
//

import WatchKit
import Foundation


class Screen2Controller: WKInterfaceController {

    @IBOutlet var mbpslabel: WKInterfaceLabel!
    @IBOutlet var Table1: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?)
    {
        mbpslabel.setText("\(conversioncore.speedselected) Mbps")
        let tablevals = ["Bytes","KiloBytes","MBytes","GBps"]
        self.Table1.setNumberOfRows(tablevals.count, withRowType: "cell")
        for(var i = 0; i < tablevals.count; i++)
        {
            let currRow = self.Table1.rowControllerAtIndex(i) as! TableCell
            currRow.ByteType.setText(tablevals[i])
            
        }

        super.awakeWithContext(context)
        
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

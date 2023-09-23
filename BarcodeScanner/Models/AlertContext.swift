//
//  AlertContext.swift
//  BarcodeScanner
//
//  Created by Lucas Santos on 23/09/23.
//

import SwiftUI

struct AlertContext {
    static let invalidDeviceInput = AlertItem(
        title: "Invalid Device Input",
        message: "Something is wrong with the camera",
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidScannedValue = AlertItem(
        title: "Invalid Scanned value",
        message: "The value scanned is not valid.",
        dismissButton: .default(Text("OK"))
    )
}

//
//  AlertItem.swift
//  BarcodeScanner
//
//  Created by Lucas Santos on 23/09/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

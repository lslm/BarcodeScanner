//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Lucas Santos on 23/09/23.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    private var pasteboard = UIPasteboard.general
    
    func addScannedCodeToPasteboard() {
        pasteboard.string = scannedCode
    }
    
    func copyButtonText() -> String {
        scannedCode.isEmpty ? "No scanned code" : scannedCode
    }
}

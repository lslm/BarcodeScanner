//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Lucas Santos on 22/09/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding()
                
                Button {
                    viewModel.addScannedCodeToPasteboard()
                } label: {
                    CopyButtonView(text: viewModel.copyButtonText())
                }
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(
                    title: Text(alertItem.title),
                    message: Text(alertItem.message),
                    dismissButton: alertItem.dismissButton
                )
            }
            Spacer()
        }
    }
}
 
#Preview {
    BarcodeScannerView()
}

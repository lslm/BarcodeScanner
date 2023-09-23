//
//  CopyButton.swift
//  BarcodeScanner
//
//  Created by Lucas Santos on 23/09/23.
//

import SwiftUI

struct CopyButtonView: View {
    let text: String
    
    var body: some View {
        Label(text, systemImage: "barcode.viewfinder")
            .font(.title2)
            .padding(12)
            .foregroundStyle(Color.secondary)
            .background(.ultraThinMaterial)
            .clipShape(Capsule())
    }
}

#Preview {
    CopyButtonView(text: "Test")
}

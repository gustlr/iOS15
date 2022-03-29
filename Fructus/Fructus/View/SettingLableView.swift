//
//  SettingLableView.swift
//  Fructus
//
//  Created by Hyun Shik Chung on 3/28/22.
//

import SwiftUI

struct SettingLableView: View {
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLableView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

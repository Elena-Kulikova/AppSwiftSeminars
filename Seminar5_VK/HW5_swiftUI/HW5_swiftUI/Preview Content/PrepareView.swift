//
//  PrepareView.swift
//  HW5_swiftUI
//
//  Created by Elena on 14.03.2024.
//

import SwiftUI
import Foundation

struct PrepareView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Читать новости", destination: ContentView ())
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews:
        some View {
        PrepareView()
    }
}

//
//  ContentView.swift
//  SegmentedPicker
//
//  Created by Scriffles on 7/25/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HorizontalPicker()
            Spacer()
            VerticalPicker()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

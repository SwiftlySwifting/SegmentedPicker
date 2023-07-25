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
            HorizontalPicker()
            VerticalPicker()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  VerticalPicker.swift
//  SegmentedPicker
//
//  Created by Scriffles on 7/25/23.
//

import SwiftUI

struct HorizontalPicker: View {
    @Namespace private var selectionAnimation
    @State private var selectedCity = "Austin"
    private let cities = ["Austin","Houston","Dallas","El Paso"]
    private let height:CGFloat = 40
    private let appColor: Color = .orange
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(cities, id: \.self) { city in
                Button {
                    withAnimation(.linear) {
                        selectedCity = city
                    }
                } label: {
                    ZStack {
                        Capsule()
                            .foregroundColor(.black.opacity(0.01))
                        Text(city)
                            .foregroundColor(selectedCity == city ? .black : .gray)
                            .font(.body)
                    }
                    .frame(height: height)
                    .background {
                        if selectedCity == city {
                            Capsule()
                                .foregroundColor(appColor)
                                .matchedGeometryEffect(id: "capsule", in: selectionAnimation)
                        }
                    }
                }
            }
        }
        .background {
            Capsule()
                .foregroundColor(appColor.opacity(0.2))
        }
        .padding()
    }
}


struct HorizontalPicker_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalPicker()
    }
}

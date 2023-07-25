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
    private let appColor:Color = .blue
    private let matchedGeoEffectId = "geoEffect"
    
    var body: some View {
        HStack {
            ForEach(cities, id: \.self) { city in
                Button {
                    withAnimation(.linear) {
                        selectedCity = city
                    }
                } label: {
                    Text(city)
                        .foregroundColor(selectedCity == city ? .white : .gray)
                        .font(.body)
                        .frame(height: height)
                        .padding(.horizontal)
                        .background {
                            if selectedCity == city {
                                Capsule()
                                    .foregroundColor(appColor)
                                    .matchedGeometryEffect(id: matchedGeoEffectId, in: selectionAnimation)
                            } else {
                                Capsule()
                                    .foregroundColor(.black.opacity(0.01))
                            }
                        }
                }
            }
        }
        .background {
            Capsule()
                .foregroundColor(appColor.opacity(0.2))
        }
    }
}


struct HorizontalPicker_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalPicker()
    }
}

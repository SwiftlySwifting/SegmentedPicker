//
//  VerticalPicker.swift
//  SegmentedPicker
//
//  Created by Scriffles on 7/25/23.
//

import SwiftUI

struct VerticalPicker: View {
    @Namespace private var selectionAnimation
    @State private var selectedCity = "Seattle"
    private let cities = ["Seattle","Spokane","Tacoma","Olympia"]
    private let height:CGFloat = 40
    private let width:CGFloat = 200
    private let appColor:Color = .green
    private let matchedGeoEffectId = "geoEffect"
    
    var body: some View {
        VStack(spacing: 5) {
            ForEach(cities, id: \.self) { city in
                Button {
                    withAnimation(.linear) {
                        selectedCity = city
                    }
                } label: {
                    Text(city)
                        .foregroundColor(selectedCity == city ? .white : .gray.opacity(0.8))
                        .font(.body)
                        .frame(width: width, height: height)
                        .background {
                            if selectedCity == city {
                                Capsule()
                                    .foregroundColor(appColor)
                                    .matchedGeometryEffect(id: matchedGeoEffectId, in: selectionAnimation)
                            } else {
                                Capsule()
                                    .foregroundColor(appColor.opacity(0.01))
                            }
                        }
                }
            }
        }
        .background {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(appColor.opacity(0.2))
        }
        .frame(width: width)
    }
}

struct VerticalPicker_Previews: PreviewProvider {
    static var previews: some View {
        VerticalPicker()
    }
}

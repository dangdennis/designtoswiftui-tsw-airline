//
//  FlightBookingHeaderView.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/13/20.
//

import SwiftUI

struct FlightBookingHeaderView: View {
    var body: some View {
        VStack {
            Image("airplane")
            
            HStack(spacing: 0) {
                VStack(alignment: .leading) {
                    Text("BOOK YOUR FLIGHT")
                        .custom(font: .heavy, size: 29)
                        .foregroundColor(.baseLightBlue)
                    Text("WHERE WOULD YOU WANT TO GO")
                        .custom(font: .medium, size: 12)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct FlightBookingHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBookingHeaderView()
    }
}

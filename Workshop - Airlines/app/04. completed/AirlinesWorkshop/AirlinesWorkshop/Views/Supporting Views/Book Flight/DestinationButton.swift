//
//  DestinationButton.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/13/20.
//

import SwiftUI

struct DestinationButton: View {
    @EnvironmentObject var model: FlightViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 25) {
                VStack {
                    Image("icon-departure")
                    Image("dashed-line")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 2, height: 28)
                        .clipped()
                        .foregroundColor(.black)
                }
                
                VStack(alignment: .leading) {
                    Text("FROM")
                        .custom(font: .regular, size: 14)
                        .foregroundColor(.baseLightBlue)
                    HStack(spacing: 0) {
                        Text(model.isDepartureLocationSet ?  "\(model.departureLocation.city), " : "")
                            .custom(font: .bold, size: 18)
                        Text(model.isDepartureLocationSet ?  model.departureLocation.state : "Select a Location")
                            .custom(font: .ultralight, size: 18)
                    }
                }
                
                Spacer()
            }
            .padding(.leading, 20)
            .frame(height: 80)
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: Color.black.opacity(0.14), radius: 14, x: 0, y: 0)
        }.buttonStyle(PlainButtonStyle())
        
    }
}

struct DestinationButton_Previews: PreviewProvider {
    static var previews: some View {
        DestinationButton() {}
    }
}



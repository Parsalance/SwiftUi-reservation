//
//  LocationsView.swift
//  Little Lemon
//
//  Created by Milad Norouzi on 9/7/23.
//

import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
    var body: some View {
        VStack{
            LittleLemonLogo()
                .padding(.top, 30)
            Text(model.displayingReservationForm ? "Reservation Details" : "Select a location")
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(20)
            NavigationView {
                List(model.restaurants, id: \.self) { restaurant in
                    NavigationLink(destination: ReservationForm(restaurant)) {
                        RestaurantView(restaurant)
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
                .listStyle(.plain)
                .frame(maxHeight: .infinity)
                .padding(.top, 50)
                .scrollContentBackground(.hidden)
            }
            
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}

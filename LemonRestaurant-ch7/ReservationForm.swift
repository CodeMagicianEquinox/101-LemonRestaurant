//
//  ReservationForm.swift
//  LemonRestaurant-ch7
//
//  Created by Timothy Terrance on 2/11/26.
//

import SwiftUI

struct ReservationForm: View {
    let restaurantName = "Little Lemon"
    let maxGuest = 10
    // state variables
    // "if this changes, update the UI"
    @State private var userName = ""
    @State private var guestCount = 1
    @State private var phoneNumber = ""
    @State private var previewText = ""
    
    var body: some View {
        Form{
            //header
            Section{
                Text(restaurantName)
                    .font(.title3)
                    .bold()
                Text("Reservation form")
                    .foregroundColor(.secondary)
            }
            Section{
                //$ this value can read + write
                TextField("Name",text:$userName)
                    .textInputAutocapitalization(.words)
                    .autocorrectionDisabled(true)
                
                Stepper("Guest: \(guestCount)", value:$guestCount, in: 1...maxGuest)
                
                TextField("Phone", text:$phoneNumber)
                    .keyboardType(.numberPad)
                
                Button("Preview reservation"){
                    previewText =
                    """
                    Name" \(userName)
                    Guests: \(guestCount)
                    Phone: \(phoneNumber)
                    """
                }
                
                Text(previewText)
            }
        }
    }
}

#Preview {
    ReservationForm()
}

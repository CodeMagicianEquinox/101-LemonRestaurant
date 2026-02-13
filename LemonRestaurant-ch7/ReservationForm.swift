//
//  ReservationForm.swift
//  LemonRestaurant-ch7
//
//  Created by Timothy Terrance on 2/11/26.
//

import SwiftUI

struct ReservationForm: View {
    let restaurantName = "Little Lemon"
    let maxGuests = 10

    @State private var userName = ""
    @State private var guestCount = 1

    
    @State private var childrenCount = 0
    @State private var occasion = ""

    @State private var phoneNumber = ""
    @State private var previewText = ""

    var body: some View {
        Form {
            // Header
            Section {
                Text(restaurantName)
                    .font(.title3)
                    .bold()

                Text("Reservation form")
                    .foregroundColor(.secondary)
            }

            Section {
                TextField("Name", text: $userName)
                    .disableAutocorrection(true)

                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuests)

    
                Stepper("Children: \(childrenCount)", value: $childrenCount, in: 0...5)

                
                TextField("Occasion (Birthday, Anniversary, etc.)", text: $occasion)
                    .disableAutocorrection(true)

                
                TextField("Phone", text: $phoneNumber)
                    .keyboardType(.phonePad)

                Button("Preview reservation") {
                    previewText =
                    """
                    Name: \(userName)
                    Guests: \(guestCount)
                    Children: \(childrenCount)
                    Occasion: \(occasion)
                    Phone: \(phoneNumber)
                    """
                }

                // Display the reservation info
                if !previewText.isEmpty {
                    Text(previewText)
                }
            }
        }
    }
}

#Preview {
    ReservationForm()
}

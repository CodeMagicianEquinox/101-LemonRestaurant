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

                // Condition 1: Show warning when name is empty
                if userName.isEmpty {
                    Text("Please enter your name to continue.")
                        .font(.caption)
                        .foregroundColor(.red)
                }

                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuests)

                // Condition 2: Show large-group notice for 8+ guests
                if guestCount >= 8 {
                    Text("Large group — please call ahead to confirm availability.")
                        .font(.caption)
                        .foregroundColor(.orange)
                }

                Stepper("Children: \(childrenCount)", value: $childrenCount, in: 0...5)

                // Condition 3: Show note when children are included
                if childrenCount > 0 {
                    Text("Kids menu and high chairs are available on request.")
                        .font(.caption)
                        .foregroundColor(.blue)
                }

                TextField("Occasion (Birthday, Anniversary, etc.)", text: $occasion)
                    .disableAutocorrection(true)

                TextField("Phone", text: $phoneNumber)
                    .keyboardType(.phonePad)

                Button("Preview reservation") {
                    previewText = """
                    Name: \(userName)
                    Guests: \(guestCount)
                    Children: \(childrenCount)
                    Occasion: \(occasion)
                    Phone: \(phoneNumber)
                    """
                }
                .disabled(userName.isEmpty)

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

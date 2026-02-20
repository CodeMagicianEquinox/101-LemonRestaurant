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
    @State private var phoneNumber = ""
    @State private var childrenCount = 0
    @State private var occasion = ""
    @State private var outdoorSeating = false

    @State private var previewText = ""

    // Helper: plural label
    func guestLabel(_ count: Int) -> String {
        count == 1 ? "Guest" : "Guests"
    }

    // Helper: estimate total
    func estimateTotal(adults: Int, children: Int) -> Double {
        let adultPrice = 15.0
        let childrenPrice = 9.0
        return Double(adults) * adultPrice + Double(children) * childrenPrice
    }

    // Helper: currency formatting
    func currency(_ value: Double) -> String {
        value.formatted(.currency(code: "USD"))
    }

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

            // Reservation form inputs
            Section {

                TextField("Name", text: $userName)
                    .disableAutocorrection(true)

               //Empty name warning
                if userName.isEmpty {
                    Text("Please enter your name to continue.")
                        .font(.caption)
                        .foregroundColor(.red)
                }

                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...maxGuests)

               // if statement
                if guestCount >= 8 {
                    Text("Large group — please call ahead to confirm availability.")
                        .font(.caption)
                        .foregroundColor(.orange)
                }

                TextField("Phone", text: $phoneNumber)

                Stepper("Children: \(childrenCount)", value: $childrenCount, in: 0...5)

                // if statement 
                if childrenCount > 0 {
                    Text("Kids menu and high chairs are available on request.")
                        .font(.caption)
                        .foregroundColor(.blue)
                }

                TextField("Occasion (Birthday, Anniversary, etc.)", text: $occasion)
                    .disableAutocorrection(true)

                Toggle("Outdoor seating", isOn: $outdoorSeating)

                
                if outdoorSeating {
                    Text("Outdoor seating requested — weather permitting.")
                        .font(.caption)
                        .foregroundColor(.green)
                }

                Button("Preview reservation") {
                    previewText = """
                    Name: \(userName)
                    \(guestLabel(guestCount)): \(guestCount)
                    Children: \(childrenCount)
                    Occasion: \(occasion)
                    Phone: \(phoneNumber)
                    Outdoor seating: \(outdoorSeating ? "Yes" : "No")
                    """
                }
                .disabled(userName.isEmpty)
            }

            // Preview section
            Section(header: Text("Preview")) {
                Text(previewText.isEmpty ? "Tap “Preview reservation” to view details." : previewText)
                    .foregroundColor(previewText.isEmpty ? .secondary : .primary)
            }

            // Summary section (layout using VStack/HStack/Spacer)
            Section(header: Text("Summary")) {
                VStack(alignment: .leading, spacing: 10) {

                    HStack {
                        Text("Reservation Summary")
                            .font(.headline)
                        Spacer()
                        Image(systemName: "doc.text.magnifyingglass")
                    }

                    Divider()

                    HStack {
                        Text("Name")
                        Spacer()
                        Text(userName.isEmpty ? "—" : userName)
                            .foregroundColor(.secondary)
                    }

                    HStack {
                        Text(guestLabel(guestCount))
                        Spacer()
                        Text("\(guestCount)")
                            .foregroundColor(.secondary)
                    }

                    HStack {
                        Text("Children")
                        Spacer()
                        Text("\(childrenCount)")
                            .foregroundColor(.secondary)
                    }

                    HStack {
                        Text("Outdoor seating")
                        Spacer()
                        Text(outdoorSeating ? "Yes" : "No")
                            .foregroundColor(.secondary)
                    }

                    HStack {
                        Text("Estimated total")
                        Spacer()
                        Text(currency(estimateTotal(adults: guestCount, children: childrenCount)))
                            .bold()
                    }
                }
                .padding(.vertical, 6)
            }
        }
    }
}

#Preview {
    ReservationForm()
}

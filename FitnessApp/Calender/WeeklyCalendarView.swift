//
//  WeeklyCalendarView.swift
//  FitnessApp
//
//  Created by pranali sanjay shelke on 18/11/26.
//

import SwiftUI

struct WeeklyCalendarView: View {

    @State private var selectedDate = Date()

    private var currentWeek: [Date] {
        let calendar = Calendar.current
        let today = Date()
        let weekday = calendar.component(.weekday, from: today)
        let daysFromMonday = (weekday + 5) % 7

        guard let monday = calendar.date(
            byAdding: .day,
            value: -daysFromMonday,
            to: today
        ) else {
            return []
        }

        return (0..<7).compactMap {
            calendar.date(byAdding: .day, value: $0, to: monday)
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {

//            Text(Date.now, format: .dateTime.month(.wide).year())
//                .font(.title2.bold())

            HStack {
                ForEach(currentWeek, id: \.self) { date in

                    let isSelected = Calendar.current.isDate(
                        date,
                        inSameDayAs: selectedDate
                    )

                    VStack(spacing: 10) {
                        Text(date, format: .dateTime.weekday(.abbreviated))

                        Text(date, format: .dateTime.day())
                            .font(.headline)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
                    .background(isSelected ? Color.black : Color.clear)
                    .foregroundStyle(isSelected ? .white : .primary)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .onTapGesture {
                        selectedDate = date
                    }
                }
            }
        }
      //  .padding()
    }
}

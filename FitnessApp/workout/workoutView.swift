//
//  workoutView.swift
//  FitnessApp
//
//  Created by Prachi Vikas Raut  on 18/11/26.
//

import SwiftUI

struct workoutView: View {
    var body: some View {
      
        
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        VStack {
                   Image("workout")
                       .resizable()
                       .scaledToFit()
                       .padding(.top, 10)
                       .padding(.horizontal, 10)
            
            
            Text("Full Body Strength")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
          
            Text("Build Strength from the ground up")
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundColor(.gray)

            // Horizontal Information Boxes
                          HStack(spacing: 10) {

                              infoBox(title: "35 min",
                                      subtitle: "Duration")

                              infoBox(title: "Intermediate",
                                      subtitle: "Level")

                              infoBox(title: "6 moves",
                                      subtitle: "Exercises")
                          }

                          // What you'll need
                          VStack(alignment: .center, spacing: 12) {

                              Text("WHAT YOU'LL NEED")
                                  .font(.caption)
                                  .foregroundColor(.gray)

                              HStack {
                                  Text(" Dumbbells")
                                  Text("Exercise mat")
                              }
                          }

                          // Session Header
                          VStack(alignment: .center, spacing: 5) {

                              Text("Your session")
                                  .font(.title2)
                                  .bold()

                              Text("45 sec rest between strength sets")
                                  .font(.subheadline)
                                  .foregroundColor(.gray)
                          }

                          // Session Table / Rows
                          VStack(spacing: 12) {

                              sessionRow(number: "01",
                                         title: "Warm-up",
                                         duration: "4 min")

                              sessionRow(number: "02",
                                         title: "Goblet squat",
                                         duration: "3 × 12 reps")

                              sessionRow(number: "03",
                                         title: "Dumbbell row",
                                         duration: "3 × 10 / side")

                              sessionRow(number: "04",
                                         title: "Reverse lunge",
                                         duration: "3 × 10 / side")

                              sessionRow(number: "05",
                                         title: "Dumbbell floor press",
                                         duration: "3 × 12 reps")

                              sessionRow(number: "06",
                                         title: "Cool-down",
                                         duration: "3 min")
                          }
                      }
                      .padding(.horizontal, 25)
                  }
              }

              // Information Box
              func infoBox(title: String,
                           subtitle: String) -> some View {

                  VStack(alignment: .leading, spacing: 5) {
                      Text(title)
                          .font(.headline)

                      Text(subtitle)
                          .font(.caption)
                          .foregroundColor(.gray)
                  }
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding(12)
                  .background(Color.gray.opacity(0.12))
                  .cornerRadius(12)
              }

              // Session Row
              func sessionRow(number: String,
                              title: String,
                              duration: String) -> some View {

                  HStack {

                      Text(number)
                          .padding(10)
                          .background(Color.orange.opacity(0.15))
                          .cornerRadius(10)

                      Text(title)
                          .font(.subheadline)

                      Spacer()

                      Text(duration)
                          .font(.caption)
                          .foregroundColor(.gray)
                  }
              }
          

          #Preview {
              workoutView()
          }

//
//  MainTabView.swift
//  FitnessApp
//
//  Created by pranali sanjay shelke on 19/11/26.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {

            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

          //  WorkoutView()
                .tabItem {
                    Image(systemName: "dumbbell.fill")
                    Text("Workouts")
                }

          //  ProgressViewScreen()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Progress")
                }

           // ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .tint(.orange)
    }
}

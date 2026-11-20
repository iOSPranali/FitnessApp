//
//  HomeView.swift
//  FitnessApp
//
//  Created by pranali sanjay shelke on 18/11/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("November 18,2026")
                    Text("Make Your Day")
                        .font(.largeTitle)
                }.padding(10)
                
                Spacer()
                Button("Text"){
                    
                }
                .frame(alignment: .trailing)
                .foregroundColor(.black)
                .padding(20)
            }
            VStack{
                WeeklyCalendarView()
                    .padding(10)
            }
            HStack(spacing: 15){
                VStack(spacing: 10){
                    Text("6489")
                        .font(.system(size: 30))
                    Text("/ 8000 steps")
                        .font(.system(size: 15))
                    ProgressView(value: 0.8)
                        .tint(.orange)
                        .frame(width: 80, height: 10)
                        .padding(10)
                }
                VStack(spacing: 10){
                    Text("32")
                        .font(.system(size: 30))
                    Text("45 active min")
                        .font(.system(size: 15))
                    ProgressView(value: 0.7)
                        .tint(.orange)
                        .frame(width: 80, height: 10)
                        .padding(10)
                }
                VStack(spacing: 10){
                    Text("284")
                        .font(.system(size: 30))
                    Text("kcal burn")
                        .font(.system(size: 15))
                    ProgressView(value: 0.5)
                        .tint(.orange)
                        .frame(width: 80, height: 10)
                        .padding(10)
                }
            
            }
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.15))
            .cornerRadius(20)
            .padding(.horizontal, 15)
            
            VStack{
                HStack{
                    Text("Made For Today")
                        .font(.system(size: 25,weight: .bold))
                    
                    Spacer()
                    Button("View all"){
                        
                    }.font(.system(size: 18))
                        .foregroundColor(.black)
                    
                }.padding(15)
                
                ZStack(alignment: .bottomLeading) {

                    // Background image
                    Image("womenFitness")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()

                    // Dark overlay for readability
                    Color.black.opacity(0.1)

                    // Text and button ON the image
                    VStack(alignment: .leading, spacing: 12) {

                        Text("Full Body. \nFull Energy.")
                            .font(.title2.bold())
                            .foregroundColor(.white)

                        Text("35 min. Strength. Intermediate")
                            .foregroundColor(.white)

                        Button(action: {
                            print("Workout Started")
                        }) {
                            HStack{
                                Text("Start Tutorial")
                                Image("goArrow")
                                    .resizable()
                                              .scaledToFit()
                                              .frame(width: 16, height: 16)
                                              .foregroundColor(.white)
                                
                            }
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 10)
                                    .background(Color.orange)
                                    .cornerRadius(20)
                               
                            
                        }
                    }
                    .padding(20)
                }
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.horizontal, 15)
            }
            VStack{
                HStack{
                    Text("A little stronger, every day.")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .padding(.horizontal)
                    Spacer()
                    
                }
                HStack{
                    Image(systemName: "dumbbell.fill")
                        .frame(width:40, height:40)
                        
                    VStack{
                        Text("Build your foundation")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                        Text("week 2 of 4 : 3 workout left")
                            .font(.system(size: 15))
                        HStack{
                            ProgressView(value: 1)
                                .tint(.orange)
                                .frame(width: 50, height: 10)
                                .padding(5)
                            
                            ProgressView(value: 1)
                                .tint(.orange)
                                .frame(width: 50, height: 10)
                                .padding(5)
                            
                            ProgressView(value: 0)
                                .tint(.orange)
                                .frame(width: 50, height: 10)
                                .padding(5)
                            
                            ProgressView(value: 0)
                                .tint(.orange)
                                .frame(width: 50, height: 10)
                                .padding(5)
                        }
                        
                    }
                }
            }
            
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
     
    }
}

#Preview {
    HomeView()
}

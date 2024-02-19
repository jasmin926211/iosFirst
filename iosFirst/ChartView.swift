//
//  ChartView.swift
//  iosFirst
//
//  Created by Jasmin Thummar on 12/04/24.
//

import SwiftUI
import Charts

struct ChartView: View {
    let barColors: [Color] = [.green, .mint, .cyan, .blue, .indigo, .purple, .pink]
    var body: some View {
        NavigationStack {
            VStack {
                Chart(Workout.workouts){ workout in
                    BarMark(x: .value("Day", workout.day), y: .value("Steps", workout.steps))
                        .annotation(position: .top){
                            Text("\(workout.steps)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        .foregroundStyle(by: .value("Day", workout.day))
                }
                .chartForegroundStyleScale(domain: Workout.workouts.compactMap({ workout in
                            workout.day
                        }), range: barColors)
                
                .padding()
                .frame(height: 200)
            }
            .navigationTitle("My Steps")
        }
    }
}

#Preview {
    ChartView()
}

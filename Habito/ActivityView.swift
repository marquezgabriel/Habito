//
//  ActivityView.swift
//  Habito
//
//  Created by Gabriel Marquez on 2022-06-27.
//

import SwiftUI

struct ActivityView: View {
    @ObservedObject var data: Activities
    var activity: Activity
    
    
    var body: some View {
        List {
            Section {
                if activity.title.description.isEmpty == false {
                    Text(activity.decription)
                }
            }
            Section {
                Text("Completion count: \(activity.completionCount)")
                Button("Mark Completed") {
                    var newActivity = activity
                    newActivity.completionCount += 1
                    
                    if let index = data.activities.firstIndex(of: activity) {
                        data.activities[index] = newActivity
                    }
                }
            }
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(data: Activities(), activity: Activity.example)
    }
}

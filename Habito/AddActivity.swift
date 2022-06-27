//
//  AddActivity.swift
//  Habito
//
//  Created by Gabriel Marquez on 2022-06-27.
//

import SwiftUI

struct AddActivity: View {
    @ObservedObject var data: Activities
    @State private var title = ""
    @State private var description = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Title", text: $title)
                TextField("Description", text: $description)
            }
            .navigationTitle("Add Activity")
            .toolbar {
                Button("Save") {
                    let trimedTitle = title.trimmingCharacters(in: .whitespaces)
                    guard trimedTitle.isEmpty == false else { return }
                    
                    let activity = Activity(title: trimedTitle, decription: description)
                    data.activities.append(activity)
                    dismiss()
                }
            }
        }
        
    }
}

struct AddActivity_Previews: PreviewProvider {
    static var previews: some View {
        AddActivity(data: Activities())
    }
}

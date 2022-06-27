//
//  ContentView.swift
//  Habito
//
//  Created by Gabriel Marquez on 2022-06-27.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var data = Activities()

    var body: some View {
        NavigationView {
            List(data.activities) { activity in
                NavigationLink {
                    Text("Detail view")
                } label: {
                    HStack{
                        Text(activity.title)
                        Spacer()
                        Text(String(activity.completionCount))
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 03/02/2023.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            ContentView(divisionList: Division.examples)
                .tabItem {
                    Image(systemName: "square.and.pencil.circle.fill")
                    Text("Absences")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}

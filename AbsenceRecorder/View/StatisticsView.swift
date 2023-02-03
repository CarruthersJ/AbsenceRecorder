//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 03/02/2023.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    var body: some View {
        Text("Statistics View")
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
            .environmentObject(StateController())
    }
}

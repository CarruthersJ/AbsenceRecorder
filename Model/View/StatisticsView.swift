//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 03/02/2023.
//

import SwiftUI

struct StatisticsView: View {
    var body: some View {
        TabView {
            Text("Statistics View")
            Image(systemName: "list.bullet.clipboard")
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}

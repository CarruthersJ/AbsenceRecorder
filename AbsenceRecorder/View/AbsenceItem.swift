//
//  AbsenceItemView.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 04/02/2023.
//

import SwiftUI

struct AbsenceItem: View {
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack {
            Text("\(studentAbsence.student.firstName)")
            Spacer()
            if studentAbsence.isAbsent == false {
                Button("✔️", action: {toggleAbsent()})
            } else {
                Button("❌", action: { toggleAbsent() })
            }
        }
    }
    func toggleAbsent() {
        studentAbsence.isAbsent.toggle()
    }
    
}

struct AbsenceItemView_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}

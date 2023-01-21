//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 20/01/2023.
//

import SwiftUI

struct ContentView: View {
    let divisionList = Division.examples
    @State private var currentStudentIndex = 0
    
    var body: some View {
        let firstDivision = divisionList[0]
        let currentStudent = firstDivision.students[currentStudentIndex]
        let firstName = currentStudent.firstName
        let surname = currentStudent.surname
        let birthday = currentStudent.birthday
        
        VStack {
            Form {
                Text("This student is \(firstName) \(surname), \nand their birthday is \(birthday).")
                    .frame(width: 200)
            }
            Button("Next student") {
                if currentStudentIndex < firstDivision.students.count - 1 {
                    currentStudentIndex += 1
                } else {
                    currentStudentIndex = 0
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

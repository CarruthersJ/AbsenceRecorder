//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 04/02/2023.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        self.isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(firstName: "Alexander", surname: "Bosch", birthday: Date()))
    #endif
}

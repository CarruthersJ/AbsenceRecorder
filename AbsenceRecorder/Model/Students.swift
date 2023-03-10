//
//  Students.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 20/01/2023.
//

import Foundation

class Student: Codable {
    let firstName: String
    let surname: String
    let birthday : Date
    
    init(firstName: String, surname: String, birthday: Date) {
        self.firstName = firstName
        self.surname = surname
        self.birthday = birthday
    }
    
#if DEBUG
    static let example = Student(firstName: "Roberto", surname: "Baggio", birthday: Date())
    
    static let examples = [Student(firstName: "Roberto", surname: "Baggio", birthday: Date())]
#endif
}

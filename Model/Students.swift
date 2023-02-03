//
//  Students.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 20/01/2023.
//

import Foundation

class Student {
    let firstName: String
    let surname: String
    let birthday : Date
    
    init(firstName: String, surname: String, birthday: Date) {
        self.firstName = firstName
        self.surname = surname
        self.birthday = birthday
    }
}

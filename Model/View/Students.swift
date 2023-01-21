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
    let birthday : String
    
    init(firstName: String, surname: String, birthday: String) {
        self.firstName = firstName
        self.surname = surname
        self.birthday = birthday
    }
}

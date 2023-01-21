//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 20/01/2023.
//

import Foundation

class Division {
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        // loop as many times as the parameter size says to create Students and add them to the students property
        for i in 1 ... size {
            let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
            let dateOfMonth = Int.random(in: 1 ... 30)
            let monthNumber = Int.random(in: 1 ... 12)
            let yearNumber = Int.random(in: 2005 ... 2006)
            let dateOfBirth = "\(dateOfMonth)/\(monthNumber)/\(yearNumber)"
            
            let student = Student(firstName: "Student Number \(i)", surname: "\(alphabet.randomElement()!)", birthday: dateOfBirth)
            division.students.append(student)
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "CComX-1", of: 12),
                           Division.createDivision(code: "CCheW-1", of: 14),
                           Division.createDivision(code: "CMsiV-1", of: 11),
                           Division.createDivision(code: "CPhyZ-1", of: 13),
                           Division.createDivision(code: "CPer6-7", of: 19)]
    #endif
}

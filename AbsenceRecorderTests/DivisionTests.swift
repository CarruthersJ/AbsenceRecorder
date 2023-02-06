//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Jamie Carruthers on 05/02/2023.
//

import XCTest
@testable import AbsenceRecorder

final class DivisionTests: XCTestCase {

    func testGetAbsenceForADivisionWithAnAbsenceOnThatDayReturnsAnAbsence() throws {
        //arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let dateFuture = Date(timeIntervalSinceNow: 100000000000000000)
        let absence1 = Absence(date: dateFuture, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        //act
        
        let actual = division.getAbsence(for: dateLaterToday)
        
        //assert
        XCTAssertNotNil(actual)
        if let actualNotNil = actual {
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }
       
        
    }
    func testAbsenceCreatedIfNoAvailableAbsence() throws {
        let division = Division(code: "TestDiv2")
        let currentDate = Date()
        let absence1 = division.createAbsenceOrGetExistingIfAvailable(for: currentDate)
        division.absences.append(absence1)
        
        XCTAssertNotNil(absence1)
    }
    

}

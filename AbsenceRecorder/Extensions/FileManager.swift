//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 23/02/2023.
//

import Foundation

extension FileManager {
    private func getPathToFile() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        return userPath
    }
}

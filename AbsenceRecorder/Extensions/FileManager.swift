//
//  FileManager.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 23/02/2023.
//

import Foundation

extension FileManager {
    func getPathToFile(fileName: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(fileName)
        return url
    }
    
    func save() {
        
    }
}

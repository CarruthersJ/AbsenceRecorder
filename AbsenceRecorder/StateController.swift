//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Jamie Carruthers on 03/02/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        divisions = Division.examples
        
    }
    func getPathToFile(fileName: String) -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(fileName)
        return url
    }
    
    
    func loadFromFile () {
        // get url to the file that you want to load from
        let url = getPathToFile(fileName: "divisions.json")
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
        
    }
    
    func saveToFile() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(divisions) {
            if let json = String(data: encoded, encoding: .utf8) {
                let url = getPathToFile(fileName: "divisions.json")
                do {
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
            
    }
    
}

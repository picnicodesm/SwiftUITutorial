//
//  ModelData.swift
//  Landmarks

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_  filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

/*
 앱의 main bundle에서부터 받은 JSON 데이터를 fetch하는 load 메소드를 작성한다.
 */
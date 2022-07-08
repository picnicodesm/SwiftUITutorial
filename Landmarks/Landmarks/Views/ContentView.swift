//
//  ContentView.swift
//  Landmarks


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LandmarkList()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

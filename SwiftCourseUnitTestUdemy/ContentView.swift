//
//  ContentView.swift
//  SwiftCourseUnitTestUdemy
//
//  Created by Sophia Paulette Muñoz Pailamilla on 23-01-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

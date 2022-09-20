//
//  ContentView.swift
//  ServiceLocator
//
//  Created by Truong Pham on 20/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
    
    init() {
        registerModues([AppModule(), ViewModelModule()])
        let sampleService1 : SampleService = ServiceLocator.shared.get()
        let sampleService2 : SampleService = ServiceLocator.shared.get()
        let sampleViewModel : SampleViewModel = ServiceLocator.shared.get()
        print(sampleService1)
        print(sampleService2)
        print(sampleViewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

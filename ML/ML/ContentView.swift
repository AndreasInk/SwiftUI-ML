//
//  ContentView.swift
//  ML
//
//  Created by Andreas Ink on 11/20/20.
//

import SwiftUI
import CoreML
import Vision


struct ContentView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: UIImage? = UIImage(systemName: "xmark")
    @State var prediction = "Select Image"
    
 
    var body: some View {
        ZStack {
            CustomCameraRepresentable()
                .onAppear() {
                    let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                        prediction = predictions
                    }
                }
            VStack {
           Spacer()
                Text(prediction)
                    .font(.title)
            }
           
        }
        }
    }
    
    

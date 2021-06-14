//
//  LottieView.swift
//  SwiftUI-LottieAnimations
//
//  Created by Zhaisan on 14.06.2021.
//

import Foundation
import Lottie
import SwiftUI
import UIKit

struct LottieView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    
    var fileName: String
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        
        let view = UIView(frame: .zero)
        
        //add animation
        let animationView = AnimationView()
        animationView.animation = Animation.named(fileName)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        // do nothing
    }
    
    
}

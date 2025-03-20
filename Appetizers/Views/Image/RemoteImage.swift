//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Arun Mariyaan on 18/3/2025.
//

import SwiftUI
import UIKit

final class ImageLoader: ObservableObject {
    
   @Published var image: Image? = nil
    
    func loadImage(fromURLString urlString: String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizerRemoteImage: View {
    
    @StateObject var imageLoader = ImageLoader()
    var urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear() {
                imageLoader.loadImage(fromURLString: urlString)
            }
    }
}

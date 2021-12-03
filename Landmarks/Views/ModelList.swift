/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct ModelList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { model in
                NavigationLink {
                    ModelDetail(model: model)
                } label: {
                    ModelRow(model: model)
                }
            }
            .navigationTitle("Model List")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone 11 Pro Max", "iPhone XR"], id: \.self) { deviceName in
                ModelList()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
        }
    }
}

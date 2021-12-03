/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct ModelDetail: View {
    var model: Model

    var body: some View {
        ScrollView {
            MapView(coordinate: model.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: model.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(model.modelName)
                    .font(.title)

                HStack {
                    Text(model.parkName)
                    Spacer()
                    Text(model.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("\(model.modelName) Details")
                    .font(.title2)
                Text(model.description)
            }
            .padding()
        }
        .navigationTitle(model.modelName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ModelDetail_Previews: PreviewProvider {
    static var previews: some View {
        ModelDetail(model: landmarks[0])
    }
}

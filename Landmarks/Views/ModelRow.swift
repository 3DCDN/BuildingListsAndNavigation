/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A single row to be displayed in a list of landmarks.
*/

import SwiftUI

struct ModelRow: View {
    var model: Model

    var body: some View {
        HStack {
            model.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(model.modelName)

            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ModelRow(model: landmarks[0])
                .previewInterfaceOrientation(.portrait)
                .padding(.horizontal)
            ModelRow(model: landmarks[1])
                .previewInterfaceOrientation(.portrait)
                .padding(.horizontal)
        }
        .previewLayout(.fixed(width: 300, height: 100))
        
    }
}

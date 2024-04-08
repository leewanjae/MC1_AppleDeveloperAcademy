import SwiftUI

struct CategoriesBtn: View {
    var text: String
    var backgroundColor: Color
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundColor(.black)
                .padding()
                .background(backgroundColor)
                .clipShape(Capsule())
        }
    }
}

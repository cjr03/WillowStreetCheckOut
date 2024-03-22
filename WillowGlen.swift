import SwiftUI

struct WGView: View {
    var body: some View {
            ZStack {
                Color(.red)
                    .ignoresSafeArea()
                VStack() {
                    Spacer()
                    Image("WSpizza")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(radius: 15)
                        .padding(.horizontal, 150.0)
                    VStack(alignment: .center, spacing: 25) {
                        Text("Willow Glen Tip Out")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        VStack(){
                            Text("Coming Soon!")
                                .bold()
                                .font(.title)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                            }
                        .padding(.all, 30.0)
                        .background(Rectangle())
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(color: .white, radius: 10)
                        .padding(.all, 10.0)
                    }
                    .padding(.all, 25.0)
                    .background(Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(15)
                        .shadow(radius: 15))
                    .padding(.all, 25.0)
                    Spacer()
                }
                .padding(.bottom, 200.0)
        }
    }
}

struct WGView_Previews: PreviewProvider {
    static var previews: some View {
        WGView()
    }
}

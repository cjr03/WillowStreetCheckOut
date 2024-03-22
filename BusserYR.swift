import SwiftUI

struct COView: View {
    @EnvironmentObject var appInfo: AppInformation
    @State private var nextScreen = false
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
                        Text("Select Busser Tip")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        VStack(){
                            HStack {
                                NavigationLink(destination: FinalView(), isActive: $nextScreen) {
                                    Button {
                                        appInfo.busserTip = 0.17
                                        nextScreen = true
                                    } label: {Text("17%")
                                        .bold()
                                        .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .background(Rectangle()
                                        .foregroundColor(.red)
                                        .cornerRadius(15))
                                    }}
                                NavigationLink(destination: FinalView(), isActive: $nextScreen) {
                                    Button {
                                        appInfo.busserTip = 0.18
                                        nextScreen = true
                                    } label: {Text("18%")
                                        .bold()
                                        .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .background(Rectangle()
                                        .foregroundColor(.red)
                                        .cornerRadius(15))
                                    }}
                            }.padding(.vertical, 20.0)
                            HStack {
                                NavigationLink(destination: FinalView(), isActive: $nextScreen) {
                                    Button {
                                        appInfo.busserTip = 0.19
                                        nextScreen = true
                                    } label: {Text("19%")
                                        .bold()
                                        .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .background(Rectangle()
                                        .foregroundColor(.red)
                                        .cornerRadius(15))
                                    }}
                                NavigationLink(destination: FinalView(), isActive: $nextScreen) {
                                    Button {
                                        appInfo.busserTip = 0.20
                                        nextScreen = true
                                    } label: {Text("20%")
                                        .bold()
                                        .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .background(Rectangle()
                                        .foregroundColor(.red)
                                        .cornerRadius(15))
                                    }}
                            }.padding(.vertical, 20.0)
                        }
                        .padding(.all, 10.0)
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

struct COView_Previews: PreviewProvider {
    static var previews: some View {
        COView()
    }
}

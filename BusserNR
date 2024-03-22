import SwiftUI

struct CONRView: View {
    @EnvironmentObject var appInfo: AppInformation
    @State private var b17 = false
    @State private var b18 = false
    @State private var b19 = false
    @State private var b20 = false
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
                                NavigationLink(destination: NRFinalView(), isActive: $b17) {
                                    Button {
                                        appInfo.busserTip = 0.17
                                        b17 = true
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
                                NavigationLink(destination: NRFinalView(), isActive: $b18) {
                                    Button {
                                        appInfo.busserTip = 0.18
                                        b18 = true
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
                                NavigationLink(destination: NRFinalView(), isActive: $b19) {
                                    Button {
                                        appInfo.busserTip = 0.19
                                        b19 = true
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
                                NavigationLink(destination: NRFinalView(), isActive: $b20) {
                                    Button {
                                        appInfo.busserTip = 0.20
                                        b20 = true
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

struct CONRView_Previews: PreviewProvider {
    static var previews: some View {
        CONRView()
    }
}

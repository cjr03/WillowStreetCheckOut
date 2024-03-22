import SwiftUI

struct SView: View {
    @EnvironmentObject var appInfo: AppInformation
    @State private var nr = false
    @State private var yr = false
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
                        Text("Los Gatos Tip Out")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        VStack(){
                            
                            Text("Was a Runner Working Today?")
                                .bold()
                                .font(.headline)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .padding(.top, 30.0)
                            HStack {
                                Spacer()
                                NavigationLink(destination: NRView(), isActive: $nr) {
                                    Button {
                                        appInfo.runner = false
                                        nr = true
                                    } label: {Text("No ")
                                        .bold()
                                        .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .background(Rectangle()
                                        .foregroundColor(.red)
                                        .cornerRadius(15))
                                    }}
                                Spacer()
                                NavigationLink(destination: YRView(), isActive: $yr) {
                                    Button {
                                        appInfo.runner = true
                                        yr = true
                                    } label: {Text("Yes")
                                        .bold()
                                        .font(.subheadline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .padding(.horizontal, 20)
                                    .background(Rectangle()
                                        .foregroundColor(.red)
                                        .cornerRadius(15))
                                    }}
                                Spacer()
                            }.padding(.vertical, 25.0)
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

struct SView_Previews: PreviewProvider {
    static var previews: some View {
        SView()
    }
}

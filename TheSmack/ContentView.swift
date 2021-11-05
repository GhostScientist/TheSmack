//
//  ContentView.swift
//  TheSmack
//
//  Created by Dakota Kim on 11/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { proxy in
                    if proxy.size.width < proxy.size.height {
                        VStack {
                        HStack {
                            Image(systemName: "hand.wave.fill").font(.system(size: 32))
                            Text("THE SMACK")
                                .font(.largeTitle)
                                .padding()
                        }.frame(alignment: .top)
                            HStack {
                                Button(action: {
                                          print("camera button pressed")

                                        }) {
                                            Image(systemName: "camera.fill").font(.system(size: 32))
                                        }
                                Button(action: {
                                          print("mail button pressed")

                                        }) {
                                            Image(systemName: "envelope.fill").font(.system(size: 32))
                                        }
                            }
                            Image(systemName: "brain.head.profile").font(.system(size: 128))
                            Text("Rex Powers").font(.largeTitle).textCase(.uppercase)
                            TextEditingView()
                            HStack {
                                Spacer()
                            }
                    }
                    } else {
                        HStack {
                        HStack {
                            Image(systemName: "hand.wave.fill").font(.system(size: 32))
                            Text("THE SMACK")
                                .font(.largeTitle)
                                .padding()
                        }.frame(alignment: .top)
                            VStack {
                                Button(action: {
                                          print("camera button pressed")

                                        }) {
                                            Image(systemName: "camera.fill").font(.system(size: 32))
                                        }
                                Button(action: {
                                          print("mail button pressed")

                                        }) {
                                            Image(systemName: "envelope.fill").font(.system(size: 32))
                                        }
                            }
                            Image(systemName: "brain.head.profile").font(.system(size: 128))
                            LandscapeTextEditingView()
                            HStack {
                                Spacer()
                            }
                    }
                    }
                }
    }
}

struct TextEditingView: View {
    @State private var fullText: String = "This is some editable text..."

    var body: some View {
        TextEditor(text: $fullText).frame(width: 300, height: 350, alignment: .center).padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30)).border(Color.black, width: 1)
    }
}

struct LandscapeTextEditingView: View {
    @State private var fullText: String = "This is some editable text..."

    var body: some View {
        VStack {
            Text("Rex")
            TextEditor(text: $fullText).frame(width: 300, height: 350, alignment: .center).padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30)).border(Color.black, width: 1)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}

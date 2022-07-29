//
//  SwiftyGifView.swift
//  Swiftcord
//
//  Created by Vincent Kwok on 28/7/22.
//

import SwiftUI

struct SwiftyGifView: NSViewRepresentable {
	let url: URL
	var width: Double? = nil, height: Double? = nil

	func makeNSView(context: Context) -> SwiftyGifNSView {
		return SwiftyGifNSView(url: url, width: width, height: height)
	}

	func updateNSView(_ view: SwiftyGifNSView, context: Context) {
		// view.setGifFromURL(url)
	}
}

#if DEBUG

struct MacEditorTextView_Previews: PreviewProvider {
	static var previews: some View {
		SwiftyGifView(url: URL(string: "https://c.tenor.com/0KEvxoQb5a4AAAAC/doubt-press-x.gif")!)
	}
}

#endif

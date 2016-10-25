//
//  PresentationViewController+Slide8.swift
//  RustSideStory
//
//  Created by Christopher Luu on 10/20/16.
//  Copyright © 2016 nuudles. All rights reserved.
//

import UIKit
import RazzleDazzle

// MARK: - Slide 8
extension PresentationViewController {
	func setupSlide8(page: inout CGFloat) {
		NSLog("\(#function): \(page)")

		let iTunesStoreVideoView = VideoView(url: Bundle.main.url(forResource: "iTunesStore", withExtension: "m4v", subdirectory: "Videos"))
		contentView.addSubview(iTunesStoreVideoView)

		let applicationsLabel = titleLabel(text: "APPLICATIONS")
		contentView.addSubview(applicationsLabel)

		let useCasesLabel = UILabel()
		useCasesLabel.font = .systemFont(ofSize: 40)
		useCasesLabel.textColor = .white
		useCasesLabel.numberOfLines = 0
		useCasesLabel.text =
			"• Rust\n" +
			"      • Systems Programming\n" +
			"      • Operating Systems\n" +
			"      • Game Dev\n" +
			"      • Web Development?\n" +
			"      • Anywhere you'd use C++\n" +
			"• Swift\n" +
			"      • iOS/watchOS/tvOS Apps\n" +
			"      • macOS Applications\n" +
			"      • Web Development? (Kitura/Vapor/Perfect)\n" +
			"      • Scripting to operating systems\n"
		contentView.addSubview(useCasesLabel)

		// In the wild. Mozilla? macOS

		let appStoreImageView = UIImageView(image: #imageLiteral(resourceName: "app_store"))
		appStoreImageView.contentMode = .scaleAspectFit
		contentView.addSubview(appStoreImageView)

		iTunesStoreVideoView.snp.makeConstraints { (make) in
			make.top.bottom.width.equalTo(view)
		}
		applicationsLabel.snp.makeConstraints { (make) in
			make.top.equalTo(contentView).offset(30)
		}
		useCasesLabel.snp.makeConstraints { (make) in
			make.top.equalTo(applicationsLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-80)
		}
		appStoreImageView.snp.makeConstraints { (make) in
			make.top.equalTo(applicationsLabel.snp.bottom).offset(20)
			make.width.equalTo(view).offset(-100)
			make.height.equalTo(view).offset(-200)
		}

		keepView(iTunesStoreVideoView, onPage: page)
		keepView(applicationsLabel, onPages: page+1...page+2)
		keepView(useCasesLabel, onPage: page + 1)
		keepView(appStoreImageView, onPage: page + 2)

		page += 3
	}
}

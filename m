Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14CB8AB6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 01:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7pHmG3xHGDZbHpQHdth6rkCJnD0NJwl04YBg2kkJoVw=; b=UxByqb6WR8pnMJ
	EaMDRuxAWWV4zGbWU/iaFDBlTfHmrFS9wgS13N872Wdc1AXjKWteLltwiNHmsRmXmC5h3X9OM/5PV
	4Vuvv9E8dWM1Pna5XSZuyqUR6XPC7RFcZ6m9QWwAsV5PUb6o6GcCovVx4KCfk9HxvrmG7UNQ/ZMkv
	D4mLCR4QzVodR7FiyMIXIyw3tFlY+0jbMSybWI6zEY64Vbb+ppBPSXi4gFWMPQufQqDcgDlw7mAi1
	zHYFqZEgtg20euXygqjLDGZv32dkhcGiKFusuhBN44aSwTlma3fPbbt9+rZOLH3dXIfSjC9WbfW+M
	0pipBGhP0QvdDpJ2IhvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxK4J-00034z-PY; Mon, 12 Aug 2019 23:49:39 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxK47-00034N-S4
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 23:49:29 +0000
Received: by mail-pg1-x543.google.com with SMTP id r26so14321278pgl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 16:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=TVGgo0zksBDaPs/9V0AiD7GJ//qvTyql6PCEDIReDJM=;
 b=JNdvWFQzIQ78Ee5LRZT1pvz/l5pxcveu3JQgK8Qc8eeh/UXUlm8abSkmtF3izqwI86
 sukJIz70OXya+sz7YmvPEdih/RVnuk4WiMJh27iHYfXCv5gzSlfvI8hNJbyDIm1zi2yT
 Mt7tXYDSUGbwDzBAeCOzl0XQRHUlYjNBz08RNbOzEddW2ZdWfgVejB41veuoOaO2CZqh
 iXDItyDGK1bQ42X7Q+/JO7Fq2EyCmsUYV4CTpyJXMWWPB6ANZCkhVmqVko7luUcCWEC7
 m4fAsOJtBfKp56AGZ4SL25ps/PqH4bD/IgIxx/zJO7XUZWUYeMrUpaeu9XCTr5Kdngcw
 BJ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=TVGgo0zksBDaPs/9V0AiD7GJ//qvTyql6PCEDIReDJM=;
 b=qwpg0/8QttzF7xmReEKpH9QUx8Me79UNJViCHQyYrIgWbMu8/Q6LwhYcuXBY1n9EQJ
 UOqmiUYAzRkNx8YnB3KsINjCXj8VabCEoj0cssl1nR5OA1eoxfPZk/VvQ8YdbxzZ1Z8j
 646enOX6h2zZPu3l2L3fUHVVHH+HdgGSZ0hEdGaz08bzE0Dy0FcLDZM5MGK5HhnaePW1
 5quPFWGb8NXBNVJ7ssNz/XJ4vov5tvWqNpBQvZXdcJ7sqHcjWtWbys0gHJ5hwOnDi2JM
 IFG2CcBf2G4o/abATABIPdH/HnAA00BqZ2LRBLjfHBlM/adZ18WDi87G9iGYlD7+lWma
 q3yQ==
X-Gm-Message-State: APjAAAUYHw2atzx97B+2oXUcfwQiHnPZR99JJ91/3rx4gEFxbVezPBLo
 nwere6IZAk1D/K/uipknSPLh9w==
X-Google-Smtp-Source: APXvYqyiA0KS72VgktwxN8Yq7FTG1lgidXyG979I9fbscnCp9GWmENKrr/N2Yiys2H+nRjo3Szn6Lg==
X-Received: by 2002:a17:90a:26ac:: with SMTP id
 m41mr1604768pje.59.1565653767173; 
 Mon, 12 Aug 2019 16:49:27 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:14bb:580e:e4d6:b3a8])
 by smtp.gmail.com with ESMTPSA id l124sm106824486pgl.54.2019.08.12.16.49.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 12 Aug 2019 16:49:26 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: arm@kernel.org
Subject: [GIT PULL] arm64: dts: Amlogic fixes for v5.3-rc
Date: Mon, 12 Aug 2019 16:49:26 -0700
Message-ID: <7h1rxq0ws9.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_164927_911816_BE54D3B4 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git tags/amlogic-fixes

for you to fetch changes up to dc7f2cb218b5ef65ab3d455a0e62d27e44075203:

  arm64: dts: amlogic: odroid-n2: keep SD card regulator always on (2019-08-05 14:06:55 -0700)

----------------------------------------------------------------
arm64: dts: Amlogic fixes for v5.3-rc
- a few small DT fixes for g12a/g12b platforms

----------------------------------------------------------------
Neil Armstrong (2):
      arm64: dts: meson-g12a: add missing dwc2 phy-names
      arm64: dts: meson-g12a-sei510: enable IR controller

Xavier Ruppen (1):
      arm64: dts: amlogic: odroid-n2: keep SD card regulator always on

 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts    | 6 ++++++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi          | 1 +
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts | 1 +
 3 files changed, 8 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

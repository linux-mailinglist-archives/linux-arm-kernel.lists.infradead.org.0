Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599E811F5B2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 05:26:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eSfcFpksetlue2U/5h86Jue/oYqL+i9BUOKVD92IOz4=; b=eb9Oz1QyjP8Qpm
	ptn2Hls5vzTQopIr9bkmxGjsULQtPSqi0Hy7CpIOu8toEQfV0w60XBCPir8isaWkkxLES/q1YKA9Z
	l0m72LKu7i3adBesrVwj4BMOsqw9R5SdyBk8vBNnZhyIsy8moNQMYovTkA1yb5wa33ligkDKvc8OC
	CGhYr7sbmMIfqon5NAoI+udSPgPhCyUiKy9ZhDkRFjmW7KkIPeBwLgzUkhZou+jkNHb/tBrm0KScv
	NgEVrhOtZmYxMsCLs/1O8kHJoFEVZ/ZXgKZDrI16k9d6xbWM8h7H6oOlRfbolXAAKTgtVidBuUxH5
	a14l01IVTQ2tmGUMLcVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igLTk-0001Fs-Jw; Sun, 15 Dec 2019 04:26:00 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igLSs-0007zK-SW
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 04:25:13 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9B5E45AC7;
 Sat, 14 Dec 2019 23:24:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 14 Dec 2019 23:24:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=yF1ILw6fVT9Ms/aRvWhr5GmNy8
 yCGr3pdt2J77P8Ksg=; b=BV/CcvtMaUwJ5Xkmrafcunww9v4v4S5kcTx99tU1EB
 sOPSEYwERghframe5KVWMwobt2PY4HQNQQu2M1chgX+ubpFEf3J8XO3qD4JJxmln
 RflPCYFWyHYjDGPo78fb47HlR078gaPkLsEdr9P9jqliVCTo1SY7AJ6Hp6rWd8r7
 W5DBV/pMMSJkh1q0OIQIBhbSExv75caTPQgBunbHvXNqGH4vSRUFdyKso0gdEgM8
 0onhPU13x8uBGlfOA8LWsEv03wWaPsxzbIfiZnlnV6Fy7uI7HbSi6igzK+X/cb3n
 zvG7ebfYEYT56dV/G5nuOu1eYZqjq36OhZCZy7RGnQAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=yF1ILw6fVT9Ms/aRv
 Whr5GmNy8yCGr3pdt2J77P8Ksg=; b=TTQOvW6r9Mi392k9GGi6muC4N+pNtQ0Xm
 GdWhR+xYvDth+aBUAQdmPL/NmyJcHOcCwhhdoqed8QlH0hqrAVK6M9vJ+iolQ51o
 tybj41uNSMpYU/HPiznEFifdy/VzsCUbOLw87LXXKwB0dJANNXhQwfGCu4pb8GD6
 7zoDYpbfXvxsFgVmUnoXCrhPGyIlKQkH5Bn0uPnpn6N6WFpjuezhxMmYUXUwUuX0
 btYLyeaZ7K1D8fKxLnGrrTEEsQIv/cqF6UiOCt+EXXNDtVdLGzmkkVrhNnAGUY4z
 63iWDlkgSRUlLr7ZDRAV2K7d/mD5Qid43lMtdemyYwn+tBfg4yB/A==
X-ME-Sender: <xms:mbX1XSkQcijX_Y6EzV-uhI2a9R45QZY5H9LY2SSO8tivwy6LVJIpbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtvddgieelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkphepje
 dtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghmuhgv
 lhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:mbX1XfHA4DWZTjW_wQrEfGKPsFvCpNrWl6sarDuEFlgi5KMgA1K4_Q>
 <xmx:mbX1XSVMypIjxbOqYHykcFy4kPMrcwFCew_zUWsipqB1yqKG1kG8kg>
 <xmx:mbX1Xeyf8LwH_9K-1dQEO830eTGigJUaAxK_Zx2PTGAq6J1Yas7iHA>
 <xmx:mrX1XYRbkjBPBJSJfIXXEqhDzpdYk8PWkZBxxL5FMcffXggFEGcI6A>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id B5ACC80060;
 Sat, 14 Dec 2019 23:24:56 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Ondrej Jirman <megous@megous.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v5 0/8] Allwinner sun6i message box support
Date: Sat, 14 Dec 2019 22:24:47 -0600
Message-Id: <20191215042455.51001-1-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_202507_128869_65B8B962 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds support for the "hardware message box" in sun8i, sun9i,
and sun50i SoCs, used for communication with the ARISC management
processor (the platform's equivalent of the ARM SCP). The end goal is to
use the arm_scpi driver as a client, communicating with firmware running
on the ARISC CPU.

I have tested this driver with various firmware programs on the A64, H5,
and H6 SoCs (including specifically this arm_scpi patch on A64 and H6),
and Ondrej Jirman has tested the driver on the A83T (using a similar
patch to arm_scpi).

The change to make the arm_scpi compatible with unidirectional mailbox
controllers is attached to the end of this patch series. While it would
be nice to get this merged too, I don't consider it a prerequisite to
getting the driver merged. And even without the driver, the clock change
(patch #1) can go in at any time.

Thanks,
Samuel

Changes from v4:
  - Rebased on sunxi-next
  - Dropped AR100 clock patch, as it was controversial and unnecessary
  - Renamed sunxi-msgbox to sun6i-msgbox and sun6i-a31-msgbox
  - Added comments about not asserting the reset line
  - Dropped A80 DTS changes as they were untested
  - Added Ondrej's Tested-by for A83T
  - Dropped the demo; replaced with a real arm_scpi fix

Changes from v3:
  - Rebased on sunxi-next
  - Added Rob's Reviewed-by for patch 3
  - Fixed a crash when receiving a message on a disabled channel
  - Cleaned up some comments/formatting in the driver
  - Fixed #mbox-cells in sunxi-h3-h5.dtsi (patch 7)
  - Removed the irqchip example (no longer relevant to the fw design)
  - Added a demo/example client that uses the driver and a toy firmware

Changes from v2:
  - Merge patches 1-3
  - Add a comment in the code explaining the CLK_IS_CRITICAL usage
  - Add a patch to mark the AR100 clocks as critical
  - Use YAML for the device tree binding
  - Include a not-for-merge example usage of the mailbox

Changes from v1:
  - Marked message box clocks as critical instead of hacks in the driver
  - 8 unidirectional channels instead of 4 bidirectional pairs
  - Use per-SoC compatible strings and an A31 fallback compatible
  - Dropped the mailbox framework patch
  - Include DT patches for SoCs that document the message box

Samuel Holland (8):
  clk: sunxi-ng: Mark msgbox clocks as critical
  dt-bindings: mailbox: Add a sun6i message box binding
  mailbox: sun6i-msgbox: Add a new mailbox driver
  ARM: dts: sunxi: a83t: Add msgbox node
  ARM: dts: sunxi: h3/h5: Add msgbox node
  arm64: dts: allwinner: a64: Add msgbox node
  arm64: dts: allwinner: h6: Add msgbox node
  firmware: arm_scpi: Support unidirectional mailbox channels

 .../mailbox/allwinner,sun6i-a31-msgbox.yaml   |  78 ++++
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  10 +
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            |  10 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  10 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  10 +
 drivers/clk/sunxi-ng/ccu-sun50i-a64.c         |   3 +-
 drivers/clk/sunxi-ng/ccu-sun50i-h6.c          |   3 +-
 drivers/clk/sunxi-ng/ccu-sun8i-a23.c          |   3 +-
 drivers/clk/sunxi-ng/ccu-sun8i-a33.c          |   3 +-
 drivers/clk/sunxi-ng/ccu-sun8i-a83t.c         |   3 +-
 drivers/clk/sunxi-ng/ccu-sun8i-h3.c           |   3 +-
 drivers/clk/sunxi-ng/ccu-sun9i-a80.c          |   3 +-
 drivers/firmware/arm_scpi.c                   |  58 ++-
 drivers/mailbox/Kconfig                       |   9 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/sun6i-msgbox.c                | 332 ++++++++++++++++++
 16 files changed, 520 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sun6i-a31-msgbox.yaml
 create mode 100644 drivers/mailbox/sun6i-msgbox.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

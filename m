Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638A795522
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K8jiVOqb1J8WQxkyxp4WuPz2S/e2qV+V+TFHE8UFj98=; b=mdTJNktB6jHi6b
	CSWJzacaQ8l4dXLLWEQ96UoZaTVzDWujGRNAORUDx1YVeaLd8ApSmyV+w1TPbgvzzdf8HuFPjYEBm
	5i6l6dSUdr3LrET6OHbIrQAZh3E4TYd6/9YuWy6kXrS0nWdbv1bJbTK52EJIN1J9rvs3ZRSOYDTvq
	lrioI78R1hQSWfLXt4vGlsT0ASrP07Q/DSVKTKM7rTjeIGYJe+Q5Aw/pjmFexBQM7/I1yhRIxNGL8
	BIKQTIxdRfEkwEcM+E2DY/P0WCp+r4p89XtdHejcRmxOVswrRWm2QmSMixZi9S7SfgRjB8sXoIWW+
	Jn3MTeQ2glTwlBTvPoUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzulS-0004Fb-0P; Tue, 20 Aug 2019 03:24:54 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzujt-000323-9k
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:19 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 893FA3510;
 Mon, 19 Aug 2019 23:23:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=9DYoy8NT9Ve7hFzyo3H6iPPmEA
 CpZOYKDnCzHCSrpbQ=; b=4M37PdQBCN/w6RTxxDoqh8EXYO5p4e3lRIbFwuRFpx
 xFN2vbw5G1DuPYMDJ1SKOpVrLfHxkdl3X1G93HgwHSVioOg63/micK86dWFRw0jE
 vaqJYzCDGdu+x39wFXjpqrOiR/NhEn20fAr4IK8z8hlRx+f5QLvyaimyef1UIiHJ
 dmtFD/e7m1BT+Rskj6EmHduJcxLiF/6ROGf6EZvhY8/s4iF2a7crTfu2jEKVQPTy
 LfxHV7DHBzGcaf7yaAw5+spV95x/NMnvnr04a1llb7nDlU8lQdtBh5Ma4D/yv8U5
 Sm4cPMmg8HVQCHsaGSTe4KbOUnxaf+MoHkF2RWnNdPMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=9DYoy8NT9Ve7hFzyo
 3H6iPPmEACpZOYKDnCzHCSrpbQ=; b=Ygys0yOa27lYONkNyUqaJ0xRhBRCmHouO
 ms0Y9NviXXDmwmyFFRZtHxj2stQLzwDLXHdkRhvQmNjmQamB9Lt/GmYGWFSCuGt5
 n2uZvPm6IL2dgWkpoWHFpa1pyt23On0FQqzm+ThHUznjz1WSUZDd6AhEISvd06aH
 AB4xiqmXfMYfRm+6JyS9FnQ8Kkwjdg4NAAL/VPhriLCaFQosPXnT3raPYR9OEGGi
 EEb7BWIHHLSB7U7dPeYO7fSYKrXp1R1d/bsbwGAKRn6DSyWMtRM102ZOh5hQOz1z
 Iqo+agaukFYVOBs9FA9WhZRB/oNzv4KMBILau1z4OW/kkfkLthW+w==
X-ME-Sender: <xms:n2dbXXEsXSS3x9kPpQyV5o-MSjkYRIZ7XSamxV-ILJqOTLVT1lRI6Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
 jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucffohhmrg
 hinhepghhithhhuhgsrdgtohhmnecukfhppeejtddrudefhedrudegkedrudehudenucfr
 rghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrghenuc
 evlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:n2dbXYln6shx_YGrmWhxqsz81-p18uZ7tYpm7TgAYtv8kuOGZxR23A>
 <xmx:n2dbXUIYyiaFSA3_N0Wwa1XupWFv3RvXEnr4yh08WP97zQPaz_HUBA>
 <xmx:n2dbXZaprr3dAZARO1jWYZSAVXq4JIY_y51SyJn4LhIn5vayVF31-A>
 <xmx:oGdbXYmoo9G4d1TqUl-0LKunnaY7WbhJIp0i1S3cgTwMYlpCcHdeYQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 38A688005C;
 Mon, 19 Aug 2019 23:23:10 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 00/10] Allwinner sunxi message box support
Date: Mon, 19 Aug 2019 22:23:01 -0500
Message-Id: <20190820032311.6506-1-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202317_475873_39A3C785 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
on the AR100 CPU, or to use the mailbox to forward NMIs that the
firmware picks up from R_INTC.

Unfortunately, the ARM SCPI client no longer works with this driver
since it now exposes all 8 hardware FIFOs individually. The SCPI client
could be made to work (and I posted proof-of-concept code to that effect
with v1 of this series), but that is a low priority, as Linux does not
directly use SCPI with the current firmware version; all SCPI use goes
through ATF via PSCI.

As requested in the comments to v3 of this patchset, a demo client is
provided in the final patch. This demo goes along with a toy firmware
which shows that the driver does indeed work for two-way communication
on all channels. To build the firmware component, run:

  git clone https://github.com/crust-firmware/meta meta
  git clone -b mailbox-demo https://github.com/crust-firmware/crust meta/crust
  cd meta
  make

That will by default produce a U-Boot + ATF + SCP firmware image in
[meta/]build/pinebook/u-boot-sunxi-with-spl.bin. See the top-level
README.md for more information, such as cross-compiler setup.

I've now used this driver with three separate clients over the past two
years, and they all work. If there are no remaining concerns with the
driver, I'd like it to get merged.

Even without the driver, the clock patches (1-2) can go in at any time.

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

Samuel Holland (10):
  clk: sunxi-ng: Mark msgbox clocks as critical
  clk: sunxi-ng: Mark AR100 clocks as critical
  dt-bindings: mailbox: Add a sunxi message box binding
  mailbox: sunxi-msgbox: Add a new mailbox driver
  ARM: dts: sunxi: a80: Add msgbox node
  ARM: dts: sunxi: a83t: Add msgbox node
  ARM: dts: sunxi: h3/h5: Add msgbox node
  arm64: dts: allwinner: a64: Add msgbox node
  arm64: dts: allwinner: h6: Add msgbox node
  [DO NOT MERGE] drivers: firmware: msgbox demo

 .../mailbox/allwinner,sunxi-msgbox.yaml       |  79 +++++
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  10 +
 arch/arm/boot/dts/sun9i-a80.dtsi              |  10 +
 arch/arm/boot/dts/sunxi-h3-h5.dtsi            |  10 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  34 ++
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  24 ++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  10 +
 drivers/clk/sunxi-ng/ccu-sun50i-a64.c         |   3 +-
 drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c        |   2 +-
 drivers/clk/sunxi-ng/ccu-sun50i-h6.c          |   3 +-
 drivers/clk/sunxi-ng/ccu-sun8i-a23.c          |   3 +-
 drivers/clk/sunxi-ng/ccu-sun8i-a33.c          |   3 +-
 drivers/clk/sunxi-ng/ccu-sun8i-a83t.c         |   3 +-
 drivers/clk/sunxi-ng/ccu-sun8i-h3.c           |   3 +-
 drivers/clk/sunxi-ng/ccu-sun8i-r.c            |   2 +-
 drivers/clk/sunxi-ng/ccu-sun9i-a80.c          |   3 +-
 drivers/firmware/Kconfig                      |   6 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/sunxi_msgbox_demo.c          | 307 +++++++++++++++++
 drivers/mailbox/Kconfig                       |  10 +
 drivers/mailbox/Makefile                      |   2 +
 drivers/mailbox/sunxi-msgbox.c                | 323 ++++++++++++++++++
 22 files changed, 842 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mailbox/allwinner,sunxi-msgbox.yaml
 create mode 100644 drivers/firmware/sunxi_msgbox_demo.c
 create mode 100644 drivers/mailbox/sunxi-msgbox.c

-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

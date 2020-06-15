Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23431F91BD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h8o9OJ4OCC9htLyjoyPzUES+nsQtU2GkkwydqzY5/Dk=; b=U7PkyrFig8fvY9
	TmhvbxpjaUvkpjSCz9OMbkq6T3k3HRaYK2wNn7xSfNeXSSjsekznW6WpQ2XL4G1F1o7lC05PKC49d
	QWT+M+YggFz6z7iRPI0ZpFWLmQ0zvI8Fqm2ym/6fIV4z0hkQNFTVUjhs0bE+flP+tjgavjNW92l7a
	SjkL+2inaIja/MA+gRKKOVZ/tED5caoRmetgkAd1Mn3EsJTGEpsSqkgYO5zlKIDl5pEmilcjKda47
	cWrz0h+S3ufneefCIhUHuB5QLxXnL0QPR4WQhCUEYe+NKJJTYp6OgONRWe4Zrpw+FGT31CcBJICXS
	V+pAP8wvoPLPqI6iLLVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkgx-0001jb-4o; Mon, 15 Jun 2020 08:42:07 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgH-0001Vv-2K; Mon, 15 Jun 2020 08:41:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A708058014B;
 Mon, 15 Jun 2020 04:41:22 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=+bVqouurUT66sh/V7qCOyewZgm
 Om4zf5CsQ/aE+/nKM=; b=kSWtpuY7oh3nIVsB84U6kHntMyzLB0ovAVGNekE7np
 4ivgzbWK5JYFKUMhlcFd3C/nHb24yGvLtD1k12L8b5mM2GGnrmX0d47Y2dtN+ziA
 eqj1Uz+jKw4jT+yakN9U9bn9cHGQEsUN41K4oYYi/97opR/WebbXQsWRr48bY+GO
 qbRIb7n6A0eT91SM/lgcEBe6lpQZzUh0tmAZrvWN7l37fcqcNaMGtANg1knYsHr5
 cVUxAShxxnsoPI6UJ+Xo3X/UOXf+eUa7vZ4pEoMUwYaxSrOtAdKS7I3EHYvyAqyj
 bk5IXU35J/10o/NuWhEboR4bN/qpSwI+rvaj30XIkm7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=+bVqouurUT66sh/V7
 qCOyewZgmOm4zf5CsQ/aE+/nKM=; b=NWj7ObKcJQBQy+eooDtaDS2Ih/HIGgCGh
 WhVqoSjo5CsmyejghNKWR83bOtfkd00RD/v72A/VRSZQhQ0zBt4wq6uhoVZiyj+z
 umLJpy+FTqiacJxT9xVIiJUMogJk+CFbLv/fg1oN3nr5PWWeeIEpBpPz/y6Ft4Di
 tpn/vodjy0/u2LQ5P+4R/dyRl5J0XmvZou+d+SZhQ3QRRSkxezQHsJkQOLy4hQP2
 7DKNx/z4yI3J6wlDClmNJQPsHwlP/weUxRz7HH5hshhp+/nI93+ZX2MGlSHte0G7
 YqO/l0/vIfjg+XA8/Ew8r5nOsuOy636BRHtGigXJaU6jkt8qwj0/A==
X-ME-Sender: <xms:MDTnXnpsfFhhR2bsMQHexTsgsblBhHRS5T-6Dfx4QAxc3Cy3DWk8TQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcu
 tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvg
 hrnhepjeffheduvddvvdelhfegleelfffgieejvdehgfeijedtieeuteejteefueekjeeg
 necukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:MDTnXhro3Yr_tKP-qPuJLu8iXlGaa--icM2hbEkqPnVdAooS55MneA>
 <xmx:MDTnXkOHW_pxue5L2YeWi9aEaYSm7YkrvoExN0jQCGwa_3mqdKv3Jg>
 <xmx:MDTnXq41JuW2CM3AHUII2yM7SllYfSwD-zsecLhOBTanerD2FbHf_A>
 <xmx:MjTnXmwwGZSIwjsKQKUlVjD2wzRm5R9TMjedPgAemWXkWppyKlfS3w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 33FDE3280064;
 Mon, 15 Jun 2020 04:41:20 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 00/27] clk: bcm: rpi: Add support for BCM2711 firmware
 clocks
Date: Mon, 15 Jun 2020 10:40:40 +0200
Message-Id: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014125_245568_8EC0B04C 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Since the whole DRM/HDMI support began to grow fairly big, I've chosen
to split away the two discussions between the firmware clocks and the
HDMI support.

Let me know what you think,
Maxime

Cc: bcm-kernel-feedback-list@broadcom.com
Cc: devicetree@vger.kernel.org
Cc: Kamal Dasu <kdasu.kdev@gmail.com>
Cc: linux-clk@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>

Changes from v4:
  - Rebased on 5.8-rc1
  - Added more tags
  - Fixed a typo in a variable name

Changes from v3:
  - Moved the firmware structure to the driver, and changed for u32
  - Prevented cache issues with MMIO driver
  - Removed message when discovering min and max rates
  - Added the gathered tags

Changes from v2:
  - Rebased on top of next-20200526
  - Split away from the HDMI series
  - Fixed an of_node leakage in the firmware driver
  - Fixed an of_node leakage in the firmware clocks driver
  - Added the min/max rate retrieval to all the firmware clocks
  - Added proper name for the firmware clocks
  - Removed the PLLB setup from the firmware clocks and moved it back to
    the MMIO driver

Florian Fainelli (1):
  dt-bindings: arm: bcm: Convert BCM2835 firmware binding to YAML

Maxime Ripard (26):
  dt-bindings: clock: Add a binding for the RPi Firmware clocks
  firmware: rpi: Only create clocks device if we don't have a node for it
  clk: bcm: rpi: Allow the driver to be probed by DT
  clk: bcm: rpi: Statically init clk_init_data
  clk: bcm: rpi: Use clk_hw_register for pllb_arm
  clk: bcm: rpi: Remove global pllb_arm clock pointer
  clk: bcm: rpi: Make sure pllb_arm is removed
  clk: bcm: rpi: Remove pllb_arm_lookup global pointer
  clk: bcm: rpi: Switch to clk_hw_register_clkdev
  clk: bcm: rpi: Make sure the clkdev lookup is removed
  clk: bcm: rpi: Use CCF boundaries instead of rolling our own
  clk: bcm: rpi: Create a data structure for the clocks
  clk: bcm: rpi: Add clock id to data
  clk: bcm: rpi: Pass the clocks data to the firmware function
  clk: bcm: rpi: Rename is_prepared function
  clk: bcm: rpi: Split pllb clock hooks
  clk: bcm: rpi: Make the PLLB registration function return a clk_hw
  clk: bcm: rpi: Add DT provider for the clocks
  clk: bcm: rpi: Add an enum for the firmware clocks
  clk: bcm: rpi: Discover the firmware clocks
  clk: bcm: rpi: Give firmware clocks a name
  Revert "clk: bcm2835: remove pllb"
  ARM: dts: bcm2711: Add firmware clocks node
  clk: bcm2835: Allow custom CCF flags for the PLLs
  clk: bcm2835: Don't cache the PLLB rate
  clk: bcm: rpi: Remove the quirks for the CPU clock

 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt  |  14 +---
 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml |  59 ++++++++++++++-
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts                                       |   5 +-
 drivers/clk/bcm/clk-bcm2835.c                                               |  34 ++++++--
 drivers/clk/bcm/clk-raspberrypi.c                                           | 311 +++++++++++++++++++++++++++++++++++++++++++-----------------------------
 drivers/firmware/raspberrypi.c                                              |  14 +++-
 6 files changed, 294 insertions(+), 143 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml

base-commit: b3a9e3b9622ae10064826dccb4f7a52bd88c7407
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

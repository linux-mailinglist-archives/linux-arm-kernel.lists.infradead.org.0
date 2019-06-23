Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055A94F9FD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 06:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dZk5rZo0RI7fWvaoIUf562nu9JblhHP/XpLM/WObKmc=; b=W+3fZ8FLIT7M5n
	mlZ/WEXKakelTnqtiXdce7L7wmkIA3uzE6AAUdyltK2FpaB00XYNtgdsZZw9QcBO52WKNVWyFjCyI
	4kQGMgy02Qf7tZvkVqhOXmiIKumdSeEuhVEn/Du0do3WRyrbvlW+glpYocmUmz8R5tYhkQfsXr4RU
	ivWDhcPUE/0XtxUaoz0KRTxOxDPyRuGkjISvMMX2peUX0M+j84wDCBEP4zYWQsoM7oDEDFu42tRfN
	YuPlCzf0BTFItXI+gWieCMdYXRvdI7h8Iiipxy0GE91RZyYuyvhd13oIwBl0+DALz4VtXxb0mS83K
	FZhuJYqHjloRREM0F9nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heuID-00072B-9z; Sun, 23 Jun 2019 04:39:53 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heuHT-0006i9-3u
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 04:39:08 +0000
Received: from [199.195.250.187] (port=42959 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1heuHJ-0000Oc-AU; Sun, 23 Jun 2019 05:39:01 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 7AB836212D;
 Sun, 23 Jun 2019 04:38:42 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 0/9] Support for Allwinner V3/S3L and Sochip S3
Date: Sun, 23 Jun 2019 12:37:52 +0800
Message-Id: <20190623043801.14040-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 24
X-Spam-Status: No, score=2.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_213907_191676_C8DD9ABD 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset tries to add support for Allwinner V3/S3L and Sochip S3.

Allwinner V3/V3s/S3L and Sochip S3 share the same die, but with
different package. V3 is BGA w/o co-packaged DDR, V3s is QFP w/ DDR2,
S3L is BGA w/ DDR2 and S3 is BGA w/ DDR3. (S3 and S3L is compatible
for pinout, but because of different DDR, DDR voltage is different
between the two variants). Because of the pin count of V3s is
restricted due to the package, some pins are not bound on V3s, but
they're bound on V3/S3/S3L.

Currently the kernel is only prepared for the features available on V3s.
This patchset adds the features missing on V3s for using them on
V3/S3/S3L, and add bindings for V3/S3/S3L. It also adds a S3 SoM by
Sipeed, called Lichee Zero Plus.

Icenowy Zheng (9):
  pinctrl: sunxi: v3s: introduce support for V3
  clk: sunxi-ng: v3s: add the missing PLL_DDR1
  dt-bindings: clk: sunxi-ccu: add compatible string for V3 CCU
  clk: sunxi-ng: v3s: add Allwinner V3 support
  dt-bindings: vendor-prefixes: add SoChip
  ARM: sunxi: dts: s3/s3l/v3: add DTSI files for S3/S3L/V3 SoCs
  dt-bindings: vendor-prefixes: add Sipeed
  dt-bindings: arm: sunxi: add binding for Lichee Zero Plus core board
  ARM: dts: sun8i: s3: add devicetree for Lichee zero plus w/ S3

 .../devicetree/bindings/arm/sunxi.yaml        |   5 +
 .../clock/allwinner,sun4i-a10-ccu.yaml        |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   4 +
 arch/arm/boot/dts/Makefile                    |   1 +
 .../boot/dts/sun8i-s3-lichee-zero-plus.dts    |   8 +
 .../dts/sun8i-s3-s3l-lichee-zero-plus.dtsi    |  44 ++
 arch/arm/boot/dts/sun8i-s3.dtsi               |   6 +
 arch/arm/boot/dts/sun8i-s3l.dtsi              |   6 +
 arch/arm/boot/dts/sun8i-v3.dtsi               |  14 +
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.c          | 244 ++++++++-
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.h          |   6 +-
 drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c     | 473 ++++++++++++++----
 drivers/pinctrl/sunxi/pinctrl-sunxi.h         |   2 +
 include/dt-bindings/clock/sun8i-v3s-ccu.h     |   4 +
 include/dt-bindings/reset/sun8i-v3s-ccu.h     |   3 +
 15 files changed, 704 insertions(+), 117 deletions(-)
 create mode 100644 arch/arm/boot/dts/sun8i-s3-lichee-zero-plus.dts
 create mode 100644 arch/arm/boot/dts/sun8i-s3-s3l-lichee-zero-plus.dtsi
 create mode 100644 arch/arm/boot/dts/sun8i-s3.dtsi
 create mode 100644 arch/arm/boot/dts/sun8i-s3l.dtsi
 create mode 100644 arch/arm/boot/dts/sun8i-v3.dtsi

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

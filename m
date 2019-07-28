Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A696A77D64
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 05:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4FLnK6S2lPcfNHmhtYcnOmKBRPGbpN98XoqMh+rn10=; b=JtuDTwCab+SdyQ
	V4eoQYwF4JYi7qeGVdB2PlRxm11UmQT1dLOc1dyfkCIy9Z+2aEPjwjn18lsE7hopqjo5EEZYckdwg
	1uzl7oA3QK6Nw1sJ2YN0RsUU6mpQKZCVEkhLuBYQMLmRvepa+z12xfMN7NiOsEDMYfWrENsxy2Qaa
	WD4efCc+/xfy0EhNL+TBfJNAk9hdBjET71tLeNRFlCV4gwNAUD99QDwiJkkQlwdo8R1Qac6ol9L88
	8dBTCTF2G55SBYjUKH2oB3/k+Qw6nBEaXyJf8BVm4rv8QW1/9ODM1buQmDqmlDlfSSV6WuSoWbMM2
	38aedzU9Z0zvipHYoJkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrZda-0002Ka-09; Sun, 28 Jul 2019 03:14:18 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrZd8-0002JS-3s
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 03:13:52 +0000
Received: from [199.195.250.187] (port=43214 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hrZd3-0000lr-Hd; Sun, 28 Jul 2019 04:13:45 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 6EDFA6F8D3;
 Sun, 28 Jul 2019 03:13:38 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v5 1/6] pinctrl: sunxi: v3s: introduce support for V3
Date: Sun, 28 Jul 2019 11:12:22 +0800
Message-Id: <20190728031227.49140-2-icenowy@aosc.io>
In-Reply-To: <20190728031227.49140-1-icenowy@aosc.io>
References: <20190728031227.49140-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_201350_287335_21BC42D9 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce the GPIO pins that is only available on V3 (not on V3s) to the
V3s pinctrl driver.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

---
No changes in v5.

Changes in v4:
- Removed bogus alignment change.

Changes in v3:
- Fixed code alignment.
- Fixed LVDS function number.

Changes in v2:
- Dropped the driver rename patch and apply the changes directly on V3s
  driver.

 drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c | 265 +++++++++++++++++++++-
 drivers/pinctrl/sunxi/pinctrl-sunxi.h     |   2 +
 2 files changed, 262 insertions(+), 5 deletions(-)

diff --git a/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c b/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c
index 6704ce8e5e3d..ca85438e379a 100644
--- a/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c
+++ b/drivers/pinctrl/sunxi/pinctrl-sun8i-v3s.c
@@ -1,5 +1,5 @@
 /*
- * Allwinner V3s SoCs pinctrl driver.
+ * Allwinner V3/V3s SoCs pinctrl driver.
  *
  * Copyright (C) 2016 Icenowy Zheng <icenowy@aosc.xyz>
  *
@@ -77,6 +77,30 @@ static const struct sunxi_desc_pin sun8i_v3s_pins[] = {
 		  SUNXI_FUNCTION(0x2, "i2c1"),		/* SCK */
 		  SUNXI_FUNCTION(0x3, "uart0"),		/* RX */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 9)),	/* PB_EINT9 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(B, 10),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "jtag"),		/* MS */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 10)),	/* PB_EINT10 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(B, 11),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "jtag"),		/* CK */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 11)),	/* PB_EINT11 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(B, 12),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "jtag"),		/* DO */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 12)),	/* PB_EINT12 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(B, 13),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "jtag"),		/* DI */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 13)),	/* PB_EINT13 */
 	/* Hole */
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 0),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
@@ -98,6 +122,180 @@ static const struct sunxi_desc_pin sun8i_v3s_pins[] = {
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "mmc2"),		/* D0 */
 		  SUNXI_FUNCTION(0x3, "spi0")),		/* MOSI */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(C, 4),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "mmc2")),		/* D1 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(C, 5),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "mmc2")),		/* D2 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(C, 6),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "mmc2")),		/* D3 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(C, 7),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "mmc2")),		/* D4 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(C, 8),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "mmc2")),		/* D5 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(C, 9),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "mmc2")),		/* D6 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(C, 10),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "mmc2")),		/* D7 */
+	/* Hole */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 0),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D2 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* RXD3 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 1),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D3 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* RXD2 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 2),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D4 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* RXD1 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 3),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D5 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* RXD0 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 4),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D6 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* RXCK */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 5),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D7 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* RXCTL/RXDV */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 6),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D10 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* RXERR */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 7),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D11 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* TXD3 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 8),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D12 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* TXD2 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 9),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D13 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* TXD1 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 10),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D14 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* TXD0 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 11),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D15 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* CRS */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 12),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D18 */
+			  SUNXI_FUNCTION(0x3, "lvds"),		/* VP0 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* TXCK */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 13),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D19 */
+			  SUNXI_FUNCTION(0x3, "lvds"),		/* VN0 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* TXCTL/TXEN */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 14),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D20 */
+			  SUNXI_FUNCTION(0x3, "lvds"),		/* VP1 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* TXERR */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 15),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D21 */
+			  SUNXI_FUNCTION(0x3, "lvds"),		/* VN1 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* CLKIN/COL */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 16),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D22 */
+			  SUNXI_FUNCTION(0x3, "lvds"),		/* VP2 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* MDC */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 17),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* D23 */
+			  SUNXI_FUNCTION(0x3, "lvds"),		/* VN2 */
+			  SUNXI_FUNCTION(0x4, "emac")),		/* MDIO */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 18),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* CLK */
+			  SUNXI_FUNCTION(0x3, "lvds")),		/* VPC */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 19),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* DE */
+			  SUNXI_FUNCTION(0x3, "lvds")),		/* VNC */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 20),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* HSYNC */
+			  SUNXI_FUNCTION(0x3, "lvds")),		/* VP3 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(D, 21),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "lcd"),		/* VSYNC */
+			  SUNXI_FUNCTION(0x3, "lvds")),		/* VN3 */
 	/* Hole */
 	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 0),
 		  SUNXI_FUNCTION(0x0, "gpio_in"),
@@ -291,6 +489,54 @@ static const struct sunxi_desc_pin sun8i_v3s_pins[] = {
 		  SUNXI_FUNCTION(0x1, "gpio_out"),
 		  SUNXI_FUNCTION(0x2, "mmc1"),		/* D3 */
 		  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 5)),	/* PG_EINT5 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(G, 6),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "uart1"),		/* TX */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 6)),	/* PG_EINT6 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(G, 7),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "uart1"),		/* RX */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 7)),	/* PG_EINT7 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(G, 8),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "uart1"),		/* RTS */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 8)),	/* PG_EINT8 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(G, 9),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "uart1"),		/* CTS */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 9)),	/* PG_EINT9 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(G, 10),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "i2s"),		/* SYNC */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 10)),	/* PG_EINT10 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(G, 11),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "i2s"),		/* BCLK */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 11)),	/* PG_EINT11 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(G, 12),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "i2s"),		/* DOUT */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 12)),	/* PG_EINT12 */
+	SUNXI_PIN_VARIANT(SUNXI_PINCTRL_PIN(G, 13),
+			  PINCTRL_SUN8I_V3,
+			  SUNXI_FUNCTION(0x0, "gpio_in"),
+			  SUNXI_FUNCTION(0x1, "gpio_out"),
+			  SUNXI_FUNCTION(0x2, "i2s"),		/* DIN */
+			  SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 13)),	/* PG_EINT13 */
 };
 
 static const unsigned int sun8i_v3s_pinctrl_irq_bank_map[] = { 1, 2 };
@@ -305,13 +551,22 @@ static const struct sunxi_pinctrl_desc sun8i_v3s_pinctrl_data = {
 
 static int sun8i_v3s_pinctrl_probe(struct platform_device *pdev)
 {
-	return sunxi_pinctrl_init(pdev,
-				  &sun8i_v3s_pinctrl_data);
+	unsigned long variant = (unsigned long)of_device_get_match_data(&pdev->dev);
+
+	return sunxi_pinctrl_init_with_variant(pdev, &sun8i_v3s_pinctrl_data,
+					       variant);
 }
 
 static const struct of_device_id sun8i_v3s_pinctrl_match[] = {
-	{ .compatible = "allwinner,sun8i-v3s-pinctrl", },
-	{}
+	{
+		.compatible = "allwinner,sun8i-v3-pinctrl",
+		.data = (void *)PINCTRL_SUN8I_V3
+	},
+	{
+		.compatible = "allwinner,sun8i-v3s-pinctrl",
+		.data = (void *)PINCTRL_SUN8I_V3S
+	},
+	{ },
 };
 
 static struct platform_driver sun8i_v3s_pinctrl_driver = {
diff --git a/drivers/pinctrl/sunxi/pinctrl-sunxi.h b/drivers/pinctrl/sunxi/pinctrl-sunxi.h
index 44e30deeee38..a32bb5bcb754 100644
--- a/drivers/pinctrl/sunxi/pinctrl-sunxi.h
+++ b/drivers/pinctrl/sunxi/pinctrl-sunxi.h
@@ -94,6 +94,8 @@
 #define PINCTRL_SUN4I_A10	BIT(6)
 #define PINCTRL_SUN7I_A20	BIT(7)
 #define PINCTRL_SUN8I_R40	BIT(8)
+#define PINCTRL_SUN8I_V3	BIT(9)
+#define PINCTRL_SUN8I_V3S	BIT(10)
 
 #define PIO_POW_MOD_SEL_REG	0x340
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6985F2A4BD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 15:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yL1/iyaJMVyhg+AAaIYnoW5hrqyd1e9fZLFkd1G7blw=; b=oUv/JrzU9x+KZ8
	FKODDiA1lZcPJOc0yEly6WzJa26AfymepQ2Pj2EzD8kstdODkT29HhEWrEqMOBTaFxC/QaXgyaQbp
	culpAYIXNX9PD+0y4+YUpzmEE9poXCQHdP9NfvFq21aTci5lAlIWxqSll5RE4wa9y35hT+hHlcU4Q
	prcckyU6w8wV4EfF3nAAb+AwNiMkqD5aiQZiG1GHfem9YMDezmycejNxQ/g4cr6BCADQ1M5n6AChu
	DE/zxcsaokAs0IbMYlzPgf1wbTyK8TAlpxebKSqcQjC5QmgfGALOIClIvCcucdbmwbGwii78NAnEU
	u9t2vFqY56yB/p2wEN7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUWyS-0002jx-A4; Sat, 25 May 2019 13:44:36 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUWyK-0002jX-QP
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 13:44:30 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id C5653E0002;
 Sat, 25 May 2019 13:44:26 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH] ARM: dts: sunxi: h3/h5: Fix GPIO regulator state array
Date: Sat, 25 May 2019 15:44:24 +0200
Message-Id: <20190525134424.8277-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_064429_156976_6244896E 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even though it translates to the same thing down to the binary level, we
should have an array of 2 number cells to describe each voltage state,
which in turns create a validation warning.

Let's fix this.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun8i-h2-plus-bananapi-m2-zero.dts           | 3 +--
 arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts              | 3 +--
 arch/arm/boot/dts/sun8i-h3-orangepi-one.dts                    | 3 +--
 arch/arm/boot/dts/sunxi-bananapi-m2-plus-v1.2.dtsi             | 3 +--
 .../boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts  | 3 +--
 arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts   | 3 +--
 6 files changed, 6 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-h2-plus-bananapi-m2-zero.dts b/arch/arm/boot/dts/sun8i-h2-plus-bananapi-m2-zero.dts
index 78a37a47185a..d277d043031b 100644
--- a/arch/arm/boot/dts/sun8i-h2-plus-bananapi-m2-zero.dts
+++ b/arch/arm/boot/dts/sun8i-h2-plus-bananapi-m2-zero.dts
@@ -59,8 +59,7 @@
 		gpios = <&r_pio 0 1 GPIO_ACTIVE_HIGH>; /* PL1 */
 		enable-active-high;
 		gpios-states = <0x1>;
-		states = <1100000 0x0
-			  1300000 0x1>;
+		states = <1100000 0>, <1300000 1>;
 	};
 
 	wifi_pwrseq: wifi_pwrseq {
diff --git a/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts b/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts
index 4970eda2877e..f19ed981da9d 100644
--- a/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts
+++ b/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts
@@ -102,8 +102,7 @@
 		gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
 		enable-active-high;
 		gpios-states = <1>;
-		states = <1100000 0
-			  1300000 1>;
+		states = <1100000 0>, <1300000 1>;
 	};
 
 	wifi_pwrseq: wifi_pwrseq {
diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-one.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-one.dts
index 840849169bed..4759ba3f2986 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-one.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-one.dts
@@ -109,8 +109,7 @@
 		gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
 		enable-active-high;
 		gpios-states = <0x1>;
-		states = <1100000 0x0
-			  1300000 0x1>;
+		states = <1100000 0>, <1300000 1>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/sunxi-bananapi-m2-plus-v1.2.dtsi b/arch/arm/boot/dts/sunxi-bananapi-m2-plus-v1.2.dtsi
index 53edd1faee99..22466afd38a3 100644
--- a/arch/arm/boot/dts/sunxi-bananapi-m2-plus-v1.2.dtsi
+++ b/arch/arm/boot/dts/sunxi-bananapi-m2-plus-v1.2.dtsi
@@ -21,8 +21,7 @@
 		regulator-ramp-delay = <50>; /* 4ms */
 		gpios = <&r_pio 0 1 GPIO_ACTIVE_HIGH>; /* PL1 */
 		gpios-states = <0x1>;
-		states = <1100000 0x0
-			  1300000 0x1>;
+		states = <1100000 0>, <1300000 1>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
index 62409afbaf06..c924090331d0 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
@@ -55,8 +55,7 @@
 		regulator-ramp-delay = <50>; /* 4ms */
 		gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
 		gpios-states = <0x1>;
-		states = <1100000 0x0
-			  1300000 0x1>;
+		states = <1100000 0>, <1300000 1>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
index 9887948d5c86..1c7dde84e54d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
@@ -104,8 +104,7 @@
 		regulator-ramp-delay = <50>; /* 4ms */
 		gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>;
 		gpios-states = <0x1>;
-		states = <1100000 0x0
-			  1300000 0x1>;
+		states = <1100000 0>, <1300000 1>;
 	};
 
 	wifi_pwrseq: wifi_pwrseq {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

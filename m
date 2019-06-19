Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4344B57D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgOGFLkLCm0ZNmgDR1Ft5/XiKs8i3h+on/qL1Ohy4zE=; b=ew81QwafBUpm5O
	Z/ARTSX1H+9BQGO625ei8P7wEdCxT3p2DwWfbr/fbe73XLSlKx/x57HfJM+wr1Z1/uE0hp5HUE2MJ
	MYDPZbxjOPGWtyex3aqebi44SDbzCKcMOMw+ZjgF8HNkgFBkDOFu3hMj9l1AfMK2NWtArnSRoSplw
	rLxCiN3N7BnUeEv15QOLPwfVkc2laB82QQ+PSyoH9n81WB0/RkthjYqP6eSpZzpTopy4UdxBu1Z0q
	vD/xx1Gp11EwqAJpRLhCxb4FFbu+HW1l51JvXfDHbiNadXkdqrizBzKaGjszEOSO3r3A1Qd4bjm2d
	ahbJ1TBI+bWc5LP63NGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXGT-0008Gv-39; Wed, 19 Jun 2019 09:52:25 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXD1-0004Me-UD
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 09:48:54 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 9D2141BF223;
 Wed, 19 Jun 2019 09:48:32 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v3 15/16] ARM: dts: sunxi: h3/h5: Switch from phy-mode to
 phy-connection-type
Date: Wed, 19 Jun 2019 11:47:24 +0200
Message-Id: <b972da9d2751fa0868421a20a1232d9131c87ffc.1560937626.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_024852_308839_07220078 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Antoine=20T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The phy-mode device tree property has been deprecated in favor of
phy-connection-type, let's replace it.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v2:
  - new patch
---
 arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts                    | 2 +-
 arch/arm/boot/dts/sun8i-h3-beelink-x2.dts                            | 2 +-
 arch/arm/boot/dts/sun8i-h3-mapleboard-mp130.dts                      | 2 +-
 arch/arm/boot/dts/sun8i-h3-nanopi-m1-plus.dts                        | 2 +-
 arch/arm/boot/dts/sun8i-h3-nanopi-m1.dts                             | 2 +-
 arch/arm/boot/dts/sun8i-h3-nanopi-neo.dts                            | 2 +-
 arch/arm/boot/dts/sun8i-h3-orangepi-2.dts                            | 2 +-
 arch/arm/boot/dts/sun8i-h3-orangepi-one.dts                          | 2 +-
 arch/arm/boot/dts/sun8i-h3-orangepi-pc.dts                           | 2 +-
 arch/arm/boot/dts/sun8i-h3-orangepi-plus.dts                         | 2 +-
 arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dts                       | 2 +-
 arch/arm/boot/dts/sun8i-h3-rervision-dvk.dts                         | 2 +-
 arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi                        | 2 +-
 arch/arm/boot/dts/sunxi-libretech-all-h3-cc.dtsi                     | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts         | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts              | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts             | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-prime.dts           | 2 +-
 arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts       | 2 +-
 20 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts b/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts
index f19ed981da9d..671f21e1b771 100644
--- a/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts
+++ b/arch/arm/boot/dts/sun8i-h2-plus-orangepi-zero.dts
@@ -126,7 +126,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts b/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
index ac9e26b1d906..782aac0cd2fe 100644
--- a/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-beelink-x2.dts
@@ -127,7 +127,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun8i-h3-mapleboard-mp130.dts b/arch/arm/boot/dts/sun8i-h3-mapleboard-mp130.dts
index ff0a7a952e0c..59ac1d349afa 100644
--- a/arch/arm/boot/dts/sun8i-h3-mapleboard-mp130.dts
+++ b/arch/arm/boot/dts/sun8i-h3-mapleboard-mp130.dts
@@ -77,7 +77,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-m1-plus.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-m1-plus.dts
index 4ba533b0340f..54cfa753853f 100644
--- a/arch/arm/boot/dts/sun8i-h3-nanopi-m1-plus.dts
+++ b/arch/arm/boot/dts/sun8i-h3-nanopi-m1-plus.dts
@@ -96,7 +96,7 @@
 	pinctrl-0 = <&emac_rgmii_pins>;
 	phy-supply = <&reg_gmac_3v3>;
 	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-connection-type = "rgmii";
 
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-m1.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-m1.dts
index 69243dcb30a6..e53458bf8c46 100644
--- a/arch/arm/boot/dts/sun8i-h3-nanopi-m1.dts
+++ b/arch/arm/boot/dts/sun8i-h3-nanopi-m1.dts
@@ -76,7 +76,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun8i-h3-nanopi-neo.dts b/arch/arm/boot/dts/sun8i-h3-nanopi-neo.dts
index 9f33f6fae595..744b35e4f50b 100644
--- a/arch/arm/boot/dts/sun8i-h3-nanopi-neo.dts
+++ b/arch/arm/boot/dts/sun8i-h3-nanopi-neo.dts
@@ -53,7 +53,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-2.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-2.dts
index 597c425d08ec..61ee3790ec94 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-2.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-2.dts
@@ -129,7 +129,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-one.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-one.dts
index 4759ba3f2986..adf5c2508b80 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-one.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-one.dts
@@ -131,7 +131,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-pc.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-pc.dts
index 5aff8ecc66cb..4b7d8692eb38 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-pc.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-pc.dts
@@ -131,7 +131,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-plus.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-plus.dts
index 97f497854e05..49885968ca3d 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-plus.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-plus.dts
@@ -85,7 +85,7 @@
 	pinctrl-0 = <&emac_rgmii_pins>;
 	phy-supply = <&reg_gmac_3v3>;
 	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-connection-type = "rgmii";
 
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dts b/arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dts
index 6dbf7b2e0c13..33c7df1ae939 100644
--- a/arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dts
+++ b/arch/arm/boot/dts/sun8i-h3-orangepi-plus2e.dts
@@ -67,7 +67,7 @@
 	pinctrl-0 = <&emac_rgmii_pins>;
 	phy-supply = <&reg_gmac_3v3>;
 	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-connection-type = "rgmii";
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun8i-h3-rervision-dvk.dts b/arch/arm/boot/dts/sun8i-h3-rervision-dvk.dts
index 4738f3a9efe4..b5bf16a0ce97 100644
--- a/arch/arm/boot/dts/sun8i-h3-rervision-dvk.dts
+++ b/arch/arm/boot/dts/sun8i-h3-rervision-dvk.dts
@@ -54,7 +54,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi b/arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi
index 39263e74fbb5..c13f56f7aeb6 100644
--- a/arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi
+++ b/arch/arm/boot/dts/sunxi-bananapi-m2-plus.dtsi
@@ -126,7 +126,7 @@
 	pinctrl-0 = <&emac_rgmii_pins>;
 	phy-supply = <&reg_gmac_3v3>;
 	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-connection-type = "rgmii";
 
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sunxi-libretech-all-h3-cc.dtsi b/arch/arm/boot/dts/sunxi-libretech-all-h3-cc.dtsi
index 19b3b23cfaa8..d6a47c63cae4 100644
--- a/arch/arm/boot/dts/sunxi-libretech-all-h3-cc.dtsi
+++ b/arch/arm/boot/dts/sunxi-libretech-all-h3-cc.dtsi
@@ -150,7 +150,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
index c924090331d0..d15f994b59eb 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
@@ -91,7 +91,7 @@
 
 &emac {
 	phy-handle = <&int_mii_phy>;
-	phy-mode = "mii";
+	phy-connection-type = "mii";
 	allwinner,leds-active-low;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
index 1c7dde84e54d..2914d62dbe8a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo-plus2.dts
@@ -135,7 +135,7 @@
 	pinctrl-0 = <&emac_rgmii_pins>;
 	phy-supply = <&reg_gmac_3v3>;
 	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-connection-type = "rgmii";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts
index 57a6f45036c1..5b20ae3edcdf 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dts
@@ -114,7 +114,7 @@
 	pinctrl-0 = <&emac_rgmii_pins>;
 	phy-supply = <&reg_gmac_3v3>;
 	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-connection-type = "rgmii";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
index e126c1c9f05c..a9cce14b8341 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-pc2.dts
@@ -157,7 +157,7 @@
 	pinctrl-0 = <&emac_rgmii_pins>;
 	phy-supply = <&reg_gmac_3v3>;
 	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-connection-type = "rgmii";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-prime.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-prime.dts
index d9b3ed257088..80e9dd67316e 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-prime.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-prime.dts
@@ -164,7 +164,7 @@
 	pinctrl-0 = <&emac_rgmii_pins>;
 	phy-supply = <&reg_gmac_3v3>;
 	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-connection-type = "rgmii";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
index db6ea7b58999..5a7bc3aa5ae4 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-orangepi-zero-plus.dts
@@ -72,7 +72,7 @@
 	pinctrl-0 = <&emac_rgmii_pins>;
 	phy-supply = <&reg_gmac_3v3>;
 	phy-handle = <&ext_rgmii_phy>;
-	phy-mode = "rgmii";
+	phy-connection-type = "rgmii";
 	status = "okay";
 };
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

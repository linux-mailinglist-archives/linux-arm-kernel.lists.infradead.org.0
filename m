Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FBF58615
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W7gX4SFA+y4s9lYLw31Vs7M0n7TkJH3Bti3Y5xger+8=; b=L+oEhDcBRytYyO
	rRpFx6YKnrwxxJsHh0gNtBAyRVXFiKB//lKJ0exjbUVQpZA+vrMvHQ+tvlwkQG1lQj/hpUZzNiqfY
	V8r9mVd3DMOx7huQOCt2v5MYWXtWcgcYRhnKQ0Iqmvt391M/YZsfKklCe4F5HxNCT+6oeQLqyQsYE
	U5elusg/x+Bnke08mhMXxDJfEHVDAOnB3HVAC568fLghxWtIr3QWeGeY2qa5SN8zFhf1HDg9alstP
	04rm2aokfudIQE8jc1glxElls+hmuAPwjXasP9+ny9q1qwZ6bBOAH3M+s7BqShCGzSrOs3TXF52JA
	UgJfFNEB/E8la8sWKAuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWV9-0003fn-2p; Thu, 27 Jun 2019 15:39:55 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWOH-0006fC-JK
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:32:53 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 09C2A20000A;
 Thu, 27 Jun 2019 15:32:31 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v4 13/13] ARM: dts: sunxi: Switch from phy to phy-handle
Date: Thu, 27 Jun 2019 17:31:55 +0200
Message-Id: <a1a33392c64c71099021fb49cc811a30790d40a8.1561649505.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_083250_147390_8713B0A8 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The phy device tree property has been deprecated in favor of phy-handle,
let's replace it.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun4i-a10-a1000.dts                | 2 +-
 arch/arm/boot/dts/sun4i-a10-ba10-tvbox.dts           | 2 +-
 arch/arm/boot/dts/sun4i-a10-cubieboard.dts           | 2 +-
 arch/arm/boot/dts/sun4i-a10-hackberry.dts            | 2 +-
 arch/arm/boot/dts/sun4i-a10-itead-iteaduino-plus.dts | 2 +-
 arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts           | 2 +-
 arch/arm/boot/dts/sun4i-a10-marsboard.dts            | 2 +-
 arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts       | 2 +-
 arch/arm/boot/dts/sun4i-a10-pcduino.dts              | 2 +-
 arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts     | 2 +-
 arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts             | 2 +-
 arch/arm/boot/dts/sun6i-a31-colombus.dts             | 2 +-
 arch/arm/boot/dts/sun6i-a31-hummingbird.dts          | 2 +-
 arch/arm/boot/dts/sun6i-a31-i7.dts                   | 2 +-
 arch/arm/boot/dts/sun6i-a31-m9.dts                   | 2 +-
 arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts     | 2 +-
 arch/arm/boot/dts/sun6i-a31s-cs908.dts               | 2 +-
 arch/arm/boot/dts/sun6i-a31s-sina31s.dts             | 2 +-
 arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts     | 2 +-
 arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts     | 2 +-
 arch/arm/boot/dts/sun7i-a20-bananapi.dts             | 2 +-
 arch/arm/boot/dts/sun7i-a20-bananapro.dts            | 2 +-
 arch/arm/boot/dts/sun7i-a20-cubieboard2.dts          | 2 +-
 arch/arm/boot/dts/sun7i-a20-cubietruck.dts           | 2 +-
 arch/arm/boot/dts/sun7i-a20-hummingbird.dts          | 2 +-
 arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts            | 2 +-
 arch/arm/boot/dts/sun7i-a20-icnova-swac.dts          | 2 +-
 arch/arm/boot/dts/sun7i-a20-itead-ibox.dts           | 2 +-
 arch/arm/boot/dts/sun7i-a20-m3.dts                   | 2 +-
 arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts       | 2 +-
 arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts    | 2 +-
 arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts       | 2 +-
 arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts      | 2 +-
 arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts      | 2 +-
 arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts        | 2 +-
 arch/arm/boot/dts/sun7i-a20-orangepi.dts             | 2 +-
 arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts        | 2 +-
 arch/arm/boot/dts/sun7i-a20-pcduino3.dts             | 2 +-
 arch/arm/boot/dts/sun7i-a20-wits-pro-a20-dkt.dts     | 2 +-
 arch/arm/boot/dts/sun9i-a80-cubieboard4.dts          | 2 +-
 arch/arm/boot/dts/sun9i-a80-optimus.dts              | 2 +-
 41 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/arch/arm/boot/dts/sun4i-a10-a1000.dts b/arch/arm/boot/dts/sun4i-a10-a1000.dts
index 6c254ec4c85b..8692b11a83c3 100644
--- a/arch/arm/boot/dts/sun4i-a10-a1000.dts
+++ b/arch/arm/boot/dts/sun4i-a10-a1000.dts
@@ -125,7 +125,7 @@
 };
 
 &emac {
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun4i-a10-ba10-tvbox.dts b/arch/arm/boot/dts/sun4i-a10-ba10-tvbox.dts
index 38a2c4134952..816d534ac093 100644
--- a/arch/arm/boot/dts/sun4i-a10-ba10-tvbox.dts
+++ b/arch/arm/boot/dts/sun4i-a10-ba10-tvbox.dts
@@ -68,7 +68,7 @@
 };
 
 &emac {
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun4i-a10-cubieboard.dts b/arch/arm/boot/dts/sun4i-a10-cubieboard.dts
index 7306c65df88a..6ca02e824acc 100644
--- a/arch/arm/boot/dts/sun4i-a10-cubieboard.dts
+++ b/arch/arm/boot/dts/sun4i-a10-cubieboard.dts
@@ -114,7 +114,7 @@
 };
 
 &emac {
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun4i-a10-hackberry.dts b/arch/arm/boot/dts/sun4i-a10-hackberry.dts
index cc988ccd5ca7..47dea0922501 100644
--- a/arch/arm/boot/dts/sun4i-a10-hackberry.dts
+++ b/arch/arm/boot/dts/sun4i-a10-hackberry.dts
@@ -80,7 +80,7 @@
 };
 
 &emac {
-	phy = <&phy0>;
+	phy-handle = <&phy0>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun4i-a10-itead-iteaduino-plus.dts b/arch/arm/boot/dts/sun4i-a10-itead-iteaduino-plus.dts
index 80ecd78247ac..d4e319d16aae 100644
--- a/arch/arm/boot/dts/sun4i-a10-itead-iteaduino-plus.dts
+++ b/arch/arm/boot/dts/sun4i-a10-itead-iteaduino-plus.dts
@@ -58,7 +58,7 @@
 &emac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts b/arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts
index 247fa27ef717..8a7b4c53d278 100644
--- a/arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts
+++ b/arch/arm/boot/dts/sun4i-a10-jesurun-q5.dts
@@ -94,7 +94,7 @@
 };
 
 &emac {
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun4i-a10-marsboard.dts b/arch/arm/boot/dts/sun4i-a10-marsboard.dts
index 58ad2ad9041f..a843e57530ed 100644
--- a/arch/arm/boot/dts/sun4i-a10-marsboard.dts
+++ b/arch/arm/boot/dts/sun4i-a10-marsboard.dts
@@ -105,7 +105,7 @@
 };
 
 &emac {
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts b/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts
index a8e537fd4bd6..845f76824d57 100644
--- a/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts
+++ b/arch/arm/boot/dts/sun4i-a10-olinuxino-lime.dts
@@ -112,7 +112,7 @@
 };
 
 &emac {
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun4i-a10-pcduino.dts b/arch/arm/boot/dts/sun4i-a10-pcduino.dts
index 0f1e781069e9..83287b6c975e 100644
--- a/arch/arm/boot/dts/sun4i-a10-pcduino.dts
+++ b/arch/arm/boot/dts/sun4i-a10-pcduino.dts
@@ -110,7 +110,7 @@
 };
 
 &emac {
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts b/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts
index 5340b4164df2..7033a123c9a3 100644
--- a/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts
+++ b/arch/arm/boot/dts/sun5i-a10s-olinuxino-micro.dts
@@ -98,7 +98,7 @@
 &emac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_pa_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts b/arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts
index b5ee8fb13a92..1f74ba1634cc 100644
--- a/arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts
+++ b/arch/arm/boot/dts/sun5i-a10s-wobo-i5.dts
@@ -91,7 +91,7 @@
 &emac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_pd_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	status = "okay";
 };
 
diff --git a/arch/arm/boot/dts/sun6i-a31-colombus.dts b/arch/arm/boot/dts/sun6i-a31-colombus.dts
index c3d56dc93513..50092b0bd0fe 100644
--- a/arch/arm/boot/dts/sun6i-a31-colombus.dts
+++ b/arch/arm/boot/dts/sun6i-a31-colombus.dts
@@ -76,7 +76,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun6i-a31-hummingbird.dts b/arch/arm/boot/dts/sun6i-a31-hummingbird.dts
index 2652d737fe7c..7c611ddbaf2f 100644
--- a/arch/arm/boot/dts/sun6i-a31-hummingbird.dts
+++ b/arch/arm/boot/dts/sun6i-a31-hummingbird.dts
@@ -153,7 +153,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun6i-a31-i7.dts b/arch/arm/boot/dts/sun6i-a31-i7.dts
index 091eb2ac53b3..ebb0b4710afb 100644
--- a/arch/arm/boot/dts/sun6i-a31-i7.dts
+++ b/arch/arm/boot/dts/sun6i-a31-i7.dts
@@ -117,7 +117,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun6i-a31-m9.dts b/arch/arm/boot/dts/sun6i-a31-m9.dts
index 6eafb6361a26..4910c6ccf2f7 100644
--- a/arch/arm/boot/dts/sun6i-a31-m9.dts
+++ b/arch/arm/boot/dts/sun6i-a31-m9.dts
@@ -84,7 +84,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	phy-supply = <&reg_dldo1>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts b/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts
index ca036f97923a..703e1c19b407 100644
--- a/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts
+++ b/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts
@@ -84,7 +84,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	phy-supply = <&reg_dldo1>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun6i-a31s-cs908.dts b/arch/arm/boot/dts/sun6i-a31s-cs908.dts
index 72a02c045a38..6e9ec3f1695e 100644
--- a/arch/arm/boot/dts/sun6i-a31s-cs908.dts
+++ b/arch/arm/boot/dts/sun6i-a31s-cs908.dts
@@ -67,7 +67,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
 	phy1: ethernet-phy@1 {
diff --git a/arch/arm/boot/dts/sun6i-a31s-sina31s.dts b/arch/arm/boot/dts/sun6i-a31s-sina31s.dts
index 4865c3271ab0..c92779bc8f85 100644
--- a/arch/arm/boot/dts/sun6i-a31s-sina31s.dts
+++ b/arch/arm/boot/dts/sun6i-a31s-sina31s.dts
@@ -115,7 +115,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	phy-supply = <&reg_dldo1>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts b/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
index 7899712400b2..e993b2d8ddd0 100644
--- a/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
+++ b/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
@@ -92,7 +92,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_dldo1>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts b/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts
index e2bfe0058830..c601ecf5ab35 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts
@@ -129,7 +129,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun7i-a20-bananapi.dts b/arch/arm/boot/dts/sun7i-a20-bananapi.dts
index 4df921632f7a..c5730b30a15d 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapi.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapi.dts
@@ -131,7 +131,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun7i-a20-bananapro.dts b/arch/arm/boot/dts/sun7i-a20-bananapro.dts
index 0176e9de0180..86f4ebb77703 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapro.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapro.dts
@@ -109,7 +109,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts b/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
index 08e5a5abf8cc..e322f0f06003 100644
--- a/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
+++ b/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
@@ -115,7 +115,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-cubietruck.dts b/arch/arm/boot/dts/sun7i-a20-cubietruck.dts
index 99f531b8d2a7..a8f7f63fdde1 100644
--- a/arch/arm/boot/dts/sun7i-a20-cubietruck.dts
+++ b/arch/arm/boot/dts/sun7i-a20-cubietruck.dts
@@ -150,7 +150,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-hummingbird.dts b/arch/arm/boot/dts/sun7i-a20-hummingbird.dts
index b01d91d025ec..322717cb0b9a 100644
--- a/arch/arm/boot/dts/sun7i-a20-hummingbird.dts
+++ b/arch/arm/boot/dts/sun7i-a20-hummingbird.dts
@@ -100,7 +100,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_vdd>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts b/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts
index 5f1c4f573d3e..8a610dacb983 100644
--- a/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts
+++ b/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts
@@ -115,7 +115,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts b/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
index 7449aac3f43b..a20e91c8dbe5 100644
--- a/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
+++ b/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
@@ -76,7 +76,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts b/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts
index b90a7607d069..c27567c0b027 100644
--- a/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts
+++ b/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts
@@ -97,7 +97,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-m3.dts b/arch/arm/boot/dts/sun7i-a20-m3.dts
index b8a1aaaf3976..bde0ef783e71 100644
--- a/arch/arm/boot/dts/sun7i-a20-m3.dts
+++ b/arch/arm/boot/dts/sun7i-a20-m3.dts
@@ -82,7 +82,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts b/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts
index f0e6a96e5785..f419b9ee9d1e 100644
--- a/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts
@@ -111,7 +111,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts b/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
index ca12cee27072..d3d03b7ffb1a 100644
--- a/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
@@ -105,7 +105,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy3>;
+	phy-handle = <&phy3>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_vcc3v3>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts
index e40dd47df8ce..70a883276d34 100644
--- a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts
@@ -106,7 +106,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
index 56f451c07f93..0fe657e062a7 100644
--- a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
@@ -111,7 +111,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts
index 0dcba070444a..559736961b54 100644
--- a/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts
@@ -118,7 +118,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>, <&gmac_txerr>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts b/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts
index 9628041bb3a3..a94ff50bcf73 100644
--- a/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts
+++ b/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts
@@ -120,7 +120,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun7i-a20-orangepi.dts b/arch/arm/boot/dts/sun7i-a20-orangepi.dts
index 7b3532665c28..956579a10b5f 100644
--- a/arch/arm/boot/dts/sun7i-a20-orangepi.dts
+++ b/arch/arm/boot/dts/sun7i-a20-orangepi.dts
@@ -96,7 +96,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts b/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
index 173b676436e9..993fb97d19df 100644
--- a/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
+++ b/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
@@ -114,7 +114,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-pcduino3.dts b/arch/arm/boot/dts/sun7i-a20-pcduino3.dts
index 14a88aa16a97..02e321523d0e 100644
--- a/arch/arm/boot/dts/sun7i-a20-pcduino3.dts
+++ b/arch/arm/boot/dts/sun7i-a20-pcduino3.dts
@@ -122,7 +122,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_mii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun7i-a20-wits-pro-a20-dkt.dts b/arch/arm/boot/dts/sun7i-a20-wits-pro-a20-dkt.dts
index f8475a39777b..9dfe7e2a08cc 100644
--- a/arch/arm/boot/dts/sun7i-a20-wits-pro-a20-dkt.dts
+++ b/arch/arm/boot/dts/sun7i-a20-wits-pro-a20-dkt.dts
@@ -81,7 +81,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
 
diff --git a/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts b/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
index 18156ffa3ce9..650890b049e2 100644
--- a/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
+++ b/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
@@ -128,7 +128,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_cldo1>;
 	status = "okay";
diff --git a/arch/arm/boot/dts/sun9i-a80-optimus.dts b/arch/arm/boot/dts/sun9i-a80-optimus.dts
index 2ed28d9e2787..03ad25534f20 100644
--- a/arch/arm/boot/dts/sun9i-a80-optimus.dts
+++ b/arch/arm/boot/dts/sun9i-a80-optimus.dts
@@ -123,7 +123,7 @@
 &gmac {
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac_rgmii_pins>;
-	phy = <&phy1>;
+	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_cldo1>;
 	status = "okay";
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

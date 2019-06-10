Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F4B3B221
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 11:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhflnAnm7QxXTDlvvP2GREErWTLy8W/WoYEntsKYo98=; b=plhPWvHOyeKEC1
	svfE/3Xh+nP1Yr5PyLTMt4j4RuaBCxPH3NPPLa3z9dXkBdK4DzlAZEVtedzIJXqrrzIe/gnZHUnZM
	40kYRP32XSl5Yki7w55bt4lyDE4VgJbM+BNrD+UDNiHV3qwp/8OB3NxDKH3KhR7vZDAd5hBKtSocD
	Z6+40ghBMY/8dLbNhychOoKhiQnc8yGzbRHKqt9/vcnWsMIrZBb3BfaK4z/csLFU6ld2WqZJRcvnl
	C0x/RUUZsJXT8/Zvv013p5O64/y49ia7OaNembLlg98gFxwxd+62rJUye8kKiFvq6PTrdLolmoB0q
	ssyUmPVBFX7DF4LNDmcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGeH-00024c-Po; Mon, 10 Jun 2019 09:31:29 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGZy-0006dM-Fd
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 09:27:08 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 70C42E000C;
 Mon, 10 Jun 2019 09:26:45 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v2 11/11] ARM: dts: sunxi: Switch to the generic PHY properties
Date: Mon, 10 Jun 2019 11:25:50 +0200
Message-Id: <af3a342a6cba1dda27763c13093a8fc060946c1e.1560158667.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_022703_274771_246EDB11 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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

The DWMAC specific properties to manage the PHY have been superseeded by
the generic PHY properties. Let's move to it.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

This patch should go through arm-soc.

Changes from v1:
  - New patch
---
 arch/arm/boot/dts/sun6i-a31-hummingbird.dts       |  6 +++---
 arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts  |  6 +++---
 arch/arm/boot/dts/sun7i-a20-hummingbird.dts       |  9 ++++-----
 arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts |  8 ++++----
 4 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/sun6i-a31-hummingbird.dts b/arch/arm/boot/dts/sun6i-a31-hummingbird.dts
index 09832b4e8fc8..2652d737fe7c 100644
--- a/arch/arm/boot/dts/sun6i-a31-hummingbird.dts
+++ b/arch/arm/boot/dts/sun6i-a31-hummingbird.dts
@@ -155,13 +155,13 @@
 	pinctrl-0 = <&gmac_rgmii_pins>;
 	phy = <&phy1>;
 	phy-mode = "rgmii";
-	snps,reset-gpio = <&pio 0 21 GPIO_ACTIVE_HIGH>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 30000>;
 	status = "okay";
 
 	phy1: ethernet-phy@1 {
 		reg = <1>;
+		reset-gpios = <&pio 0 21 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts b/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
index 8e724c52feff..7899712400b2 100644
--- a/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
+++ b/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
@@ -95,13 +95,13 @@
 	phy = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_dldo1>;
-	snps,reset-gpio = <&pio 0 21 GPIO_ACTIVE_HIGH>; /* PA21 */
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 30000>;
 	status = "okay";
 
 	phy1: ethernet-phy@1 {
 		reg = <1>;
+		reset-gpios = <&pio 0 21 GPIO_ACTIVE_LOW>; /* PA21 */
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/sun7i-a20-hummingbird.dts b/arch/arm/boot/dts/sun7i-a20-hummingbird.dts
index fd0153f65685..b01d91d025ec 100644
--- a/arch/arm/boot/dts/sun7i-a20-hummingbird.dts
+++ b/arch/arm/boot/dts/sun7i-a20-hummingbird.dts
@@ -103,15 +103,14 @@
 	phy = <&phy1>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_vdd>;
-	/* phy reset config */
-	snps,reset-gpio = <&pio 0 17 GPIO_ACTIVE_HIGH>; /* PA17 */
-	snps,reset-active-low;
-	/* wait 1s after reset, otherwise fail to read phy id */
-	snps,reset-delays-us = <0 10000 1000000>;
 	status = "okay";
 
 	phy1: ethernet-phy@1 {
 		reg = <1>;
+		reset-gpios = <&pio 0 17 GPIO_ACTIVE_LOW>; /* PA17 */
+		reset-assert-us = <10000>;
+		/* wait 1s after reset, otherwise fail to read phy id */
+		reset-deassert-us = <1000000>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts b/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
index c34a83f666c7..ca12cee27072 100644
--- a/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
@@ -108,14 +108,14 @@
 	phy = <&phy3>;
 	phy-mode = "rgmii";
 	phy-supply = <&reg_vcc3v3>;
-
-	snps,reset-gpio = <&pio 0 17 GPIO_ACTIVE_HIGH>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 10000 1000000>;
 	status = "okay";
 
 	phy3: ethernet-phy@3 {
 		reg = <3>;
+		reset-gpios = <&pio 0 17 GPIO_ACTIVE_LOW>; /* PA17 */
+		reset-assert-us = <10000>;
+		/* wait 1s after reset, otherwise fail to read phy id */
+		reset-deassert-us = <1000000>;
 	};
 };
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

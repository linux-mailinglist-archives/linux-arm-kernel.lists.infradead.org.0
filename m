Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945BD8CA31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 06:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HiSMgu8VTgUkhCuU84kh2zpZjcfS2l/v3fDWwOVfM7Q=; b=EffvlyRNx+POkJ
	ivCns5Dc8LIPlOGPP+mu0Z47uCYg2kYVuBbOTtSPyt/r1Xq54nurcsHbwG9gWlK9gpVf3CeIhL9Kk
	5n3Q1/nrJbfGpxETLm82Ktfh3brLihxC3v6KHGQcy1996qLqNwG/2/CUAJ9sWYVeS2hsj/8ejIOGm
	I8RskFGJVjqT6wssbxPOfPN00c/pdhTjwLxp4OqqCft2QadT+I21f2QfrkxkMD/zlfn+BOSykGU9z
	0yvjR8d0nMkJkoj0CQACs0hdEnZkZUpbmNyO3ddkWfm+xXzFlHADLMRWylmeCeEhAsNdrWFvzd1jh
	ftW+GK76b3IwEVXIvG5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxko8-0002nd-V5; Wed, 14 Aug 2019 04:22:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxknw-0002ml-12
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 04:22:34 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BACFC2064A;
 Wed, 14 Aug 2019 04:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565756549;
 bh=EHLZnD03RGfNgTJKhv56+d6GSX+I5lON6OpWZ77uUy4=;
 h=From:To:Cc:Subject:Date:From;
 b=wHprp1d/BnH4ttXOkO9ASHwT1F3WUalkHzw1EB6/28t9cOKd0VVUQXszgzWf0XUQ7
 WW3oNHy5ny4DHeCNsGGl8H3J8hDjYLVgbUN4hsTd3mJK6b9S2r2v2dnqLIMUaH7Kst
 1Or0Wzp8rEzgRj/3cHPJmgTukBqZr8vzVsZoJm6M=
Received: by wens.tw (Postfix, from userid 1000)
 id E1C395F9B4; Wed, 14 Aug 2019 12:22:25 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] ARM: dts: sunxi: Add mdio bus sub-node to GMAC
Date: Wed, 14 Aug 2019 12:22:08 +0800
Message-Id: <20190814042208.9646-1-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_212232_119073_EEFD591E 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The DWMAC binding never supported having the Ethernet PHY node as a
direct child to the controller, nor did it support the "phy" property
as a way to specify which Ethernet PHY to use. What seemed to work
was simply the implementation ignoring the "phy" property and instead
probing all addresses on the MDIO bus and using the first available
one.

The recent switch from "phy" to "phy-handle" breaks the assumptions
of the implementation, and does not match what the binding requires.
The binding requires that if an MDIO bus is described, it shall be
a sub-node with the "snps,dwmac-mdio" compatible string.

Add a device node for the MDIO bus, and move the Ethernet PHY node
under it. Also fix up the #address-cells and #size-cells properties
where needed.

Fixes: de332de26d19 ("ARM: dts: sunxi: Switch from phy to phy-handle")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun6i-a31-colombus.dts       | 10 ++++++----
 arch/arm/boot/dts/sun6i-a31-hummingbird.dts    | 16 +++++++++-------
 arch/arm/boot/dts/sun6i-a31-i7.dts             | 10 ++++++----
 arch/arm/boot/dts/sun6i-a31-m9.dts             | 10 ++++++----
 .../boot/dts/sun6i-a31-mele-a1000g-quad.dts    | 10 ++++++----
 arch/arm/boot/dts/sun6i-a31.dtsi               |  8 ++++++--
 arch/arm/boot/dts/sun6i-a31s-cs908.dts         |  9 ++++++---
 arch/arm/boot/dts/sun6i-a31s-sina31s.dts       | 10 ++++++----
 .../boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts    | 14 ++++++++------
 .../boot/dts/sun7i-a20-bananapi-m1-plus.dts    | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-bananapi.dts       | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-bananapro.dts      | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-cubieboard2.dts    | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-cubietruck.dts     | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-hummingbird.dts    | 18 ++++++++++--------
 arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts      | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-icnova-swac.dts    | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-itead-ibox.dts     |  2 ++
 arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts      |  2 --
 arch/arm/boot/dts/sun7i-a20-m3.dts             | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts | 10 ++++++----
 .../boot/dts/sun7i-a20-olimex-som204-evb.dts   | 18 ++++++++++--------
 arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts | 10 ++++++----
 .../arm/boot/dts/sun7i-a20-olinuxino-lime2.dts | 10 ++++++----
 .../arm/boot/dts/sun7i-a20-olinuxino-micro.dts | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts  | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-orangepi.dts       | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts  | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20-pcduino3.dts       | 10 ++++++----
 .../boot/dts/sun7i-a20-wits-pro-a20-dkt.dts    | 10 ++++++----
 arch/arm/boot/dts/sun7i-a20.dtsi               |  8 ++++++--
 arch/arm/boot/dts/sun9i-a80-cubieboard4.dts    | 10 ++++++----
 arch/arm/boot/dts/sun9i-a80-optimus.dts        |  2 ++
 arch/arm/boot/dts/sun9i-a80.dtsi               |  8 ++++++--
 34 files changed, 203 insertions(+), 132 deletions(-)

diff --git a/arch/arm/boot/dts/sun6i-a31-colombus.dts b/arch/arm/boot/dts/sun6i-a31-colombus.dts
index 50092b0bd0fe..93a15eaaa8cb 100644
--- a/arch/arm/boot/dts/sun6i-a31-colombus.dts
+++ b/arch/arm/boot/dts/sun6i-a31-colombus.dts
@@ -79,10 +79,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &i2c0 {
@@ -104,6 +100,12 @@
 	};
 };
 
+&mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v0>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun6i-a31-hummingbird.dts b/arch/arm/boot/dts/sun6i-a31-hummingbird.dts
index 7c611ddbaf2f..049e6ab3cf56 100644
--- a/arch/arm/boot/dts/sun6i-a31-hummingbird.dts
+++ b/arch/arm/boot/dts/sun6i-a31-hummingbird.dts
@@ -156,13 +156,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-		reset-gpios = <&pio 0 21 GPIO_ACTIVE_LOW>;
-		reset-assert-us = <10000>;
-		reset-deassert-us = <30000>;
-	};
 };
 
 &hdmi {
@@ -199,6 +192,15 @@
 	status = "okay";
 };
 
+&mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+		reset-gpios = <&pio 0 21 GPIO_ACTIVE_LOW>;
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_dcdc1>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun6i-a31-i7.dts b/arch/arm/boot/dts/sun6i-a31-i7.dts
index ebb0b4710afb..6cc8ccf53d88 100644
--- a/arch/arm/boot/dts/sun6i-a31-i7.dts
+++ b/arch/arm/boot/dts/sun6i-a31-i7.dts
@@ -120,10 +120,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -142,6 +138,12 @@
 	status = "okay";
 };
 
+&mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun6i-a31-m9.dts b/arch/arm/boot/dts/sun6i-a31-m9.dts
index 4910c6ccf2f7..a645c8f4257c 100644
--- a/arch/arm/boot/dts/sun6i-a31-m9.dts
+++ b/arch/arm/boot/dts/sun6i-a31-m9.dts
@@ -88,10 +88,6 @@
 	phy-mode = "mii";
 	phy-supply = <&reg_dldo1>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &ir {
@@ -100,6 +96,12 @@
 	status = "okay";
 };
 
+&mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_dcdc1>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts b/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts
index 703e1c19b407..648f24746234 100644
--- a/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts
+++ b/arch/arm/boot/dts/sun6i-a31-mele-a1000g-quad.dts
@@ -88,10 +88,6 @@
 	phy-mode = "mii";
 	phy-supply = <&reg_dldo1>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &ir {
@@ -100,6 +96,12 @@
 	status = "okay";
 };
 
+&mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_dcdc1>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index 9ddde111f675..8d0db8a2f9d1 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -939,8 +939,12 @@
 			snps,fixed-burst;
 			snps,force_sf_dma_mode;
 			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <0>;
+
+			mdio: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		crypto: crypto-engine@1c15000 {
diff --git a/arch/arm/boot/dts/sun6i-a31s-cs908.dts b/arch/arm/boot/dts/sun6i-a31s-cs908.dts
index 6e9ec3f1695e..1d15e15011c6 100644
--- a/arch/arm/boot/dts/sun6i-a31s-cs908.dts
+++ b/arch/arm/boot/dts/sun6i-a31s-cs908.dts
@@ -70,9 +70,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &ir {
@@ -81,6 +78,12 @@
 	status = "okay";
 };
 
+&mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &ohci1 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun6i-a31s-sina31s.dts b/arch/arm/boot/dts/sun6i-a31s-sina31s.dts
index c92779bc8f85..0af48e143b66 100644
--- a/arch/arm/boot/dts/sun6i-a31s-sina31s.dts
+++ b/arch/arm/boot/dts/sun6i-a31s-sina31s.dts
@@ -119,10 +119,6 @@
 	phy-mode = "mii";
 	phy-supply = <&reg_dldo1>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -160,6 +156,12 @@
 	};
 };
 
+&mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_dcdc1>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts b/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
index e993b2d8ddd0..708caee52425 100644
--- a/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
+++ b/arch/arm/boot/dts/sun6i-a31s-sinovoip-bpi-m2.dts
@@ -96,7 +96,15 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_dldo1>;
 	status = "okay";
+};
+
+&ir {
+	pinctrl-names = "default";
+	pinctrl-0 = <&s_ir_rx_pin>;
+	status = "okay";
+};
 
+&mdio {
 	phy1: ethernet-phy@1 {
 		reg = <1>;
 		reset-gpios = <&pio 0 21 GPIO_ACTIVE_LOW>; /* PA21 */
@@ -105,12 +113,6 @@
 	};
 };
 
-&ir {
-	pinctrl-names = "default";
-	pinctrl-0 = <&s_ir_rx_pin>;
-	status = "okay";
-};
-
 &mmc0 {
 	vmmc-supply = <&reg_dcdc1>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts b/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts
index c601ecf5ab35..32d5d45a35c0 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapi-m1-plus.dts
@@ -133,10 +133,6 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -171,6 +167,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-bananapi.dts b/arch/arm/boot/dts/sun7i-a20-bananapi.dts
index c5730b30a15d..bb3987e101c2 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapi.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapi.dts
@@ -135,10 +135,6 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -171,6 +167,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-bananapro.dts b/arch/arm/boot/dts/sun7i-a20-bananapro.dts
index 86f4ebb77703..01ccff756996 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapro.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapro.dts
@@ -113,10 +113,6 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &i2c0 {
@@ -143,6 +139,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts b/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
index e322f0f06003..b8203e4ef21c 100644
--- a/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
+++ b/arch/arm/boot/dts/sun7i-a20-cubieboard2.dts
@@ -118,10 +118,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -161,6 +157,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &ohci0 {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/sun7i-a20-cubietruck.dts b/arch/arm/boot/dts/sun7i-a20-cubietruck.dts
index a8f7f63fdde1..8c8dee6ea461 100644
--- a/arch/arm/boot/dts/sun7i-a20-cubietruck.dts
+++ b/arch/arm/boot/dts/sun7i-a20-cubietruck.dts
@@ -153,10 +153,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -194,6 +190,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-hummingbird.dts b/arch/arm/boot/dts/sun7i-a20-hummingbird.dts
index 322717cb0b9a..3def2a330598 100644
--- a/arch/arm/boot/dts/sun7i-a20-hummingbird.dts
+++ b/arch/arm/boot/dts/sun7i-a20-hummingbird.dts
@@ -104,14 +104,6 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_vdd>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-		reset-gpios = <&pio 0 17 GPIO_ACTIVE_LOW>; /* PA17 */
-		reset-assert-us = <10000>;
-		/* wait 1s after reset, otherwise fail to read phy id */
-		reset-deassert-us = <1000000>;
-	};
 };
 
 &i2c0 {
@@ -145,6 +137,16 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+		reset-gpios = <&pio 0 17 GPIO_ACTIVE_LOW>; /* PA17 */
+		reset-assert-us = <10000>;
+		/* wait 1s after reset, otherwise fail to read phy id */
+		reset-deassert-us = <1000000>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v0>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts b/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts
index 8a610dacb983..358ed5f1b1c1 100644
--- a/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts
+++ b/arch/arm/boot/dts/sun7i-a20-i12-tvbox.dts
@@ -119,10 +119,6 @@
 	phy-mode = "mii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &i2c0 {
@@ -145,6 +141,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts b/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
index a20e91c8dbe5..413505f45a81 100644
--- a/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
+++ b/arch/arm/boot/dts/sun7i-a20-icnova-swac.dts
@@ -79,10 +79,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &i2c0 {
@@ -99,6 +95,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts b/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts
index c27567c0b027..946c27278321 100644
--- a/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts
+++ b/arch/arm/boot/dts/sun7i-a20-itead-ibox.dts
@@ -100,7 +100,9 @@
 	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
+};
 
+&gmac_mdio {
 	phy1: ethernet-phy@1 {
 		reg = <1>;
 	};
diff --git a/arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts b/arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts
index 3e170cfac86a..17fa8901fc00 100644
--- a/arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts
+++ b/arch/arm/boot/dts/sun7i-a20-lamobo-r1.dts
@@ -123,8 +123,6 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
-	/delete-property/#address-cells;
-	/delete-property/#size-cells;
 
 	fixed-link {
 		speed = <1000>;
diff --git a/arch/arm/boot/dts/sun7i-a20-m3.dts b/arch/arm/boot/dts/sun7i-a20-m3.dts
index bde0ef783e71..6bff9e731fc3 100644
--- a/arch/arm/boot/dts/sun7i-a20-m3.dts
+++ b/arch/arm/boot/dts/sun7i-a20-m3.dts
@@ -85,10 +85,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &i2c0 {
@@ -111,6 +107,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts b/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts
index f419b9ee9d1e..6f9c54b8e49a 100644
--- a/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olimex-som-evb.dts
@@ -114,10 +114,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -202,6 +198,12 @@
 	};
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts b/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
index d3d03b7ffb1a..230d62a6b8f1 100644
--- a/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olimex-som204-evb.dts
@@ -109,14 +109,6 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_vcc3v3>;
 	status = "okay";
-
-	phy3: ethernet-phy@3 {
-		reg = <3>;
-		reset-gpios = <&pio 0 17 GPIO_ACTIVE_LOW>; /* PA17 */
-		reset-assert-us = <10000>;
-		/* wait 1s after reset, otherwise fail to read phy id */
-		reset-deassert-us = <1000000>;
-	};
 };
 
 &hdmi {
@@ -161,6 +153,16 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy3: ethernet-phy@3 {
+		reg = <3>;
+		reset-gpios = <&pio 0 17 GPIO_ACTIVE_LOW>; /* PA17 */
+		reset-assert-us = <10000>;
+		/* wait 1s after reset, otherwise fail to read phy id */
+		reset-deassert-us = <1000000>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts
index 70a883276d34..2adbac860119 100644
--- a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime.dts
@@ -109,10 +109,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -149,6 +145,12 @@
 	};
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
index 0fe657e062a7..9ba62774e89a 100644
--- a/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-lime2.dts
@@ -114,10 +114,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -154,6 +150,12 @@
 	vref-supply = <&reg_vcc3v0>;
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts b/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts
index 559736961b54..359bd0d5b3b1 100644
--- a/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts
+++ b/arch/arm/boot/dts/sun7i-a20-olinuxino-micro.dts
@@ -121,10 +121,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -215,6 +211,12 @@
 	};
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts b/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts
index a94ff50bcf73..2e328d2cefc1 100644
--- a/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts
+++ b/arch/arm/boot/dts/sun7i-a20-orangepi-mini.dts
@@ -124,10 +124,6 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -158,6 +154,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-orangepi.dts b/arch/arm/boot/dts/sun7i-a20-orangepi.dts
index 956579a10b5f..d75b2e2bab28 100644
--- a/arch/arm/boot/dts/sun7i-a20-orangepi.dts
+++ b/arch/arm/boot/dts/sun7i-a20-orangepi.dts
@@ -100,10 +100,6 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_gmac_3v3>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &i2c0 {
@@ -124,6 +120,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts b/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
index 993fb97d19df..fce2f7fcd084 100644
--- a/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
+++ b/arch/arm/boot/dts/sun7i-a20-pcduino3-nano.dts
@@ -117,10 +117,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &hdmi {
@@ -149,6 +145,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-pcduino3.dts b/arch/arm/boot/dts/sun7i-a20-pcduino3.dts
index 02e321523d0e..cc8271d777b8 100644
--- a/arch/arm/boot/dts/sun7i-a20-pcduino3.dts
+++ b/arch/arm/boot/dts/sun7i-a20-pcduino3.dts
@@ -125,10 +125,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "mii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &i2c0 {
@@ -149,6 +145,12 @@
 	status = "okay";
 };
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20-wits-pro-a20-dkt.dts b/arch/arm/boot/dts/sun7i-a20-wits-pro-a20-dkt.dts
index 9dfe7e2a08cc..3bfae98f3cc3 100644
--- a/arch/arm/boot/dts/sun7i-a20-wits-pro-a20-dkt.dts
+++ b/arch/arm/boot/dts/sun7i-a20-wits-pro-a20-dkt.dts
@@ -84,10 +84,6 @@
 	phy-handle = <&phy1>;
 	phy-mode = "rgmii";
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &i2c0 {
@@ -110,6 +106,12 @@
 
 #include "axp209.dtsi"
 
+&gmac_mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	vmmc-supply = <&reg_vcc3v3>;
 	bus-width = <4>;
diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 9ad8e445b240..651d7fe6b8ba 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -1437,8 +1437,12 @@
 			snps,fixed-burst;
 			snps,force_sf_dma_mode;
 			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <0>;
+
+			gmac_mdio: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		hstimer@1c60000 {
diff --git a/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts b/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
index 650890b049e2..d3b337b043a1 100644
--- a/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
+++ b/arch/arm/boot/dts/sun9i-a80-cubieboard4.dts
@@ -132,10 +132,6 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_cldo1>;
 	status = "okay";
-
-	phy1: ethernet-phy@1 {
-		reg = <1>;
-	};
 };
 
 &i2c3 {
@@ -144,6 +140,12 @@
 	status = "okay";
 };
 
+&mdio {
+	phy1: ethernet-phy@1 {
+		reg = <1>;
+	};
+};
+
 &mmc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc0_pins>;
diff --git a/arch/arm/boot/dts/sun9i-a80-optimus.dts b/arch/arm/boot/dts/sun9i-a80-optimus.dts
index 03ad25534f20..bbc6335e5631 100644
--- a/arch/arm/boot/dts/sun9i-a80-optimus.dts
+++ b/arch/arm/boot/dts/sun9i-a80-optimus.dts
@@ -127,7 +127,9 @@
 	phy-mode = "rgmii";
 	phy-supply = <&reg_cldo1>;
 	status = "okay";
+};
 
+&mdio {
 	phy1: ethernet-phy@1 {
 		reg = <1>;
 	};
diff --git a/arch/arm/boot/dts/sun9i-a80.dtsi b/arch/arm/boot/dts/sun9i-a80.dtsi
index 310cd972ee5b..c34d505c7efe 100644
--- a/arch/arm/boot/dts/sun9i-a80.dtsi
+++ b/arch/arm/boot/dts/sun9i-a80.dtsi
@@ -331,8 +331,12 @@
 			snps,fixed-burst;
 			snps,force_sf_dma_mode;
 			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <0>;
+
+			mdio: mdio {
+				compatible = "snps,dwmac-mdio";
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		ehci0: usb@a00000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

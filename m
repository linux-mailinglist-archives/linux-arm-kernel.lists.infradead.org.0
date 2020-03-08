Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7364C17D407
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 15:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MS1+5U1mymjXT6XnRp8JJMx57yWtO8v/JCGIQQeK2E=; b=foPKNQUFQlLkRQ
	aalaVmr7kD7Y/M5Z8ytHG2CTkun1IT3wMu6d+JzRHrvxcxYUJjFkdRTZQnIcbcBN26eaeTQPgpqMf
	/9Qg3xlK3bKAoLMpWa2NaDrWH6kZ/DD6j9xrZyf0e2nhC6910TOG/FppTV8poP9s6nlPq7RxG6acb
	3hroR6hIIjmm1Undg4xCgNpnR37XZYVVu3B07EASDu0JmFcjp1KtUyY76WhxqD5v1wQhBvc8fqsMa
	g2OgnmO7L4kf8HxRhdbifytPH94nJHWTUWvn6b568eDQMd6676hr7yPnksXcKWmBsY4RN9xxwH5df
	VgoLdYVzqFmuZ0WwKMyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAwTM-0001H4-Mn; Sun, 08 Mar 2020 14:00:04 +0000
Received: from mailoutvs60.siol.net ([185.57.226.251] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAwSb-0000mG-Mu
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 13:59:20 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 29082521EBB;
 Sun,  8 Mar 2020 14:59:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id s-tZO1LaIv49; Sun,  8 Mar 2020 14:59:10 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id ACA8F521DED;
 Sun,  8 Mar 2020 14:59:10 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 0F5D2521EBB;
 Sun,  8 Mar 2020 14:59:08 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 2/2] arm64: dts: allwinner: h6: Move ext. oscillator to
 board DTs
Date: Sun,  8 Mar 2020 14:58:49 +0100
Message-Id: <20200308135849.106333-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200308135849.106333-1-jernej.skrabec@siol.net>
References: <20200308135849.106333-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_065917_901964_C5A02B21 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.251 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It turns out that not all H6 boards have external 32kHz oscillator.
Currently the only one known such H6 board is Tanix TX6.

Move external oscillator node from common H6 dtsi to board specific dts
files where present.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../boot/dts/allwinner/sun50i-h6-beelink-gs1.dts      | 11 +++++++++++
 .../arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts | 11 +++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi | 11 +++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts  | 11 +++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi          |  8 --------
 5 files changed, 44 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
index df6d872c34e2..8f09d209359b 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
@@ -32,6 +32,13 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	ext_osc32k: ext_osc32k_clk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "ext_osc32k";
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -275,6 +282,10 @@ &r_pio {
 	vcc-pm-supply = <&reg_aldo1>;
 };
 
+&rtc {
+	clocks = <&ext_osc32k>;
+};
+
 &spdif {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
index 1e0abd9d047f..47f579610dcc 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
@@ -32,6 +32,13 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	ext_osc32k: ext_osc32k_clk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "ext_osc32k";
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -285,6 +292,10 @@ &r_ir {
 	status = "okay";
 };
 
+&rtc {
+	clocks = <&ext_osc32k>;
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_ph_pins>;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
index 37f4c57597d4..37fc3f3697f7 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
@@ -20,6 +20,13 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	ext_osc32k: ext_osc32k_clk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "ext_osc32k";
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -197,6 +204,10 @@ &r_ir {
 	status = "okay";
 };
 
+&rtc {
+	clocks = <&ext_osc32k>;
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_ph_pins>;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 3c9dd0d69754..b0642d841933 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -21,6 +21,13 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	ext_osc32k: ext_osc32k_clk {
+		#clock-cells = <0>;
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "ext_osc32k";
+	};
+
 	hdmi_connector: connector {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -279,6 +286,10 @@ &r_pio {
 	vcc-pm-supply = <&reg_aldo1>;
 };
 
+&rtc {
+	clocks = <&ext_osc32k>;
+};
+
 /*
  * The CS pin is shared with the MMC2 CMD pin, so we cannot have the SPI
  * flash and eMMC at the same time, as one of them would fail probing.
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 967249e58811..b9ab7d8fa8af 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -62,13 +62,6 @@ osc24M: osc24M_clk {
 		clock-output-names = "osc24M";
 	};
 
-	ext_osc32k: ext_osc32k_clk {
-		#clock-cells = <0>;
-		compatible = "fixed-clock";
-		clock-frequency = <32768>;
-		clock-output-names = "ext_osc32k";
-	};
-
 	pmu {
 		compatible = "arm,cortex-a53-pmu";
 		interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
@@ -854,7 +847,6 @@ rtc: rtc@7000000 {
 			interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
 			clock-output-names = "osc32k", "osc32k-out", "iosc";
-			clocks = <&ext_osc32k>;
 			#clock-cells = <1>;
 		};
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

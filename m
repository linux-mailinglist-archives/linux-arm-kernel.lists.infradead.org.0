Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F1B1AD008
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8+ccJ36PusdDLqIpCfzZm3yy8xS36lxAEonahkmYc8=; b=rcWBAPguQxc3Ut
	XzjHmRLP1lEj9bazVk0IR4SwHWXaO2zJo86ElEaMgFszUwq5gqDbDnnI6bJ5JmPHJ2VS+o/BSTGSv
	kmmB1vgqnEccN82Jp577QACDNDa1k+LgGhMYQPxoMbzsq8/bpu/1gGdSGpqUVBlU1RRIBL7USoNZr
	WgbDmD+hdaw3i2z66o6Z4Nwo+XQeXZtaL8Ju8K8dhOYW3YbooinAGpcZuxnetoYbGQBF2XHqMTT5p
	kckn72ul0rF4HznegxUnRdFPkq638iRp5j9GqEn2nhSlsf4ZdYqZKbdgW6pxLIQ+GimG0pMvGpVH3
	AkDee+ayoDu8u977z3XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9jP-0002ot-5k; Thu, 16 Apr 2020 18:59:23 +0000
Received: from mailoutvs15.siol.net ([185.57.226.206] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9iN-000278-D1
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 18:58:22 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 128D65246A6;
 Thu, 16 Apr 2020 20:58:16 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id clAohr0pdr4F; Thu, 16 Apr 2020 20:58:15 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 9EA805246A3;
 Thu, 16 Apr 2020 20:58:15 +0200 (CEST)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 342E15246A5;
 Thu, 16 Apr 2020 20:58:13 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: robh+dt@kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
 hkallweit1@gmail.com
Subject: [RFC PATCH 3/4] arm64: dts: allwinner: h6: Add AC200 EPHY related
 nodes
Date: Thu, 16 Apr 2020 20:57:57 +0200
Message-Id: <20200416185758.1388148-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200416185758.1388148-1-jernej.skrabec@siol.net>
References: <20200416185758.1388148-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_115819_751847_953BDFE2 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.206 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org, linux@armlinux.org.uk,
 mripard@kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 lee.jones@linaro.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner H6 contains copackaged AC200 multi functional IC which takes
care for analog audio, CVBS output, (another) RTC and Ethernet PHY.

Add support for Ethernet PHY for now.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 63 ++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index a5ee68388bd3..8663d2146e0f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -16,6 +16,16 @@ / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 
+	ac200_pwm_clk: ac200_clk {
+		compatible = "pwm-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm1_pin>;
+		pwms = <&pwm 1 42 0>;
+		status = "disabled";
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -250,6 +260,10 @@ sid: efuse@3006000 {
 			ths_calibration: thermal-sensor-calibration@14 {
 				reg = <0x14 0x8>;
 			};
+
+			ephy_calibration: ephy-calibration@2c {
+				reg = <0x2c 0x2>;
+			};
 		};
 
 		watchdog: watchdog@30090a0 {
@@ -294,6 +308,14 @@ ext_rgmii_pins: rgmii-pins {
 				drive-strength = <40>;
 			};
 
+			/omit-if-no-ref/
+			ext_rmii_pins: rmii_pins {
+				pins = "PA0", "PA1", "PA2", "PA3", "PA4",
+				       "PA5", "PA6", "PA7", "PA8", "PA9";
+				function = "emac";
+				drive-strength = <40>;
+			};
+
 			hdmi_pins: hdmi-pins {
 				pins = "PH8", "PH9", "PH10";
 				function = "hdmi";
@@ -314,6 +336,11 @@ i2c2_pins: i2c2-pins {
 				function = "i2c2";
 			};
 
+			i2c3_pins: i2c3-pins {
+				pins = "PB17", "PB18";
+				function = "i2c3";
+			};
+
 			mmc0_pins: mmc0-pins {
 				pins = "PF0", "PF1", "PF2", "PF3",
 				       "PF4", "PF5";
@@ -331,6 +358,11 @@ mmc1_pins: mmc1-pins {
 				bias-pull-up;
 			};
 
+			pwm1_pin: pwm1-pin {
+				pins = "PB19";
+				function = "pwm1";
+			};
+
 			mmc2_pins: mmc2-pins {
 				pins = "PC1", "PC4", "PC5", "PC6",
 				       "PC7", "PC8", "PC9", "PC10",
@@ -531,6 +563,37 @@ i2c2: i2c@5002800 {
 			#size-cells = <0>;
 		};
 
+		i2c3: i2c@5002c00 {
+			compatible = "allwinner,sun50i-h6-i2c",
+				     "allwinner,sun6i-a31-i2c";
+			reg = <0x05002c00 0x400>;
+			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_I2C3>;
+			resets = <&ccu RST_BUS_I2C3>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&i2c3_pins>;
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			ac200: mfd@10 {
+				compatible = "x-powers,ac200";
+				reg = <0x10>;
+				clocks = <&ac200_pwm_clk>;
+				interrupt-parent = <&pio>;
+				interrupts = <1 20 IRQ_TYPE_LEVEL_LOW>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+
+				ac200_ephy: phy {
+					compatible = "x-powers,ac200-ephy";
+					nvmem-cells = <&ephy_calibration>;
+					nvmem-cell-names = "calibration";
+					status = "disabled";
+				};
+			};
+		};
+
 		spi0: spi@5010000 {
 			compatible = "allwinner,sun50i-h6-spi",
 				     "allwinner,sun8i-h3-spi";
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

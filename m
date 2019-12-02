Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5C210E962
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 12:13:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9egqU0gYDuZzoeKWz5wy2g3BmvMA91t2DOVdKrP7F+g=; b=e+PZDqt/t7Ty9S
	MeehStC/LZFU/AgbvGEK81HdKM3Y5C44+UX4MJSIuKfi6wo4Gnb56Olj7ZBTtoVTXwpiJKg7tWYmk
	LNHTF3RGgh32JjMyoYjBI/rszHjnuVnpnSuXRauCH/N/yysTv53ahaWBKiAByvIaZBqoC/LmfOuqo
	mlzLmiSkZtqIvCS0BfpoKbqmmRFPulbcMsXWwTk8W1X12C27y/jkhHfgpdCB3fFQzktmrJxT6UFmE
	7Vj8x7QfMxDOgLqzgBXQSkvnakvmE63xbhLsJU+3R0XLpvdkPoPhi5vj9uEzAmCZnKLKbAW8zvpi6
	G/oVAXaZ6R3GVkD7urPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibjdn-0007IM-SG; Mon, 02 Dec 2019 11:13:19 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibjdb-0007Gs-O2; Mon, 02 Dec 2019 11:13:09 +0000
Received: from droid15-sz.amlogic.com (10.28.8.25) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Mon, 2 Dec 2019
 19:13:26 +0800
From: Jian Hu <jian.hu@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH] arm64: dts: meson-a1: add I2C nodes
Date: Mon, 2 Dec 2019 19:12:52 +0800
Message-ID: <20191202111253.94872-1-jian.hu@amlogic.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Originating-IP: [10.28.8.25]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_031307_782342_6E9938A6 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Wolfram Sang <wsa@the-dreams.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Jian Hu <jian.hu@amlogic.com>,
 linux-i2c@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are four I2C controllers in A1 series,
Share the same comptible with AXG.The I2C nodes
depend on pinmux and clock controller.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 149 ++++++++++++++++++++++
 1 file changed, 149 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index eab2ecd36aa8..d0a73d953f5e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -16,6 +16,13 @@
 	#address-cells = <2>;
 	#size-cells = <2>;
 
+	aliases {
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+	};
+
 	cpus {
 		#address-cells = <2>;
 		#size-cells = <0>;
@@ -117,6 +124,46 @@
 				};
 			};
 
+			i2c0: i2c@1400 {
+				compatible = "amlogic,meson-axg-i2c";
+				reg = <0x0 0x1400 0x0 0x24>;
+				interrupts = <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&clkc_periphs CLKID_I2C_M_A>;
+				status = "disabled";
+			};
+
+			i2c1: i2c@5c00 {
+				compatible = "amlogic,meson-axg-i2c";
+				reg = <0x0 0x5c00 0x0 0x24>;
+				interrupts = <GIC_SPI 68 IRQ_TYPE_EDGE_RISING>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&clkc_periphs CLKID_I2C_M_B>;
+				status = "disabled";
+			};
+
+			i2c2: i2c@6800 {
+				compatible = "amlogic,meson-axg-i2c";
+				reg = <0x0 0x6800 0x0 0x24>;
+				interrupts = <GIC_SPI 76 IRQ_TYPE_EDGE_RISING>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&clkc_periphs CLKID_I2C_M_C>;
+				status = "disabled";
+			};
+
+			i2c3: i2c@6c00 {
+				compatible = "amlogic,meson-axg-i2c";
+				reg = <0x0 0x6c00 0x0 0x24>;
+				interrupts = <GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				clocks = <&clkc_periphs CLKID_I2C_M_D>;
+				status = "disabled";
+			};
+
 			uart_AO: serial@1c00 {
 				compatible = "amlogic,meson-gx-uart",
 					     "amlogic,meson-ao-uart";
@@ -171,3 +218,105 @@
 		#clock-cells = <0>;
 	};
 };
+
+&periphs_pinctrl {
+	i2c0_f11_pins:i2c0-f11 {
+		mux {
+			groups = "i2c0_sck_f11",
+				"i2c0_sda_f12";
+			function = "i2c0";
+			bias-pull-up;
+			drive-strength-microamp = <3000>;
+		};
+	};
+
+	i2c0_f9_pins:i2c0-f9 {
+		mux {
+			groups = "i2c0_sck_f9",
+				"i2c0_sda_f10";
+			function = "i2c0";
+			bias-pull-up;
+			drive-strength-microamp = <3000>;
+		};
+	};
+
+	i2c1_x_pins:i2c1-x {
+		mux {
+			groups = "i2c1_sck_x",
+				"i2c1_sda_x";
+			function = "i2c1";
+			bias-pull-up;
+			drive-strength-microamp = <3000>;
+		};
+	};
+
+	i2c1_a_pins:i2c1-a {
+		mux {
+			groups = "i2c1_sck_a",
+				"i2c1_sda_a";
+			function = "i2c1";
+			bias-pull-up;
+			drive-strength-microamp = <3000>;
+		};
+	};
+
+	i2c2_x0_pins:i2c2-x0 {
+		mux {
+			groups = "i2c2_sck_x0",
+				"i2c2_sda_x1";
+			function = "i2c2";
+			bias-pull-up;
+			drive-strength-microamp = <3000>;
+		};
+	};
+
+	i2c2_x15_pins:i2c2-x15 {
+		mux {
+			groups = "i2c2_sck_x15",
+				"i2c2_sda_x16";
+			function = "i2c2";
+			bias-pull-up;
+			drive-strength-microamp = <3000>;
+		};
+	};
+
+	i2c2_a4_pins:i2c2-a4 {
+		mux {
+			groups = "i2c2_sck_a4",
+				"i2c2_sda_a5";
+			function = "i2c2";
+			bias-pull-up;
+			drive-strength-microamp = <3000>;
+		};
+	};
+
+	i2c2_a8_pins:i2c2-a8 {
+		mux {
+			groups = "i2c2_sck_a8",
+				"i2c2_sda_a9";
+			function = "i2c2";
+			bias-pull-up;
+			drive-strength-microamp = <3000>;
+		};
+	};
+
+	i2c3_x_pins:i2c3-x {
+		mux {
+			groups = "i2c3_sck_x",
+				"i2c3_sda_x";
+			function = "i2c3";
+			bias-pull-up;
+			drive-strength-microamp = <3000>;
+		};
+	};
+
+	i2c3_f_pins:i2c3-f {
+		mux {
+			groups = "i2c3_sck_f",
+				"i2c3_sda_f";
+			function = "i2c3";
+			bias-pull-up;
+			drive-strength-microamp = <3000>;
+		};
+	};
+};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

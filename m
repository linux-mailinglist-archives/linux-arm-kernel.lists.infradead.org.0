Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5AB162630
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 13:33:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YdigYFL2WO9v4u5daD6JbQN/dJnu5R3DiJ7hGD3ovPM=; b=lacdDa78pz/b+X
	Hbvh0DQgIHGKAMraX0YD13cfZsfLvdX2qX8xiQt6ajAeiD4uby8HNwW+s+j+s2CGLW+NpanNaYEHv
	KqOLFcJx5kpSZ/stm9bH9An/+DkGOZ/jse1Oa329ezZ8kSTXr9JhMuhsYWNd7uyOCUTXLKE9HjyFe
	wdaRNtwYHNNSaLYTHBsUg1P8NqpV0bZh8Z7o/PvAyLtyA7gi4kuBOh/lJKvmhKX/VH0HbfjO1BgU4
	beFiDi4CRy4VKZB/AVvsquoF6G+3gh0ppNGnRlErDiSwA+W9uRytE3e+cDn9Y+4ZWFuFF6v/04lbd
	6o/Gnm9y1Fp/59O0yuwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j423f-0004j3-SC; Tue, 18 Feb 2020 12:32:59 +0000
Received: from 212.199.177.27.static.012.net.il ([212.199.177.27]
 helo=herzl.nuvoton.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j422y-0004A1-B8
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 12:32:20 +0000
Received: from taln60.nuvoton.co.il (ntil-fw [212.199.177.25])
 by herzl.nuvoton.co.il (8.13.8/8.13.8) with ESMTP id 01ICVeZ2007992;
 Tue, 18 Feb 2020 14:31:40 +0200
Received: by taln60.nuvoton.co.il (Postfix, from userid 10070)
 id 35AAE603B0; Tue, 18 Feb 2020 14:31:40 +0200 (IST)
From: Tomer Maimon <tmaimon77@gmail.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, joel@jms.id.au,
 avifishman70@gmail.com, tali.perry1@gmail.com, venture@google.com,
 yuenn@google.com, benjaminfair@google.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/3] arm: dts: add new device nodes to NPCM750 device tree
Date: Tue, 18 Feb 2020 14:31:28 +0200
Message-Id: <20200218123128.17990-4-tmaimon77@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200218123128.17990-1-tmaimon77@gmail.com>
References: <20200218123128.17990-1-tmaimon77@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_043217_380735_93BB6E0D 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 3.0 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmaimon77[at]gmail.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: devicetree@vger.kernel.org, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the following new device nodes to NPCM750 and
NPCM750 evolution board device tree:

        - NPCM7xx Pin controller and GPIO
        - NPCM7xx PWM and FAN.
        - NPCM7xx EHCI USB.
        - NPCM7xx KCS.
        - NPCM Reset.
        - NPCM Peripheral SPI.
        - NPCM FIU SPI.
        - NPCM HWRNG.
        - NPCM I2C.
        - STMicro STMMAC.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
---
 arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi | 937 +++++++++++++++++-
 arch/arm/boot/dts/nuvoton-npcm750-evb.dts     | 444 ++++++++-
 .../boot/dts/nuvoton-npcm750-pincfg-evb.dtsi  | 157 +++
 arch/arm/boot/dts/nuvoton-npcm750.dtsi        |  18 +
 4 files changed, 1535 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm750-pincfg-evb.dtsi

diff --git a/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
index 72e364054e72..0c9e67bff0e4 100644
--- a/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton-common-npcm7xx.dtsi
@@ -4,12 +4,18 @@
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/nuvoton,npcm7xx-clock.h>
+#include <dt-bindings/reset/nuvoton,npcm7xx-reset.h>
 
 / {
 	#address-cells = <1>;
 	#size-cells = <1>;
 	interrupt-parent = <&gic>;
 
+	memory {
+		device_type = "memory";
+		reg = <0 0>;
+	};
+
 	/* external reference clock */
 	clk_refclk: clk_refclk {
 		compatible = "fixed-clock";
@@ -64,12 +70,6 @@
 		interrupt-parent = <&gic>;
 		ranges = <0x0 0xf0000000 0x00900000>;
 
-		gcr: gcr@800000 {
-			compatible = "nuvoton,npcm750-gcr", "syscon",
-				"simple-mfd";
-			reg = <0x800000 0x1000>;
-		};
-
 		scu: scu@3fe000 {
 			compatible = "arm,cortex-a9-scu";
 			reg = <0x3fe000 0x1000>;
@@ -92,6 +92,16 @@
 			reg = <0x3ff000 0x1000>,
 				<0x3fe100 0x100>;
 		};
+
+		gcr: gcr@800000 {
+			compatible = "nuvoton,npcm750-gcr", "syscon", "simple-mfd";
+			reg = <0x800000 0x1000>;
+		};
+
+		rst: rst@801000 {
+			compatible = "nuvoton,npcm750-rst", "syscon", "simple-mfd";
+			reg = <0x801000 0x6C>;
+		};
 	};
 
 	ahb {
@@ -101,6 +111,12 @@
 		interrupt-parent = <&gic>;
 		ranges;
 
+		rstc: rstc@f0801000 {
+			compatible = "nuvoton,npcm750-reset";
+			reg = <0xf0801000 0x70>;
+			#reset-cells = <2>;
+		};
+
 		clk: clock-controller@f0801000 {
 			compatible = "nuvoton,npcm750-clk", "syscon";
 			#clock-cells = <1>;
@@ -110,6 +126,63 @@
 			clocks = <&clk_refclk>, <&clk_sysbypck>, <&clk_mcbypck>;
 		};
 
+		gmac0: eth@f0802000 {
+			device_type = "network";
+			compatible = "snps,dwmac";
+			reg = <0xf0802000 0x2000>;
+			interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			ethernet = <0>;
+			clocks	= <&clk_rg1refck>, <&clk NPCM7XX_CLK_AHB>;
+			clock-names = "stmmaceth", "clk_gmac";
+			pinctrl-names = "default";
+			pinctrl-0 = <&rg1_pins
+					&rg1mdio_pins>;
+			status = "disabled";
+		};
+
+		ehci1:usb@f0806000 {
+			compatible = "nuvoton,npcm750-ehci";
+			reg = <0xf0806000 0x1000>;
+			interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		fiu0: spi@fb000000 {
+			compatible = "nuvoton,npcm750-fiu";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0xfb000000 0x1000>, <0x80000000 0x10000000>;
+			reg-names = "control", "memory";
+			clocks = <&clk NPCM7XX_CLK_AHB>;
+			clock-names = "clk_ahb";
+			status = "disabled";
+		};
+
+		fiu3: spi@c0000000 {
+			compatible = "nuvoton,npcm750-fiu";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0xc0000000 0x1000>, <0xA0000000 0x20000000>;
+			reg-names = "control", "memory";
+			clocks = <&clk NPCM7XX_CLK_SPI3>;
+			clock-names = "clk_spi3";
+			pinctrl-names = "default";
+			pinctrl-0 = <&spi3_pins>;
+			status = "disabled";
+		};
+
+		fiux: spi@fb001000 {
+			compatible = "nuvoton,npcm750-fiu";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0xfb001000 0x1000>, <0xf8000000 0x2000000>;
+			reg-names = "control", "memory";
+			clocks = <&clk NPCM7XX_CLK_AHB>;
+			clock-names = "clk_ahb";
+			status = "disabled";
+		};
+
 		apb {
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -117,6 +190,69 @@
 			interrupt-parent = <&gic>;
 			ranges = <0x0 0xf0000000 0x00300000>;
 
+			lpc_kcs: lpc_kcs@7000 {
+				compatible = "nuvoton,npcm750-lpc-kcs",
+						"simple-mfd", "syscon";
+				reg = <0x7000 0x40>;
+				reg-io-width = <1>;
+
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x7000 0x40>;
+
+				kcs1: kcs1@0 {
+					compatible = "nuvoton,npcm750-kcs-bmc";
+					reg = <0x0 0x40>;
+					interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+					kcs_chan = <1>;
+					status = "disabled";
+				};
+
+				kcs2: kcs2@0 {
+					compatible = "nuvoton,npcm750-kcs-bmc";
+					reg = <0x0 0x40>;
+					interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+					kcs_chan = <2>;
+					status = "disabled";
+				};
+
+				kcs3: kcs3@0 {
+					compatible = "nuvoton,npcm750-kcs-bmc";
+					reg = <0x0 0x40>;
+					interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+					kcs_chan = <3>;
+					status = "disabled";
+				};
+			};
+
+			spi0: spi@200000 {
+				compatible = "nuvoton,npcm750-pspi";
+				reg = <0x200000 0x1000>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pspi1_pins>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk NPCM7XX_CLK_APB5>;
+				clock-names = "clk_apb5";
+				resets = <&rstc NPCM7XX_RESET_IPSRST2 NPCM7XX_RESET_PSPI1>;
+				status = "disabled";
+			};
+
+			spi1: spi@201000 {
+				compatible = "nuvoton,npcm750-pspi";
+				reg = <0x201000 0x1000>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pspi2_pins>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk NPCM7XX_CLK_APB5>;
+				clock-names = "clk_apb5";
+				resets = <&rstc NPCM7XX_RESET_IPSRST2 NPCM7XX_RESET_PSPI2>;
+				status = "disabled";
+			};
+
 			timer0: timer@8000 {
 				compatible = "nuvoton,npcm750-timer";
 				interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
@@ -183,6 +319,795 @@
 				reg-shift = <2>;
 				status = "disabled";
 			};
+
+			rng: rng@b000 {
+				compatible = "nuvoton,npcm750-rng";
+				reg = <0xb000 0x8>;
+				status = "disabled";
+			};
+
+			adc: adc@c000 {
+				compatible = "nuvoton,npcm750-adc";
+				reg = <0xc000 0x8>;
+				interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk NPCM7XX_CLK_ADC>;
+				resets = <&rstc NPCM7XX_RESET_IPSRST1 NPCM7XX_RESET_ADC>;
+				status = "disabled";
+			};
+
+			pwm_fan:pwm-fan-controller@103000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "nuvoton,npcm750-pwm-fan";
+				reg = <0x103000 0x2000>, <0x180000 0x8000>;
+				reg-names = "pwm", "fan";
+				clocks = <&clk NPCM7XX_CLK_APB3>,
+					<&clk NPCM7XX_CLK_APB4>;
+				clock-names = "pwm","fan";
+				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>,
+						<GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
+						<GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
+						<GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
+						<GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
+						<GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
+						<GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
+						<GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&pwm0_pins &pwm1_pins
+						&pwm2_pins &pwm3_pins
+						&pwm4_pins &pwm5_pins
+						&pwm6_pins &pwm7_pins
+						&fanin0_pins &fanin1_pins
+						&fanin2_pins &fanin3_pins
+						&fanin4_pins &fanin5_pins
+						&fanin6_pins &fanin7_pins
+						&fanin8_pins &fanin9_pins
+						&fanin10_pins &fanin11_pins
+						&fanin12_pins &fanin13_pins
+						&fanin14_pins &fanin15_pins>;
+				status = "disabled";
+			};
+
+			i2c0: i2c@80000 {
+				reg = <0x80000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb0_pins>;
+				status = "disabled";
+			};
+
+			i2c1: i2c@81000 {
+				reg = <0x81000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb1_pins>;
+				status = "disabled";
+			};
+
+			i2c2: i2c@82000 {
+				reg = <0x82000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb2_pins>;
+				status = "disabled";
+			};
+
+			i2c3: i2c@83000 {
+				reg = <0x83000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb3_pins>;
+				status = "disabled";
+			};
+
+			i2c4: i2c@84000 {
+				reg = <0x84000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb4_pins>;
+				status = "disabled";
+			};
+
+			i2c5: i2c@85000 {
+				reg = <0x85000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb5_pins>;
+				status = "disabled";
+			};
+
+			i2c6: i2c@86000 {
+				reg = <0x86000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb6_pins>;
+				status = "disabled";
+			};
+
+			i2c7: i2c@87000 {
+				reg = <0x87000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb7_pins>;
+				status = "disabled";
+			};
+
+			i2c8: i2c@88000 {
+				reg = <0x88000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb8_pins>;
+				status = "disabled";
+			};
+
+			i2c9: i2c@89000 {
+				reg = <0x89000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb9_pins>;
+				status = "disabled";
+			};
+
+			i2c10: i2c@8a000 {
+				reg = <0x8a000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb10_pins>;
+				status = "disabled";
+			};
+
+			i2c11: i2c@8b000 {
+				reg = <0x8b000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb11_pins>;
+				status = "disabled";
+			};
+
+			i2c12: i2c@8c000 {
+				reg = <0x8c000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb12_pins>;
+				status = "disabled";
+			};
+
+			i2c13: i2c@8d000 {
+				reg = <0x8d000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb13_pins>;
+				status = "disabled";
+			};
+
+			i2c14: i2c@8e000 {
+				reg = <0x8e000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb14_pins>;
+				status = "disabled";
+			};
+
+			i2c15: i2c@8f000 {
+				reg = <0x8f000 0x1000>;
+				compatible = "nuvoton,npcm750-i2c";
+				clocks = <&clk NPCM7XX_CLK_APB2>;
+				bus-frequency = <100000>;
+				interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&smb15_pins>;
+				status = "disabled";
+			};
+		};
+	};
+
+	pinctrl: pinctrl@f0800000 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "nuvoton,npcm750-pinctrl", "syscon", "simple-mfd";
+		ranges = <0 0xf0010000 0x8000>;
+		status = "okay";
+		gpio0: gpio@f0010000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x0 0x80>;
+			interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 0 32>;
+		};
+		gpio1: gpio@f0011000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x1000 0x80>;
+			interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 32 32>;
+		};
+		gpio2: gpio@f0012000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x2000 0x80>;
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 64 32>;
+		};
+		gpio3: gpio@f0013000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x3000 0x80>;
+			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 96 32>;
+		};
+		gpio4: gpio@f0014000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x4000 0x80>;
+			interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 128 32>;
+		};
+		gpio5: gpio@f0015000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x5000 0x80>;
+			interrupts = <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 160 32>;
+		};
+		gpio6: gpio@f0016000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x6000 0x80>;
+			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 192 32>;
+		};
+		gpio7: gpio@f0017000 {
+			gpio-controller;
+			#gpio-cells = <2>;
+			reg = <0x7000 0x80>;
+			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&pinctrl 0 224 32>;
+		};
+
+		iox1_pins: iox1-pins {
+			groups = "iox1";
+			function = "iox1";
+		};
+		iox2_pins: iox2-pins {
+			groups = "iox2";
+			function = "iox2";
+		};
+		smb1d_pins: smb1d-pins {
+			groups = "smb1d";
+			function = "smb1d";
+		};
+		smb2d_pins: smb2d-pins {
+			groups = "smb2d";
+			function = "smb2d";
+		};
+		lkgpo1_pins: lkgpo1-pins {
+			groups = "lkgpo1";
+			function = "lkgpo1";
+		};
+		lkgpo2_pins: lkgpo2-pins {
+			groups = "lkgpo2";
+			function = "lkgpo2";
+		};
+		ioxh_pins: ioxh-pins {
+			groups = "ioxh";
+			function = "ioxh";
+		};
+		gspi_pins: gspi-pins {
+			groups = "gspi";
+			function = "gspi";
+		};
+		smb5b_pins: smb5b-pins {
+			groups = "smb5b";
+			function = "smb5b";
+		};
+		smb5c_pins: smb5c-pins {
+			groups = "smb5c";
+			function = "smb5c";
+		};
+		lkgpo0_pins: lkgpo0-pins {
+			groups = "lkgpo0";
+			function = "lkgpo0";
+		};
+		pspi2_pins: pspi2-pins {
+			groups = "pspi2";
+			function = "pspi2";
+		};
+		smb4den_pins: smb4den-pins {
+			groups = "smb4den";
+			function = "smb4den";
+		};
+		smb4b_pins: smb4b-pins {
+			groups = "smb4b";
+			function = "smb4b";
+		};
+		smb4c_pins: smb4c-pins {
+			groups = "smb4c";
+			function = "smb4c";
+		};
+		smb15_pins: smb15-pins {
+			groups = "smb15";
+			function = "smb15";
+		};
+		smb4d_pins: smb4d-pins {
+			groups = "smb4d";
+			function = "smb4d";
+		};
+		smb14_pins: smb14-pins {
+			groups = "smb14";
+			function = "smb14";
+		};
+		smb5_pins: smb5-pins {
+			groups = "smb5";
+			function = "smb5";
+		};
+		smb4_pins: smb4-pins {
+			groups = "smb4";
+			function = "smb4";
+		};
+		smb3_pins: smb3-pins {
+			groups = "smb3";
+			function = "smb3";
+		};
+		spi0cs1_pins: spi0cs1-pins {
+			groups = "spi0cs1";
+			function = "spi0cs1";
+		};
+		spi0cs2_pins: spi0cs2-pins {
+			groups = "spi0cs2";
+			function = "spi0cs2";
+		};
+		spi0cs3_pins: spi0cs3-pins {
+			groups = "spi0cs3";
+			function = "spi0cs3";
+		};
+		smb3c_pins: smb3c-pins {
+			groups = "smb3c";
+			function = "smb3c";
+		};
+		smb3b_pins: smb3b-pins {
+			groups = "smb3b";
+			function = "smb3b";
+		};
+		bmcuart0a_pins: bmcuart0a-pins {
+			groups = "bmcuart0a";
+			function = "bmcuart0a";
+		};
+		uart1_pins: uart1-pins {
+			groups = "uart1";
+			function = "uart1";
+		};
+		jtag2_pins: jtag2-pins {
+			groups = "jtag2";
+			function = "jtag2";
+		};
+		bmcuart1_pins: bmcuart1-pins {
+			groups = "bmcuart1";
+			function = "bmcuart1";
+		};
+		uart2_pins: uart2-pins {
+			groups = "uart2";
+			function = "uart2";
+		};
+		bmcuart0b_pins: bmcuart0b-pins {
+			groups = "bmcuart0b";
+			function = "bmcuart0b";
+		};
+		r1err_pins: r1err-pins {
+			groups = "r1err";
+			function = "r1err";
+		};
+		r1md_pins: r1md-pins {
+			groups = "r1md";
+			function = "r1md";
+		};
+		smb3d_pins: smb3d-pins {
+			groups = "smb3d";
+			function = "smb3d";
+		};
+		fanin0_pins: fanin0-pins {
+			groups = "fanin0";
+			function = "fanin0";
+		};
+		fanin1_pins: fanin1-pins {
+			groups = "fanin1";
+			function = "fanin1";
+		};
+		fanin2_pins: fanin2-pins {
+			groups = "fanin2";
+			function = "fanin2";
+		};
+		fanin3_pins: fanin3-pins {
+			groups = "fanin3";
+			function = "fanin3";
+		};
+		fanin4_pins: fanin4-pins {
+			groups = "fanin4";
+			function = "fanin4";
+		};
+		fanin5_pins: fanin5-pins {
+			groups = "fanin5";
+			function = "fanin5";
+		};
+		fanin6_pins: fanin6-pins {
+			groups = "fanin6";
+			function = "fanin6";
+		};
+		fanin7_pins: fanin7-pins {
+			groups = "fanin7";
+			function = "fanin7";
+		};
+		fanin8_pins: fanin8-pins {
+			groups = "fanin8";
+			function = "fanin8";
+		};
+		fanin9_pins: fanin9-pins {
+			groups = "fanin9";
+			function = "fanin9";
+		};
+		fanin10_pins: fanin10-pins {
+			groups = "fanin10";
+			function = "fanin10";
+		};
+		fanin11_pins: fanin11-pins {
+			groups = "fanin11";
+			function = "fanin11";
+		};
+		fanin12_pins: fanin12-pins {
+			groups = "fanin12";
+			function = "fanin12";
+		};
+		fanin13_pins: fanin13-pins {
+			groups = "fanin13";
+			function = "fanin13";
+		};
+		fanin14_pins: fanin14-pins {
+			groups = "fanin14";
+			function = "fanin14";
+		};
+		fanin15_pins: fanin15-pins {
+			groups = "fanin15";
+			function = "fanin15";
+		};
+		pwm0_pins: pwm0-pins {
+			groups = "pwm0";
+			function = "pwm0";
+		};
+		pwm1_pins: pwm1-pins {
+			groups = "pwm1";
+			function = "pwm1";
+		};
+		pwm2_pins: pwm2-pins {
+			groups = "pwm2";
+			function = "pwm2";
+		};
+		pwm3_pins: pwm3-pins {
+			groups = "pwm3";
+			function = "pwm3";
+		};
+		r2_pins: r2-pins {
+			groups = "r2";
+			function = "r2";
+		};
+		r2err_pins: r2err-pins {
+			groups = "r2err";
+			function = "r2err";
+		};
+		r2md_pins: r2md-pins {
+			groups = "r2md";
+			function = "r2md";
+		};
+		ga20kbc_pins: ga20kbc-pins {
+			groups = "ga20kbc";
+			function = "ga20kbc";
+		};
+		smb5d_pins: smb5d-pins {
+			groups = "smb5d";
+			function = "smb5d";
+		};
+		lpc_pins: lpc-pins {
+			groups = "lpc";
+			function = "lpc";
+		};
+		espi_pins: espi-pins {
+			groups = "espi";
+			function = "espi";
+		};
+		rg1_pins: rg1-pins {
+			groups = "rg1";
+			function = "rg1";
+		};
+		rg1mdio_pins: rg1mdio-pins {
+			groups = "rg1mdio";
+			function = "rg1mdio";
+		};
+		rg2_pins: rg2-pins {
+			groups = "rg2";
+			function = "rg2";
+		};
+		ddr_pins: ddr-pins {
+			groups = "ddr";
+			function = "ddr";
+		};
+		smb0_pins: smb0-pins {
+			groups = "smb0";
+			function = "smb0";
+		};
+		smb1_pins: smb1-pins {
+			groups = "smb1";
+			function = "smb1";
+		};
+		smb2_pins: smb2-pins {
+			groups = "smb2";
+			function = "smb2";
+		};
+		smb2c_pins: smb2c-pins {
+			groups = "smb2c";
+			function = "smb2c";
+		};
+		smb2b_pins: smb2b-pins {
+			groups = "smb2b";
+			function = "smb2b";
+		};
+		smb1c_pins: smb1c-pins {
+			groups = "smb1c";
+			function = "smb1c";
+		};
+		smb1b_pins: smb1b-pins {
+			groups = "smb1b";
+			function = "smb1b";
+		};
+		smb8_pins: smb8-pins {
+			groups = "smb8";
+			function = "smb8";
+		};
+		smb9_pins: smb9-pins {
+			groups = "smb9";
+			function = "smb9";
+		};
+		smb10_pins: smb10-pins {
+			groups = "smb10";
+			function = "smb10";
+		};
+		smb11_pins: smb11-pins {
+			groups = "smb11";
+			function = "smb11";
+		};
+		sd1_pins: sd1-pins {
+			groups = "sd1";
+			function = "sd1";
+		};
+		sd1pwr_pins: sd1pwr-pins {
+			groups = "sd1pwr";
+			function = "sd1pwr";
+		};
+		pwm4_pins: pwm4-pins {
+			groups = "pwm4";
+			function = "pwm4";
+		};
+		pwm5_pins: pwm5-pins {
+			groups = "pwm5";
+			function = "pwm5";
+		};
+		pwm6_pins: pwm6-pins {
+			groups = "pwm6";
+			function = "pwm6";
+		};
+		pwm7_pins: pwm7-pins {
+			groups = "pwm7";
+			function = "pwm7";
+		};
+		mmc8_pins: mmc8-pins {
+			groups = "mmc8";
+			function = "mmc8";
+		};
+		mmc_pins: mmc-pins {
+			groups = "mmc";
+			function = "mmc";
+		};
+		mmcwp_pins: mmcwp-pins {
+			groups = "mmcwp";
+			function = "mmcwp";
+		};
+		mmccd_pins: mmccd-pins {
+			groups = "mmccd";
+			function = "mmccd";
+		};
+		mmcrst_pins: mmcrst-pins {
+			groups = "mmcrst";
+			function = "mmcrst";
+		};
+		clkout_pins: clkout-pins {
+			groups = "clkout";
+			function = "clkout";
+		};
+		serirq_pins: serirq-pins {
+			groups = "serirq";
+			function = "serirq";
+		};
+		lpcclk_pins: lpcclk-pins {
+			groups = "lpcclk";
+			function = "lpcclk";
+		};
+		scipme_pins: scipme-pins {
+			groups = "scipme";
+			function = "scipme";
+		};
+		sci_pins: sci-pins {
+			groups = "sci";
+			function = "sci";
+		};
+		smb6_pins: smb6-pins {
+			groups = "smb6";
+			function = "smb6";
+		};
+		smb7_pins: smb7-pins {
+			groups = "smb7";
+			function = "smb7";
+		};
+		pspi1_pins: pspi1-pins {
+			groups = "pspi1";
+			function = "pspi1";
+		};
+		faninx_pins: faninx-pins {
+			groups = "faninx";
+			function = "faninx";
+		};
+		r1_pins: r1-pins {
+			groups = "r1";
+			function = "r1";
+		};
+		spi3_pins: spi3-pins {
+			groups = "spi3";
+			function = "spi3";
+		};
+		spi3cs1_pins: spi3cs1-pins {
+			groups = "spi3cs1";
+			function = "spi3cs1";
+		};
+		spi3quad_pins: spi3quad-pins {
+			groups = "spi3quad";
+			function = "spi3quad";
+		};
+		spi3cs2_pins: spi3cs2-pins {
+			groups = "spi3cs2";
+			function = "spi3cs2";
+		};
+		spi3cs3_pins: spi3cs3-pins {
+			groups = "spi3cs3";
+			function = "spi3cs3";
+		};
+		nprd_smi_pins: nprd-smi-pins {
+			groups = "nprd_smi";
+			function = "nprd_smi";
+		};
+		smb0b_pins: smb0b-pins {
+			groups = "smb0b";
+			function = "smb0b";
+		};
+		smb0c_pins: smb0c-pins {
+			groups = "smb0c";
+			function = "smb0c";
+		};
+		smb0den_pins: smb0den-pins {
+			groups = "smb0den";
+			function = "smb0den";
+		};
+		smb0d_pins: smb0d-pins {
+			groups = "smb0d";
+			function = "smb0d";
+		};
+		ddc_pins: ddc-pins {
+			groups = "ddc";
+			function = "ddc";
+		};
+		rg2mdio_pins: rg2mdio-pins {
+			groups = "rg2mdio";
+			function = "rg2mdio";
+		};
+		wdog1_pins: wdog1-pins {
+			groups = "wdog1";
+			function = "wdog1";
+		};
+		wdog2_pins: wdog2-pins {
+			groups = "wdog2";
+			function = "wdog2";
+		};
+		smb12_pins: smb12-pins {
+			groups = "smb12";
+			function = "smb12";
+		};
+		smb13_pins: smb13-pins {
+			groups = "smb13";
+			function = "smb13";
+		};
+		spix_pins: spix-pins {
+			groups = "spix";
+			function = "spix";
+		};
+		spixcs1_pins: spixcs1-pins {
+			groups = "spixcs1";
+			function = "spixcs1";
+		};
+		clkreq_pins: clkreq-pins {
+			groups = "clkreq";
+			function = "clkreq";
+		};
+		hgpio0_pins: hgpio0-pins {
+			groups = "hgpio0";
+			function = "hgpio0";
+		};
+		hgpio1_pins: hgpio1-pins {
+			groups = "hgpio1";
+			function = "hgpio1";
+		};
+		hgpio2_pins: hgpio2-pins {
+			groups = "hgpio2";
+			function = "hgpio2";
+		};
+		hgpio3_pins: hgpio3-pins {
+			groups = "hgpio3";
+			function = "hgpio3";
+		};
+		hgpio4_pins: hgpio4-pins {
+			groups = "hgpio4";
+			function = "hgpio4";
+		};
+		hgpio5_pins: hgpio5-pins {
+			groups = "hgpio5";
+			function = "hgpio5";
+		};
+		hgpio6_pins: hgpio6-pins {
+			groups = "hgpio6";
+			function = "hgpio6";
+		};
+		hgpio7_pins: hgpio7-pins {
+			groups = "hgpio7";
+			function = "hgpio7";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/nuvoton-npcm750-evb.dts b/arch/arm/boot/dts/nuvoton-npcm750-evb.dts
index 15f744f1beea..1f5a0abf5055 100644
--- a/arch/arm/boot/dts/nuvoton-npcm750-evb.dts
+++ b/arch/arm/boot/dts/nuvoton-npcm750-evb.dts
@@ -4,11 +4,43 @@
 
 /dts-v1/;
 #include "nuvoton-npcm750.dtsi"
+#include "dt-bindings/gpio/gpio.h"
+#include "nuvoton-npcm750-pincfg-evb.dtsi"
 
 / {
 	model = "Nuvoton npcm750 Development Board (Device Tree)";
 	compatible = "nuvoton,npcm750";
 
+	aliases {
+		ethernet2 = &gmac0;
+		ethernet3 = &gmac1;
+		serial0 = &serial0;
+		serial1 = &serial1;
+		serial2 = &serial2;
+		serial3 = &serial3;
+		i2c0 = &i2c0;
+		i2c1 = &i2c1;
+		i2c2 = &i2c2;
+		i2c3 = &i2c3;
+		i2c4 = &i2c4;
+		i2c5 = &i2c5;
+		i2c6 = &i2c6;
+		i2c7 = &i2c7;
+		i2c8 = &i2c8;
+		i2c9 = &i2c9;
+		i2c10 = &i2c10;
+		i2c11 = &i2c11;
+		i2c12 = &i2c12;
+		i2c13 = &i2c13;
+		i2c14 = &i2c14;
+		i2c15 = &i2c15;
+		spi0 = &spi0;
+		spi1 = &spi1;
+		fiu0 = &fiu0;
+		fiu1 = &fiu3;
+		fiu2 = &fiux;
+	};
+
 	chosen {
 		stdout-path = &serial3;
 	};
@@ -16,24 +48,406 @@
 	memory {
 		reg = <0 0x40000000>;
 	};
-};
 
-&watchdog1 {
-	status = "okay";
-};
+	ahb {
+		gmac0: eth@f0802000 {
+			phy-mode = "rgmii-id";
+			status = "okay";
+		};
 
-&serial0 {
-	status = "okay";
-};
+		gmac1: eth@f0804000 {
+			phy-mode = "rgmii-id";
+			status = "okay";
+		};
 
-&serial1 {
-	status = "okay";
-};
+		ehci1: usb@f0806000 {
+			status = "okay";
+		};
 
-&serial2 {
-	status = "okay";
-};
+		fiu0: spi@fb000000 {
+			status = "okay";
+			spi-nor@0 {
+				compatible = "jedec,spi-nor";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				spi-rx-bus-width = <2>;
+				reg = <0>;
+				spi-max-frequency = <5000000>;
+				partitions@80000000 {
+					compatible = "fixed-partitions";
+					#address-cells = <1>;
+					#size-cells = <1>;
+					bbuboot1@0 {
+						label = "bb-uboot-1";
+						reg = <0x0000000 0x80000>;
+						read-only;
+						};
+					bbuboot2@80000 {
+						label = "bb-uboot-2";
+						reg = <0x0080000 0x80000>;
+						read-only;
+						};
+					envparam@100000 {
+						label = "env-param";
+						reg = <0x0100000 0x40000>;
+						read-only;
+						};
+					spare@140000 {
+						label = "spare";
+						reg = <0x0140000 0xC0000>;
+						};
+					kernel@200000 {
+						label = "kernel";
+						reg = <0x0200000 0x400000>;
+						};
+					rootfs@600000 {
+						label = "rootfs";
+						reg = <0x0600000 0x700000>;
+						};
+					spare1@D00000 {
+						label = "spare1";
+						reg = <0x0D00000 0x200000>;
+						};
+					spare2@0F00000 {
+						label = "spare2";
+						reg = <0x0F00000 0x200000>;
+						};
+					spare3@1100000 {
+						label = "spare3";
+						reg = <0x1100000 0x200000>;
+						};
+					spare4@1300000 {
+						label = "spare4";
+						reg = <0x1300000 0x0>;
+					};
+				};
+			};
+		};
+
+		fiu3: spi@c0000000 {
+			pinctrl-0 = <&spi3_pins>, <&spi3quad_pins>;
+			status = "okay";
+			spi-nor@0 {
+				compatible = "jedec,spi-nor";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				spi-rx-bus-width = <2>;
+				reg = <0>;
+				spi-max-frequency = <5000000>;
+				partitions@A0000000 {
+					compatible = "fixed-partitions";
+					#address-cells = <1>;
+					#size-cells = <1>;
+					system1@0 {
+						label = "spi3-system1";
+						reg = <0x0 0x0>;
+					};
+				};
+			};
+		};
+
+		fiux: spi@fb001000 {
+			spix-mode;
+		};
+
+		apb {
+
+			watchdog1: watchdog@901C {
+				status = "okay";
+			};
+
+			rng: rng@b000 {
+				status = "okay";
+			};
+
+			serial0: serial@1000 {
+				status = "okay";
+			};
+
+			serial1: serial@2000 {
+				status = "okay";
+			};
+
+			serial2: serial@3000 {
+				status = "okay";
+			};
+
+			serial3: serial@4000 {
+				status = "okay";
+			};
+
+			adc: adc@c000 {
+				status = "okay";
+			};
+
+			otp:otp@189000 {
+				status = "okay";
+			};
+
+			lpc_kcs: lpc_kcs@7000 {
+				kcs1: kcs1@0 {
+					status = "okay";
+				};
+
+				kcs2: kcs2@0 {
+					status = "okay";
+				};
+
+				kcs3: kcs3@0 {
+					status = "okay";
+				};
+			};
+
+			/* lm75 on SVB */
+			i2c0: i2c@80000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
 
-&serial3 {
-	status = "okay";
+				lm75@48 {
+					compatible = "lm75";
+					reg = <0x48>;
+					status = "okay";
+				};
+			};
+
+			/* lm75 on EB */
+			i2c1: i2c@81000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+
+				lm75@48 {
+					compatible = "lm75";
+					reg = <0x48>;
+					status = "okay";
+				};
+			};
+
+			/* tmp100 on EB */
+			i2c2: i2c@82000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+
+				tmp100@48 {
+					compatible = "tmp100";
+					reg = <0x48>;
+					status = "okay";
+				};
+			};
+
+			/* tmp100 on SVB */
+			i2c6: i2c@86000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+
+				tmp100@48 {
+					compatible = "tmp100";
+					reg = <0x48>;
+					status = "okay";
+				};
+			};
+			i2c3: i2c@83000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+			};
+
+			i2c4: i2c@84000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "disabled";
+			};
+
+			i2c5: i2c@85000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+			};
+
+			i2c7: i2c@87000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+			};
+
+			i2c8: i2c@88000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+			};
+
+			i2c9: i2c@89000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+			};
+
+			i2c10: i2c@8a000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+			};
+
+			i2c11: i2c@8b000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+			};
+
+			i2c14: i2c@8e000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				status = "okay";
+			};
+
+			i2c15: i2c@8f000 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				bus-frequency = <100000>;
+				/* SVB conflict with pspi2 cs gpio20o_pins */
+				status = "disabled";
+			};
+
+			pwm_fan:pwm-fan-controller@103000 {
+				status = "okay";
+				fan@0 {
+					reg = <0x00>;
+					fan-tach-ch = /bits/ 8 <0x00 0x01>;
+					cooling-levels = <127 255>;
+				};
+				fan@1 {
+					reg = <0x01>;
+					fan-tach-ch = /bits/ 8 <0x02 0x03>;
+					cooling-levels = /bits/ 8 <127 255>;
+				};
+				fan@2 {
+					reg = <0x02>;
+					fan-tach-ch = /bits/ 8 <0x04 0x05>;
+					cooling-levels = /bits/ 8 <127 255>;
+				};
+				fan@3 {
+					reg = <0x03>;
+					fan-tach-ch = /bits/ 8 <0x06 0x07>;
+					cooling-levels = /bits/ 8 <127 255>;
+				};
+				fan@4 {
+					reg = <0x04>;
+					fan-tach-ch = /bits/ 8 <0x08 0x09>;
+					cooling-levels = /bits/ 8 <127 255>;
+				};
+				fan@5 {
+					reg = <0x05>;
+					fan-tach-ch = /bits/ 8 <0x0A 0x0B>;
+					cooling-levels = /bits/ 8 <127 255>;
+				};
+				fan@6 {
+					reg = <0x06>;
+					fan-tach-ch = /bits/ 8 <0x0C 0x0D>;
+					cooling-levels = /bits/ 8 <127 255>;
+				};
+				fan@7 {
+					reg = <0x07>;
+					fan-tach-ch = /bits/ 8 <0x0E 0x0F>;
+					cooling-levels = /bits/ 8 <127 255>;
+				};
+			};
+
+			spi0: spi@200000 {
+				cs-gpios = <&gpio6 11 GPIO_ACTIVE_LOW>;
+				status = "okay";
+				Flash@0 {
+					compatible = "winbond,w25q128",
+					"jedec,spi-nor";
+					reg = <0x0>;
+					#address-cells = <1>;
+					#size-cells = <1>;
+					spi-max-frequency = <5000000>;
+					partition@0 {
+						label = "spi0_spare1";
+						reg = <0x0000000 0x800000>;
+					};
+					partition@1 {
+						label = "spi0_spare2";
+						reg = <0x800000 0x0>;
+					};
+				};
+			};
+
+			spi1: spi@201000 {
+				cs-gpios = <&gpio0 20 GPIO_ACTIVE_LOW>;
+				status = "okay";
+				Flash@0 {
+					compatible = "winbond,w25q128fw",
+					"jedec,spi-nor";
+					reg = <0x0>;
+					#address-cells = <1>;
+					#size-cells = <1>;
+					spi-max-frequency = <5000000>;
+					partition@0 {
+						label = "spi1_spare1";
+						reg = <0x0000000 0x800000>;
+					};
+					partition@1 {
+						label = "spi1_spare2";
+						reg = <0x800000 0x0>;
+					};
+				};
+			};
+		};
+	};
+
+	pinctrl: pinctrl@f0800000 {
+		pinctrl-names = "default";
+		pinctrl-0 = <	&iox1_pins
+				&pin8_input
+				&pin9_output_high
+				&pin10_input
+				&pin11_output_high
+				&pin16_input
+				&pin24_output_high
+				&pin25_output_low
+				&pin32_output_high
+				&jtag2_pins
+				&pin61_output_high
+				&pin62_output_high
+				&pin63_output_high
+				&lpc_pins
+				&pin160_input
+				&pin162_input
+				&pin168_input
+				&pin169_input
+				&pin170_input
+				&pin187_output_high
+				&pin190_input
+				&pin191_output_high
+				&pin192_output_high
+				&pin197_output_low
+				&ddc_pins
+				&pin218_input
+				&pin219_output_low
+				&pin220_output_low
+				&pin221_output_high
+				&pin222_input
+				&pin223_output_low
+				&spix_pins
+				&pin228_output_low
+				&pin231_output_high
+				&pin255_input>;
+	};
 };
diff --git a/arch/arm/boot/dts/nuvoton-npcm750-pincfg-evb.dtsi b/arch/arm/boot/dts/nuvoton-npcm750-pincfg-evb.dtsi
new file mode 100644
index 000000000000..edb4190826e6
--- /dev/null
+++ b/arch/arm/boot/dts/nuvoton-npcm750-pincfg-evb.dtsi
@@ -0,0 +1,157 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2018 Nuvoton Technology tomer.maimon@nuvoton.com
+
+/ {
+	pinctrl: pinctrl@f0800000 {
+		pin8_input: pin8-input {
+			pins = "GPIO8/LKGPO1";
+			bias-disable;
+			input-enable;
+		};
+		pin9_output_high: pin9-output-high {
+			pins = "GPIO9/LKGPO2";
+			bias-disable;
+			output-high;
+		};
+		pin10_input: pin10-input {
+			pins = "GPIO10/IOXHLD";
+			bias-disable;
+			input-enable;
+		};
+		pin11_output_high: pin11-output-high {
+			pins = "GPIO11/IOXHCK";
+			bias-disable;
+			output-high;
+		};
+		pin16_input: pin16-input {
+			pins = "GPIO16/LKGPO0";
+			bias-disable;
+			input-enable;
+		};
+		pin24_output_high: pin24-output-high {
+			pins = "GPIO24/IOXHDO";
+			bias-disable;
+			output-high;
+		};
+		pin25_output_low: pin25-output-low {
+			pins = "GPIO25/IOXHDI";
+			bias-disable;
+			output-low;
+		};
+		pin32_output_high: pin32-output-high {
+			pins = "GPIO32/nSPI0CS1";
+			bias-disable;
+			output-high;
+		};
+		pin61_output_high: pin61-output-high {
+			pins = "GPO61/nDTR1_BOUT1/STRAP6";
+			bias-disable;
+			output-high;
+		};
+		pin62_output_high: pin62-output-high {
+			pins = "GPO62/nRTST1/STRAP5";
+			bias-disable;
+			output-high;
+		};
+		pin63_output_high: pin63-output-high {
+			pins = "GPO63/TXD1/STRAP4";
+			bias-disable;
+			output-high;
+		};
+		pin160_input: pin160-input {
+			pins = "GPIO160/CLKOUT/RNGOSCOUT";
+			bias-disable;
+			input-enable;
+		};
+		pin162_input: pin162-input {
+			pins = "GPIO162/SERIRQ";
+			bias-disable;
+			input-enable;
+		};
+		pin168_input: pin168-input {
+			pins = "GPIO168/nCLKRUN/nESPIALERT";
+			bias-disable;
+			input-enable;
+		};
+		pin169_input: pin169-input {
+			pins = "GPIO169/nSCIPME";
+			bias-disable;
+			input-enable;
+		};
+		pin170_input: pin170-input {
+			pins = "GPIO170/nSMI";
+			bias-disable;
+			input-enable;
+		};
+		pin187_output_high: pin187-output-high {
+			pins = "GPIO187/nSPI3CS1";
+			bias-disable;
+			output-high;
+		};
+		pin190_input: pin190-input {
+			pins = "GPIO190/nPRD_SMI";
+			bias-disable;
+			input-enable;
+		};
+		pin191_output_high: pin191-output-high {
+			pins = "GPIO191";
+			bias-disable;
+			output-high;
+		};
+		pin192_output_high: pin192-output-high {
+			pins = "GPIO192";
+			bias-disable;
+			output-high;
+		};
+		pin197_output_low: pin197-output-low {
+			pins = "GPIO197/SMB0DEN";
+			bias-disable;
+			output-low;
+		};
+		pin218_input: pin218-input {
+			pins = "GPIO218/nWDO1";
+			bias-disable;
+			input-enable;
+		};
+		pin219_output_low: pin219-output-low {
+			pins = "GPIO219/nWDO2";
+			bias-disable;
+			output-low;
+		};
+		pin220_output_low: pin220-output-low {
+			pins = "GPIO220/SMB12SCL";
+			bias-disable;
+			output-low;
+		};
+		pin221_output_high: pin221-output-high {
+			pins = "GPIO221/SMB12SDA";
+			bias-disable;
+			output-high;
+		};
+		pin222_input: pin222-input {
+			pins = "GPIO222/SMB13SCL";
+			bias-disable;
+			input-enable;
+		};
+		pin223_output_low: pin223-output-low {
+			pins = "GPIO223/SMB13SDA";
+			bias-disable;
+			output-low;
+		};
+		pin228_output_low: pin228-output-low {
+			pins = "GPIO228/nSPIXCS1";
+			bias-disable;
+			output-low;
+		};
+		pin231_output_high: pin231-output-high {
+			pins = "GPIO230/SPIXD3";
+			bias-disable;
+			output-high;
+		};
+		pin255_input: pin255-input {
+			pins = "GPI255/DACOSEL";
+			bias-disable;
+			input-enable;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/nuvoton-npcm750.dtsi b/arch/arm/boot/dts/nuvoton-npcm750.dtsi
index a37bb2294b8f..13eee0fe5642 100644
--- a/arch/arm/boot/dts/nuvoton-npcm750.dtsi
+++ b/arch/arm/boot/dts/nuvoton-npcm750.dtsi
@@ -32,6 +32,7 @@
 			next-level-cache = <&l2>;
 		};
 	};
+
 	soc {
 		timer@3fe600 {
 			compatible = "arm,cortex-a9-twd-timer";
@@ -41,4 +42,21 @@
 			clocks = <&clk NPCM7XX_CLK_AHB>;
 		};
 	};
+
+	ahb {
+		gmac1: eth@f0804000 {
+			device_type = "network";
+			compatible = "snps,dwmac";
+			reg = <0xf0804000 0x2000>;
+			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			ethernet = <1>;
+			clocks	= <&clk_rg2refck>, <&clk NPCM7XX_CLK_AHB>;
+			clock-names = "stmmaceth", "clk_gmac";
+			pinctrl-names = "default";
+			pinctrl-0 = <&rg2_pins
+					&rg2mdio_pins>;
+			status = "disabled";
+		};
+	};
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

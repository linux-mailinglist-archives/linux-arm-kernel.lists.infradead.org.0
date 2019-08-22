Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 504E398FDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84lTIESC3FSpMpQyV1/fPB8Q3C10GfrwW4bx4oPNG9E=; b=ERNRLHe67Xf9gF
	3HhtDLFmX7OsHNIfBGIGJU5eLxNSwGpJ/xkg/oxjyQLmwbIQ4Cl7HSQ/o6nV+1DJXtdfKVj9H8sD6
	rREzbpShsPdy8vcZExQd4OmAFjxic0pGArUpA+O+dsvr8Ekp2mDh/OE5a4lCBdWUneiY4PR/++399
	F+k2HlI7C0246D99ROBpZt7EeIeopElGDnNmp84SXl+DFGdDVCpmnNFvkwf5E6+/KeYHCnJ9dy/ip
	Pppca8FDVT/ose4wyD3/+ojARWSTA8O6Q7hyeoWxJM5/lJZE5bX194qctpxuNd+1qo7Io1krGmsbR
	MVsSyV8SQUNCBQtNJJ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jYm-0004C0-FE; Thu, 22 Aug 2019 09:39:12 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jUL-0007PJ-Vs
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:34:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 41370D755A;
 Thu, 22 Aug 2019 11:34:36 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id o9Ang9bBG3yQ; Thu, 22 Aug 2019 11:33:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 6650ED755C;
 Thu, 22 Aug 2019 11:33:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id B8g1LW0JxeXx; Thu, 22 Aug 2019 11:33:01 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id D92BFD756F;
 Thu, 22 Aug 2019 11:26:52 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 20/20] ARM: dts: mmp3: Add MMP3 SoC dts file
Date: Thu, 22 Aug 2019 11:26:43 +0200
Message-Id: <20190822092643.593488-21-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190822092643.593488-1-lkundrak@v3.sk>
References: <20190822092643.593488-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_023438_380149_97D67888 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Describes most of the hardware found on Marvell MMP3, aka PXA2128, aka
Armada 620. Missing bits are the LCD controller, HSIC controllers,
Audio and GPU. Will be completed once bindings and drivers settle.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp3.dtsi | 534 ++++++++++++++++++++++++++++++++++++
 1 file changed, 534 insertions(+)
 create mode 100644 arch/arm/boot/dts/mmp3.dtsi

diff --git a/arch/arm/boot/dts/mmp3.dtsi b/arch/arm/boot/dts/mmp3.dtsi
new file mode 100644
index 0000000000000..5a6275257ebdd
--- /dev/null
+++ b/arch/arm/boot/dts/mmp3.dtsi
@@ -0,0 +1,534 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ *  Copyright (C) 2019 Lubomir Rintel <lkundrak@v3.sk>
+ */
+
+#include <dt-bindings/clock/marvell,mmp2.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	aliases {
+		serial0 = &uart1;
+		serial1 = &uart2;
+		serial2 = &uart3;
+		serial3 = &uart4;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		enable-method = "marvell,mmp3-smp";
+
+		cpu@0 {
+			compatible = "marvell,pj4b";
+			device_type = "cpu";
+			next-level-cache = <&l2>;
+			reg = <0>;
+		};
+
+		cpu@1 {
+			compatible = "marvell,pj4b";
+			device_type = "cpu";
+			next-level-cache = <&l2>;
+			reg = <1>;
+		};
+	};
+
+	soc {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "simple-bus";
+		interrupt-parent = <&gic>;
+		ranges;
+
+		axi@d4200000 {
+			compatible = "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0xd4200000 0x00200000>;
+			ranges;
+
+			interrupt-controller@d4282000 {
+				compatible = "marvell,mmp3-intc";
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0xd4282000 0x1000>,
+				      <0xd4284000 0x100>;
+				mrvl,intc-nr-irqs = <64>;
+			};
+
+			pmic_mux: interrupt-controller@d4282150 {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x150 0x4>, <0x168 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <4>;
+			};
+
+			rtc_mux: interrupt-controller@d4282154 {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x154 0x4>, <0x16c 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <2>;
+			};
+
+			hsi3_mux: interrupt-controller@d42821bc {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x1bc 0x4>, <0x1a4 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <3>;
+			};
+
+			gpu_mux: interrupt-controller@d42821c0 {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x1c0 0x4>, <0x1a8 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <3>;
+			};
+
+			twsi_mux: interrupt-controller@d4282158 {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x158 0x4>, <0x170 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <5>;
+			};
+
+			hsi2_mux: interrupt-controller@d42821c4 {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x1c4 0x4>, <0x1ac 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <2>;
+			};
+
+			dxo_mux: interrupt-controller@d42821c8 {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x1c8 0x4>, <0x1b0 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <2>;
+			};
+
+			misc1_mux: interrupt-controller@d428215c {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x15c 0x4>, <0x174 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <31>;
+			};
+
+			ci_mux: interrupt-controller@d42821cc {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x1cc 0x4>, <0x1b4 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <2>;
+			};
+
+			ssp_mux: interrupt-controller@d4282160 {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x160 0x4>, <0x178 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <2>;
+			};
+
+			hsi1_mux: interrupt-controller@d4282184 {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x184 0x4>, <0x17c 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <4>;
+			};
+
+			misc2_mux: interrupt-controller@d4282188 {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x188 0x4>, <0x180 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <20>;
+			};
+
+			hsi0_mux: interrupt-controller@d42821d0 {
+				compatible = "mrvl,mmp2-mux-intc";
+				interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				reg = <0x1d0 0x4>, <0x1b8 0x4>;
+				reg-names = "mux status", "mux mask";
+				mrvl,intc-nr-irqs = <5>;
+			};
+
+			usb_otg_phy0: usb-otg-phy@d4207000 {
+				compatible = "marvell,mmp3-usb-phy";
+				reg = <0xd4207000 0x40>;
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+
+			usb_otg0: usb-otg@d4208000 {
+				compatible = "marvell,pxau2o-ehci";
+				reg = <0xd4208000 0x200>;
+				interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&soc_clocks MMP2_CLK_USB>;
+				clock-names = "USBCLK";
+				phys = <&usb_otg_phy0>;
+				phy-names = "usb";
+				status = "disabled";
+			};
+
+			mmc1: mmc@d4280000 {
+				compatible = "mrvl,pxav3-mmc";
+				reg = <0xd4280000 0x120>;
+				clocks = <&soc_clocks MMP2_CLK_SDH0>;
+				clock-names = "io";
+				interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			mmc2: mmc@d4280800 {
+				compatible = "mrvl,pxav3-mmc";
+				reg = <0xd4280800 0x120>;
+				clocks = <&soc_clocks MMP2_CLK_SDH1>;
+				clock-names = "io";
+				interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			mmc3: mmc@d4281000 {
+				compatible = "mrvl,pxav3-mmc";
+				reg = <0xd4281000 0x120>;
+				clocks = <&soc_clocks MMP2_CLK_SDH2>;
+				clock-names = "io";
+				interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			mmc4: mmc@d4281800 {
+				compatible = "mrvl,pxav3-mmc";
+				reg = <0xd4281800 0x120>;
+				clocks = <&soc_clocks MMP2_CLK_SDH3>;
+				clock-names = "io";
+				interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+				status = "disabled";
+			};
+
+			camera0: camera@d420a000 {
+				compatible = "marvell,mmp2-ccic";
+				reg = <0xd420a000 0x800>;
+				interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&soc_clocks MMP2_CLK_CCIC0>;
+				clock-names = "axi";
+				#clock-cells = <0>;
+				clock-output-names = "mclk";
+				status = "disabled";
+			};
+
+			camera1: camera@d420a800 {
+				compatible = "marvell,mmp2-ccic";
+				reg = <0xd420a800 0x800>;
+				interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&soc_clocks MMP2_CLK_CCIC1>;
+				clock-names = "axi";
+				#clock-cells = <0>;
+				clock-output-names = "mclk";
+				status = "disabled";
+			};
+		};
+
+		apb@d4000000 {
+			compatible = "simple-bus";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			reg = <0xd4000000 0x00200000>;
+			ranges;
+
+			timer: timer@d4014000 {
+				compatible = "mrvl,mmp-timer";
+				reg = <0xd4014000 0x100>;
+				interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&soc_clocks MMP2_CLK_TIMER>;
+			};
+
+			uart1: uart@d4030000 {
+				compatible = "mrvl,mmp-uart";
+				reg = <0xd4030000 0x1000>;
+				interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&soc_clocks MMP2_CLK_UART0>;
+				resets = <&soc_clocks MMP2_CLK_UART0>;
+				reg-shift = <2>;
+				status = "disabled";
+			};
+
+			uart2: uart@d4017000 {
+				compatible = "mrvl,mmp-uart";
+				reg = <0xd4017000 0x1000>;
+				interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&soc_clocks MMP2_CLK_UART1>;
+				resets = <&soc_clocks MMP2_CLK_UART1>;
+				reg-shift = <2>;
+				status = "disabled";
+			};
+
+			uart3: uart@d4018000 {
+				compatible = "mrvl,mmp-uart";
+				reg = <0xd4018000 0x1000>;
+				interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&soc_clocks MMP2_CLK_UART2>;
+				resets = <&soc_clocks MMP2_CLK_UART2>;
+				reg-shift = <2>;
+				status = "disabled";
+			};
+
+			uart4: uart@d4016000 {
+				compatible = "mrvl,mmp-uart";
+				reg = <0xd4016000 0x1000>;
+				interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&soc_clocks MMP2_CLK_UART3>;
+				resets = <&soc_clocks MMP2_CLK_UART3>;
+				reg-shift = <2>;
+				status = "disabled";
+			};
+
+			gpio: gpio@d4019000 {
+				compatible = "marvell,mmp2-gpio";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				reg = <0xd4019000 0x1000>;
+				gpio-controller;
+				#gpio-cells = <2>;
+				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "gpio_mux";
+				clocks = <&soc_clocks MMP2_CLK_GPIO>;
+				resets = <&soc_clocks MMP2_CLK_GPIO>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				ranges;
+
+				gcb0: gpio@d4019000 {
+					reg = <0xd4019000 0x4>;
+				};
+
+				gcb1: gpio@d4019004 {
+					reg = <0xd4019004 0x4>;
+				};
+
+				gcb2: gpio@d4019008 {
+					reg = <0xd4019008 0x4>;
+				};
+
+				gcb3: gpio@d4019100 {
+					reg = <0xd4019100 0x4>;
+				};
+
+				gcb4: gpio@d4019104 {
+					reg = <0xd4019104 0x4>;
+				};
+
+				gcb5: gpio@d4019108 {
+					reg = <0xd4019108 0x4>;
+				};
+			};
+
+			twsi1: i2c@d4011000 {
+				compatible = "mrvl,mmp-twsi";
+				reg = <0xd4011000 0x1000>;
+				interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&soc_clocks MMP2_CLK_TWSI0>;
+				resets = <&soc_clocks MMP2_CLK_TWSI0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				mrvl,i2c-fast-mode;
+				status = "disabled";
+			};
+
+			twsi2: i2c@d4031000 {
+				compatible = "mrvl,mmp-twsi";
+				reg = <0xd4031000 0x1000>;
+				interrupt-parent = <&twsi_mux>;
+				interrupts = <0>;
+				clocks = <&soc_clocks MMP2_CLK_TWSI1>;
+				resets = <&soc_clocks MMP2_CLK_TWSI1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			twsi3: i2c@d4032000 {
+				compatible = "mrvl,mmp-twsi";
+				reg = <0xd4032000 0x1000>;
+				interrupt-parent = <&twsi_mux>;
+				interrupts = <1>;
+				clocks = <&soc_clocks MMP2_CLK_TWSI2>;
+				resets = <&soc_clocks MMP2_CLK_TWSI2>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			twsi4: i2c@d4033000 {
+				compatible = "mrvl,mmp-twsi";
+				reg = <0xd4033000 0x1000>;
+				interrupt-parent = <&twsi_mux>;
+				interrupts = <2>;
+				clocks = <&soc_clocks MMP2_CLK_TWSI3>;
+				resets = <&soc_clocks MMP2_CLK_TWSI3>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+
+			twsi5: i2c@d4033800 {
+				compatible = "mrvl,mmp-twsi";
+				reg = <0xd4033800 0x1000>;
+				interrupt-parent = <&twsi_mux>;
+				interrupts = <3>;
+				clocks = <&soc_clocks MMP2_CLK_TWSI4>;
+				resets = <&soc_clocks MMP2_CLK_TWSI4>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			twsi6: i2c@d4034000 {
+				compatible = "mrvl,mmp-twsi";
+				reg = <0xd4034000 0x1000>;
+				interrupt-parent = <&twsi_mux>;
+				interrupts = <4>;
+				clocks = <&soc_clocks MMP2_CLK_TWSI5>;
+				resets = <&soc_clocks MMP2_CLK_TWSI5>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			rtc: rtc@d4010000 {
+				compatible = "mrvl,mmp-rtc";
+				reg = <0xd4010000 0x1000>;
+				interrupts = <1 0>;
+				interrupt-names = "rtc 1Hz", "rtc alarm";
+				interrupt-parent = <&rtc_mux>;
+				clocks = <&soc_clocks MMP2_CLK_RTC>;
+				resets = <&soc_clocks MMP2_CLK_RTC>;
+				status = "disabled";
+			};
+
+			ssp1: spi@d4035000 {
+				compatible = "marvell,mmp2-ssp";
+				reg = <0xd4035000 0x1000>;
+				clocks = <&soc_clocks MMP2_CLK_SSP0>;
+				interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			ssp2: spi@d4036000 {
+				compatible = "marvell,mmp2-ssp";
+				reg = <0xd4036000 0x1000>;
+				clocks = <&soc_clocks MMP2_CLK_SSP1>;
+				interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			ssp3: spi@d4037000 {
+				compatible = "marvell,mmp2-ssp";
+				reg = <0xd4037000 0x1000>;
+				clocks = <&soc_clocks MMP2_CLK_SSP2>;
+				interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			ssp4: spi@d4039000 {
+				compatible = "marvell,mmp2-ssp";
+				reg = <0xd4039000 0x1000>;
+				clocks = <&soc_clocks MMP2_CLK_SSP3>;
+				interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+		};
+
+		l2: l2-cache-controller@d0020000 {
+			compatible = "marvell,tauros3-cache", "arm,pl310-cache";
+			reg = <0xd0020000 0x1000>;
+			cache-unified;
+			cache-level = <2>;
+		};
+
+		soc_clocks: clocks {
+			compatible = "marvell,mmp2-clock";
+			reg = <0xd4050000 0x1000>,
+			      <0xd4282800 0x400>,
+			      <0xd4015000 0x1000>;
+			reg-names = "mpmu", "apmu", "apbc";
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
+		snoop-control-unit@e0000000 {
+			compatible = "arm,arm11mp-scu";
+			reg = <0xe0000000 0x100>;
+		};
+
+		gic: interrupt-controller@e0001000 {
+			compatible = "arm,arm11mp-gic";
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			reg = <0xe0001000 0x1000>,
+			      <0xe0000100 0x100>;
+		};
+
+		local-timer@e0000600 {
+			compatible = "arm,arm11mp-twd-timer";
+			interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) |
+						  IRQ_TYPE_EDGE_RISING)>;
+			reg = <0xe0000600 0x20>;
+		};
+
+		watchdog@2c000620 {
+			compatible = "arm,arm11mp-twd-wdt";
+			reg = <0xe0000620 0x20>;
+			interrupts = <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) |
+						  IRQ_TYPE_EDGE_RISING)>;
+		};
+	};
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

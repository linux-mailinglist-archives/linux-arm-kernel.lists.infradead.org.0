Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611842681A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 18:22:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9C3ZfeD9NzY/jlY7bcbqEEEEgNR4jY7AJHXKjtIeGpI=; b=ZGvAi1PUl1znMU
	xHDz2ZQC1ILdhqEOBi/tjeTjsD9RXyYDQp4a7UczouTiZrALQTryuOgVOyqhZLti8ZWSz+I4Wz31I
	U8XDZZ2t2PnYhN99jeQHSdIRFc24xHZmgL9GwN7uueygFX67dF+Pvnff9zxyMCy281Ki6VFfKstaj
	GADIhW52QxXROFWwN2lLqzLBMWyPh1fgXR1sFBQFGKtV2qhnxxeApngno73R2iivCoiAq1PKx43R5
	pYR2LMwOMkgBBDBchlrI18xyANKngLog19jiKpzP+9MR9ECvaKpx/taygWxR+ELMljp1ua47hLgtg
	+oPofwluzCfD/Y/ODSZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTU0H-0002Ic-VY; Wed, 22 May 2019 16:22:10 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTzD-00013O-7I
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 16:21:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4MGKdx7073720;
 Wed, 22 May 2019 11:20:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558542039;
 bh=R8QJnmskpqzseP/L+wTxwcZf1GaH65pTGWebaKYlUZQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=dBwUo0iiav/GcQ1mejdnRoQA1wMd/rvU2cjV9neZ8xlra9i7iUi84d3YL6rqjqXmw
 Q7KeJ3su+I7oWiv2TS2xmx42oVeAWRYnIj4qIJ5aypOHoN/6rBq35LAAcxTWsADHu1
 ZSyCQfNW5rgnrXszhr/h4AnkMAG4vHO4ExTdrI4A=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4MGKdj6099363
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 22 May 2019 11:20:39 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 22
 May 2019 11:20:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 22 May 2019 11:20:38 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4MGKcpn053579;
 Wed, 22 May 2019 11:20:38 -0500
From: Nishanth Menon <nm@ti.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Santosh
 Shilimkar <ssantosh@kernel.org>, Will Deacon <will.deacon@arm.com>, Catalin
 Marinas <catalin.marinas@arm.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mark Rutland <mark.rutland@arm.com>, Rob
 Herring <robh+dt@kernel.org>
Subject: [PATCH 3/6] arm64: dts: ti: Add Support for J721E SoC
Date: Wed, 22 May 2019 11:19:18 -0500
Message-ID: <20190522161921.20750-4-nm@ti.com>
X-Mailer: git-send-email 2.21.0.777.g83232e38648b
In-Reply-To: <20190522161921.20750-1-nm@ti.com>
References: <20190522161921.20750-1-nm@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_092103_344376_E146863E 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Tero Kristo <t-kristo@ti.com>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The J721E SoC belongs to the K3 Multicore SoC architecture platform,
providing advanced system integration to enable lower system costs
of automotive applications such as infotainment, cluster, premium
Audio, Gateway, industrial and a range of broad market applications.
This SoC is designed around reducing the system cost by eliminating
the need of an external system MCU and is targeted towards ASIL-B/C
certification/requirements in addition to allowing complex software
and system use-cases.

Some highlights of this SoC are:
* Dual Cortex-A72s in a single cluster, three clusters of lockstep
  capable dual Cortex-R5F MCUs, Deep-learning Matrix Multiply Accelerator(MMA),
  C7x floating point Vector DSP, Two C66x floating point DSPs.
* 3D GPU PowerVR Rogue 8XE GE8430
* Vision Processing Accelerator (VPAC) with image signal processor and Depth
  and Motion Processing Accelerator (DMPAC)
* Two Gigabit Industrial Communication Subsystems (ICSSG), each with dual
  PRUs and dual RTUs
* Two CSI2.0 4L RX plus one CSI2.0 4L TX, one eDP/DP, One DSI Tx, and
  up to two DPI interfaces.
* Integrated Ethernet switch supporting up to a total of 8 external ports in
  addition to legacy Ethernet switch of up to 2 ports.
* System MMU (SMMU) Version 3.0 and advanced virtualisation
  capabilities.
* Upto 4 PCIe-GEN3 controllers, 2 USB3.0 Dual-role device subsystems,
  16 MCANs, 12 McASP, eMMC and SD, UFS, OSPI/HyperBus memory controller, QSPI,
  I3C and I2C, eCAP/eQEP, eHRPWM, MLB among other peripherals.
* Two hardware accelerator block containing AES/DES/SHA/MD5 called SA2UL
  management.
* Configurable L3 Cache and IO-coherent architecture with high data throughput
  capable distributed DMA architecture under NAVSS
* Centralized System Controller for Security, Power, and Resource
  Management (DMSC)

See J721E Technical Reference Manual (SPRUIL1, May 2019)
for further details: http://www.ti.com/lit/pdf/spruil1

Signed-off-by: Nishanth Menon <nm@ti.com>
---
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 202 ++++++++++++++++++
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  72 +++++++
 arch/arm64/boot/dts/ti/k3-j721e.dtsi          | 176 +++++++++++++++
 3 files changed, 450 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e.dtsi

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
new file mode 100644
index 000000000000..d42912044a5d
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -0,0 +1,202 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Source for J721E SoC Family Main Domain peripherals
+ *
+ * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
+ */
+
+&cbass_main {
+	msmc_ram: sram@70000000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0x70000000 0x0 0x800000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x70000000 0x800000>;
+
+		atf-sram@0 {
+			reg = <0x0 0x20000>;
+		};
+	};
+
+	gic500: interrupt-controller@1800000 {
+		compatible = "arm,gic-v3";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		reg = <0x00 0x01800000 0x00 0x10000>,	/* GICD */
+		      <0x00 0x01900000 0x00 0x100000>;	/* GICR */
+
+		/* vcpumntirq: virtual CPU interface maintenance interrupt */
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+
+		gic_its: gic-its@18200000 {
+			compatible = "arm,gic-v3-its";
+			reg = <0x00 0x01820000 0x00 0x10000>;
+			socionext,synquacer-pre-its = <0x1000000 0x400000>;
+			msi-controller;
+			#msi-cells = <1>;
+		};
+	};
+
+	smmu0: smmu@36600000 {
+		compatible = "arm,smmu-v3";
+		reg = <0x0 0x36600000 0x0 0x100000>;
+		interrupt-parent = <&gic500>;
+		interrupts = <GIC_SPI 772 IRQ_TYPE_EDGE_RISING>,
+			     <GIC_SPI 768 IRQ_TYPE_EDGE_RISING>;
+		interrupt-names = "eventq", "gerror";
+		#iommu-cells = <1>;
+	};
+
+	secure_proxy_main: mailbox@32c00000 {
+		compatible = "ti,am654-secure-proxy";
+		#mbox-cells = <1>;
+		reg-names = "target_data", "rt", "scfg";
+		reg = <0x00 0x32c00000 0x00 0x100000>,
+		      <0x00 0x32400000 0x00 0x100000>,
+		      <0x00 0x32800000 0x00 0x100000>;
+		interrupt-names = "rx_011";
+		interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	main_pmx0: pinmux@11c000 {
+		compatible = "pinctrl-single";
+		/* Proxy 0 addressing */
+		reg = <0x0 0x11c000 0x0 0x2b4>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0xffffffff>;
+	};
+
+	main_uart0: serial@2800000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02800000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 146>;
+		clocks = <&k3_clks 146 0>;
+		clock-names = "fclk";
+	};
+
+	main_uart1: serial@2810000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02810000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 193 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 278>;
+		clocks = <&k3_clks 278 0>;
+		clock-names = "fclk";
+	};
+
+	main_uart2: serial@2820000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02820000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 194 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 279>;
+		clocks = <&k3_clks 279 0>;
+		clock-names = "fclk";
+	};
+
+	main_uart3: serial@2830000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02830000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 195 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 280>;
+		clocks = <&k3_clks 280 0>;
+		clock-names = "fclk";
+	};
+
+	main_uart4: serial@2840000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02840000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 196 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 281>;
+		clocks = <&k3_clks 281 0>;
+		clock-names = "fclk";
+	};
+
+	main_uart5: serial@2850000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02850000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 282>;
+		clocks = <&k3_clks 282 0>;
+		clock-names = "fclk";
+	};
+
+	main_uart6: serial@2860000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02860000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 283>;
+		clocks = <&k3_clks 283 0>;
+		clock-names = "fclk";
+	};
+
+	main_uart7: serial@2870000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02870000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 199 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 284>;
+		clocks = <&k3_clks 284 0>;
+		clock-names = "fclk";
+	};
+
+	main_uart8: serial@2880000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02880000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 285>;
+		clocks = <&k3_clks 285 0>;
+		clock-names = "fclk";
+	};
+
+	main_uart9: serial@2890000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x02890000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 286>;
+		clocks = <&k3_clks 286 0>;
+		clock-names = "fclk";
+	};
+};
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
new file mode 100644
index 000000000000..b72e033fa159
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -0,0 +1,72 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Source for J721E SoC Family MCU/WAKEUP Domain peripherals
+ *
+ * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
+ */
+
+&cbass_mcu_wakeup {
+	dmsc: dmsc@44083000 {
+		compatible = "ti,k2g-sci";
+		ti,host-id = <12>;
+
+		mbox-names = "rx", "tx";
+
+		mboxes= <&secure_proxy_main 11>,
+			<&secure_proxy_main 13>;
+
+		reg-names = "debug_messages";
+		reg = <0x00 0x44083000 0x0 0x1000>;
+
+		k3_pds: power-controller {
+			compatible = "ti,sci-pm-domain";
+			#power-domain-cells = <1>;
+		};
+
+		k3_clks: clocks {
+			compatible = "ti,k2g-sci-clk";
+			#clock-cells = <2>;
+			ti,scan-clocks-from-dt;
+		};
+
+		k3_reset: reset-controller {
+			compatible = "ti,sci-reset";
+			#reset-cells = <2>;
+		};
+	};
+
+	wkup_pmx0: pinmux@4301c000 {
+		compatible = "pinctrl-single";
+		/* Proxy 0 addressing */
+		reg = <0x00 0x4301c000 0x00 0x178>;
+		#pinctrl-cells = <1>;
+		pinctrl-single,register-width = <32>;
+		pinctrl-single,function-mask = <0xffffffff>;
+	};
+
+	wkup_uart0: serial@42300000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x42300000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 897 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <48000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 287>;
+		clocks = <&k3_clks 287 0>;
+		clock-names = "fclk";
+	};
+
+	mcu_uart0: serial@40a00000 {
+		compatible = "ti,j721e-uart", "ti,am654-uart";
+		reg = <0x00 0x40a00000 0x00 0x100>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 846 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <96000000>;
+		current-speed = <115200>;
+		power-domains = <&k3_pds 149>;
+		clocks = <&k3_clks 149 0>;
+		clock-names = "fclk";
+	};
+};
diff --git a/arch/arm64/boot/dts/ti/k3-j721e.dtsi b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
new file mode 100644
index 000000000000..e7c366c98ce1
--- /dev/null
+++ b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
@@ -0,0 +1,176 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Source for J721E SoC Family
+ *
+ * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/pinctrl/k3.h>
+
+/ {
+	model = "Texas Instruments K3 J721E SoC";
+	compatible = "ti,j721e";
+	interrupt-parent = <&gic500>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		serial0 = &wkup_uart0;
+		serial1 = &mcu_uart0;
+		serial2 = &main_uart0;
+		serial3 = &main_uart1;
+		serial4 = &main_uart2;
+		serial5 = &main_uart3;
+		serial6 = &main_uart4;
+		serial7 = &main_uart5;
+		serial8 = &main_uart6;
+		serial9 = &main_uart7;
+		serial10 = &main_uart8;
+		serial11 = &main_uart9;
+	};
+
+	chosen { };
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		cpu-map {
+			cluster0: cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+
+				core1 {
+					cpu = <&cpu1>;
+				};
+			};
+
+		};
+
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a72";
+			reg = <0x000>;
+			device_type = "cpu";
+			enable-method = "psci";
+			i-cache-size = <0xC000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&L2_0>;
+		};
+
+		cpu1: cpu@1 {
+			compatible = "arm,cortex-a72";
+			reg = <0x001>;
+			device_type = "cpu";
+			enable-method = "psci";
+			i-cache-size = <0xC000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&L2_0>;
+		};
+	};
+
+	L2_0: l2-cache0 {
+		compatible = "cache";
+		cache-level = <2>;
+		cache-size = <0x100000>;
+		cache-line-size = <64>;
+		cache-sets = <2048>;
+		next-level-cache = <&msmc_l3>;
+	};
+
+	msmc_l3: l3-cache0 {
+		compatible = "cache";
+		cache-level = <3>;
+	};
+
+	firmware {
+		optee {
+			compatible = "linaro,optee-tz";
+			method = "smc";
+		};
+
+		psci: psci {
+			compatible = "arm,psci-1.0";
+			method = "smc";
+		};
+	};
+
+	a72_timer0: timer-cl0-cpu0 {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* cntpsirq */
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* cntpnsirq */
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* cntvirq */
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* cnthpirq */
+	};
+
+	pmu: pmu {
+		compatible = "arm,armv8-pmuv3";
+		/* Recommendation from GIC500 TRM Table A.3 */
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	cbass_main: interconnect@100000 {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
+			 <0x00 0x00600000 0x00 0x00600000 0x00 0x00031100>, /* GPIO */
+			 <0x00 0x00900000 0x00 0x00900000 0x00 0x00012000>, /* serdes */
+			 <0x00 0x00A40000 0x00 0x00A40000 0x00 0x00000800>, /* timesync router */
+			 <0x00 0x01000000 0x00 0x01000000 0x00 0x0af02400>, /* Most peripherals */
+			 <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>, /* MAIN NAVSS */
+			 <0x00 0x0d000000 0x00 0x0d000000 0x00 0x01000000>, /* PCIe Core*/
+			 <0x00 0x10000000 0x00 0x10000000 0x00 0x10000000>, /* PCIe DAT */
+			 <0x00 0x64800000 0x00 0x64800000 0x00 0x00800000>, /* C71 */
+			 <0x4d 0x80800000 0x4d 0x80800000 0x00 0x00800000>, /* C66_0 */
+			 <0x4d 0x81800000 0x4d 0x81800000 0x00 0x00800000>, /* C66_1 */
+			 <0x4e 0x20000000 0x4e 0x20000000 0x00 0x00080000>, /* GPU */
+			 /* MCUSS_WKUP Range */
+			 <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>,
+			 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>,
+			 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>,
+			 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>,
+			 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>,
+			 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>,
+			 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>,
+			 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>,
+			 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>,
+			 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>,
+			 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>,
+			 <0x00 0x70000000 0x00 0x70000000 0x00 0x00800000>,
+			 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>,
+			 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>;
+
+		cbass_mcu_wakeup: interconnect@28380000 {
+			compatible = "simple-bus";
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges = <0x00 0x28380000 0x00 0x28380000 0x00 0x03880000>, /* MCU NAVSS*/
+				 <0x00 0x40200000 0x00 0x40200000 0x00 0x00998400>, /* First peripheral window */
+				 <0x00 0x40f00000 0x00 0x40f00000 0x00 0x00020000>, /* CTRL_MMR0 */
+				 <0x00 0x41000000 0x00 0x41000000 0x00 0x00020000>, /* MCU R5F Core0 */
+				 <0x00 0x41400000 0x00 0x41400000 0x00 0x00020000>, /* MCU R5F Core1 */
+				 <0x00 0x41c00000 0x00 0x41c00000 0x00 0x00100000>, /* MCU SRAM */
+				 <0x00 0x42040000 0x00 0x42040000 0x00 0x03ac2400>, /* WKUP peripheral window */
+				 <0x00 0x45100000 0x00 0x45100000 0x00 0x00c24000>, /* MMRs, remaining NAVSS */
+				 <0x00 0x46000000 0x00 0x46000000 0x00 0x00200000>, /* CPSW */
+				 <0x00 0x47000000 0x00 0x47000000 0x00 0x00068400>, /* OSPI register space */
+				 <0x00 0x50000000 0x00 0x50000000 0x00 0x10000000>, /* FSS OSPI0/1 data region 0 */
+				 <0x05 0x00000000 0x05 0x00000000 0x01 0x00000000>, /* FSS OSPI0 data region 3 */
+				 <0x07 0x00000000 0x07 0x00000000 0x01 0x00000000>; /* FSS OSPI1 data region 3*/
+		};
+	};
+};
+
+/* Now include the peripherals for each bus segments */
+#include "k3-j721e-main.dtsi"
+#include "k3-j721e-mcu-wakeup.dtsi"
-- 
2.21.0.777.g83232e38648b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

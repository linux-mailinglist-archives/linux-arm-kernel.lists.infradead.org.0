Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C80651F98E7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8OaS3EcTXKsbjzLdivbH7cTxwBTLSrCr3rFWDokEo4=; b=ioj7+5N2Muu9Ma
	Nu1VTwAfBgVRqaU36TP9P0YzvfcRzuAOLxJxGZKJ4qiCG93zkglq5a1JO2C7//aOmRhEUXFgpSqmk
	ku2T1Dpl8NIawUnj9bR3qgsnceLBaTs7PaBQXpVkFdcyPRg8DosB32GIlr/gVdyYv/Qmku9KxlEXj
	mjyCNX/0Lr8MhbD5qccg/+r2tLkjo8w8xB9Xck/+nXGurLaeS7MrQkCWf0QZCpEMv7JszAyTC5f5P
	KYG6CBGVXMrdW7T2mY9R/2yqeAd2k0QU42AX4rnCLV9oZgkN8nwzW8RfXLfuWf2ln6SdFBGHjWiaq
	XLhJMWLSZztZLZ5ythsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpG7-0008LD-Hi; Mon, 15 Jun 2020 13:34:43 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpEb-0007Qz-Gz
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:33:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592227989; x=1623763989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OfjrgFqxC4YpgYvKJBrBidnChD7zWXKAufdDWAQ763k=;
 b=de9XEMGHvtal+f9NwuMazl7T1IMzmB3g+XZrDyfaTWx2+en4qquySYIK
 HwN6FtdmsX05bteoC3lQy///+ZCLQcwqFXAL3kIECGraBEH1G/mUXaoTw
 o1ZsZYUhuXNnyqpmO+alKItq5sqxpRN5j+olDuyLedsVK0BM14tLs5eMt
 XUHEIRVOT2YDU5f2eqWcu2dc7KGoqqunJkwTFJsygu8HpE/jNSiVgQxka
 mXvaybK6yu4IgbSk2eAEMhj0+HLhQCWAf0kaio3yd0Xp3gdC5onxFbdWx
 eDLUh5aeri/LYB5knV5pwXGvEj03f7yoOl05ytZDOolWRTVMKoHsLq8w/ g==;
IronPort-SDR: pcP5YkJvnHWVnX/TRA42eDm6gLd1ZkLGpyrUo4FJYAxUFHrx413+TfexCnZZ+X2faq6KPoGc30
 yppo0ebu0z5po1MJ4K7f9n8dxQ3qujpiNfSeenxntW4ipTojBEKo99PUpVd7eZJZqRDOvoavYP
 cs3Rf4fNgtwaqhiBAsQYEn+I25P1N5H2mCBP/3Rlq7wexl4ua6Tv8SV7ph4/cHnVmV7l5mqv2w
 vKBqmPtloGi6HyP2wCwkhzaBbfdfSg22MgQV4JPfpKl3jYK2LZEf+xturQfcZ7E89PRDofz9T8
 iAU=
X-IronPort-AV: E=Sophos;i="5.73,514,1583218800"; d="scan'208";a="83619456"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jun 2020 06:33:08 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 15 Jun 2020 06:33:04 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 15 Jun 2020 06:33:04 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 03/10] arm64: dts: sparx5: Add basic cpu support
Date: Mon, 15 Jun 2020 15:32:35 +0200
Message-ID: <20200615133242.24911-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615133242.24911-1-lars.povlsen@microchip.com>
References: <20200615133242.24911-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_063309_746685_DE84A46B 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the basic DT structure for the Microchip Sparx5 SoC, and the
reference boards, pcb125, pcb134 and pcb135. The two latter have a
NAND vs a eMMC centric variant (as a mount option).

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 MAINTAINERS                                   |   1 +
 arch/arm64/boot/dts/Makefile                  |   1 +
 arch/arm64/boot/dts/microchip/Makefile        |   4 +
 arch/arm64/boot/dts/microchip/sparx5.dtsi     | 142 ++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  17 +++
 .../boot/dts/microchip/sparx5_pcb134.dts      |  17 +++
 .../dts/microchip/sparx5_pcb134_board.dtsi    |  10 ++
 .../boot/dts/microchip/sparx5_pcb134_emmc.dts |  17 +++
 .../boot/dts/microchip/sparx5_pcb135.dts      |  17 +++
 .../dts/microchip/sparx5_pcb135_board.dtsi    |  10 ++
 .../boot/dts/microchip/sparx5_pcb135_emmc.dts |  17 +++
 .../boot/dts/microchip/sparx5_pcb_common.dtsi |  15 ++
 12 files changed, 268 insertions(+)
 create mode 100644 arch/arm64/boot/dts/microchip/Makefile
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5.dtsi
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts
 create mode 100644 arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index 13553b77ed4f7..20056e369e9e4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2117,6 +2117,7 @@ M:	Steen Hegelund <Steen.Hegelund@microchip.com>
 M:	Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Supported
+F:	arch/arm64/boot/dts/microchip/
 N:	sparx5
 
 ARM/MIOA701 MACHINE SUPPORT
diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
index f19b762c008d8..9680a7f20c307 100644
--- a/arch/arm64/boot/dts/Makefile
+++ b/arch/arm64/boot/dts/Makefile
@@ -17,6 +17,7 @@ subdir-y += intel
 subdir-y += lg
 subdir-y += marvell
 subdir-y += mediatek
+subdir-y += microchip
 subdir-y += nvidia
 subdir-y += qcom
 subdir-y += realtek
diff --git a/arch/arm64/boot/dts/microchip/Makefile b/arch/arm64/boot/dts/microchip/Makefile
new file mode 100644
index 0000000000000..c6e0313eea0f9
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb125.dtb
+dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb134.dtb sparx5_pcb134_emmc.dtb
+dtb-$(CONFIG_ARCH_SPARX5) += sparx5_pcb135.dtb sparx5_pcb135_emmc.dtb
diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
new file mode 100644
index 0000000000000..4a54b7d039167
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	compatible = "microchip,sparx5";
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <1>;
+
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&cpu0>;
+				};
+				core1 {
+					cpu = <&cpu1>;
+				};
+			};
+		};
+		cpu0: cpu@0 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <0x0 0x0>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
+		cpu1: cpu@1 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <0x0 0x1>;
+			enable-method = "psci";
+			next-level-cache = <&L2_0>;
+		};
+		L2_0: l2-cache0 {
+			compatible = "cache";
+		};
+	};
+
+	arm-pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>;
+	};
+
+	psci {
+		compatible = "arm,psci-0.2";
+		method = "smc";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	clocks: clocks {
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges;
+		ahb_clk: ahb-clk {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <250000000>;
+		};
+		sys_clk: sys-clk {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-frequency = <625000000>;
+		};
+	};
+
+	axi: axi@600000000 {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <1>;
+		ranges;
+
+		gic: interrupt-controller@600300000 {
+			compatible = "arm,gic-v3";
+			#interrupt-cells = <3>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			interrupt-controller;
+			reg = <0x6 0x00300000 0x10000>,	/* GIC Dist */
+			      <0x6 0x00340000 0xc0000>,	/* GICR */
+			      <0x6 0x00200000 0x2000>,	/* GICC */
+			      <0x6 0x00210000 0x2000>,  /* GICV */
+			      <0x6 0x00220000 0x2000>;  /* GICH */
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		uart0: serial@600100000 {
+			compatible = "ns16550a";
+			reg = <0x6 0x00100000 0x20>;
+			clocks = <&ahb_clk>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+
+			status = "disabled";
+		};
+
+		uart1: serial@600102000 {
+			compatible = "ns16550a";
+			reg = <0x6 0x00102000 0x20>;
+			clocks = <&ahb_clk>;
+			reg-io-width = <4>;
+			reg-shift = <2>;
+			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+
+			status = "disabled";
+		};
+
+		timer1: timer@600105000 {
+			compatible = "snps,dw-apb-timer";
+			reg = <0x6 0x00105000 0x1000>;
+			clocks = <&ahb_clk>;
+			clock-names = "timer";
+			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+	};
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
new file mode 100644
index 0000000000000..d7f985f7ee020
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ */
+
+/dts-v1/;
+#include "sparx5_pcb_common.dtsi"
+
+/ {
+	model = "Sparx5 PCB125 Reference Board";
+	compatible = "microchip,sparx5-pcb125", "microchip,sparx5";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x00000000 0x10000000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
new file mode 100644
index 0000000000000..feee4e99ff57c
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ */
+
+/dts-v1/;
+#include "sparx5_pcb134_board.dtsi"
+
+/ {
+	model = "Sparx5 PCB134 Reference Board (NAND)";
+	compatible = "microchip,sparx5-pcb134", "microchip,sparx5";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x00000000 0x10000000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
new file mode 100644
index 0000000000000..005cf6babb9b3
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134_board.dtsi
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ */
+
+/dts-v1/;
+#include "sparx5_pcb_common.dtsi"
+
+/{
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts
new file mode 100644
index 0000000000000..10081a66961bb
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ */
+
+/dts-v1/;
+#include "sparx5_pcb134_board.dtsi"
+
+/ {
+	model = "Sparx5 PCB134 Reference Board (eMMC enabled)";
+	compatible = "microchip,sparx5-pcb134", "microchip,sparx5";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x00000000 0x10000000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
new file mode 100644
index 0000000000000..20e409a9be196
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ */
+
+/dts-v1/;
+#include "sparx5_pcb135_board.dtsi"
+
+/ {
+	model = "Sparx5 PCB135 Reference Board (NAND)";
+	compatible = "microchip,sparx5-pcb135", "microchip,sparx5";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x00000000 0x10000000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
new file mode 100644
index 0000000000000..005cf6babb9b3
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb135_board.dtsi
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ */
+
+/dts-v1/;
+#include "sparx5_pcb_common.dtsi"
+
+/{
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts
new file mode 100644
index 0000000000000..741f0e12260e5
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ */
+
+/dts-v1/;
+#include "sparx5_pcb135_board.dtsi"
+
+/ {
+	model = "Sparx5 PCB135 Reference Board (eMMC enabled)";
+	compatible = "microchip,sparx5-pcb135", "microchip,sparx5";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x00000000 0x10000000>;
+	};
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi b/arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi
new file mode 100644
index 0000000000000..1f99d0db1284f
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb_common.dtsi
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Microchip Technology Inc. and its subsidiaries.
+ */
+
+/dts-v1/;
+#include "sparx5.dtsi"
+
+&uart0 {
+	status = "okay";
+};
+
+&uart1 {
+	status = "okay";
+};
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242ABFF9B3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 13:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7mUcY0ItQVLimZ+EhG+er9Wobs00O2J+YXQQUOKwzxc=; b=qT+cSLUob2l5uRFlkpQILTXbS/
	7HpFja/PWoEB1L1QfrS5uJi2taDREZ13dOBvj6kRVKu2asRLnMijQTpXd9Dgsbapf6zguID0SWoic
	VzBH4ZdvnxgwXXb38Rkn9FG1PaB6ZUTud6kodvbIuEt7hhjtYyarB+DxR8uwbtMXVgIGRhDBoTDf4
	dk039/UkLCDbaXGz9ps6unwuaTS1yWhmhl34seQJgUNadJorYisoYoqomhi0yOOMTydtwtwyroNPb
	ynDU8t2sIOBOEvRRJAOKLdAXAZJhtlfZMyXQjD30mgyaYLW3X73MiDRzwdZwYCAm4GWMErNcZb0lp
	4cxOMtlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWK0X-0003Em-UC; Sun, 17 Nov 2019 12:50:26 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJwZ-0007PF-ER
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 12:46:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2A51F200712;
 Sun, 17 Nov 2019 13:46:18 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7B7A92001FF;
 Sun, 17 Nov 2019 13:46:12 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4D42A402A9;
 Sun, 17 Nov 2019 20:46:05 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND v3 13/15] arm64: dts: imx: add imx8qm common dts file
Date: Sun, 17 Nov 2019 20:43:53 +0800
Message-Id: <1573994635-14479-14-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573994635-14479-1-git-send-email-aisheng.dong@nxp.com>
References: <1573994635-14479-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_044619_846383_BCCEFD2D 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, shawnguo@kernel.org, linux-clk@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8QuadMax is a Dual (2x) Cortex-A72 and Quad (4x) Cortex-A53
proccessor with powerful graphic and multimedia features. It uses
the same architecture as MX8QXP, so many SS can be reused.
This patch adds i.MX8QuadMax SoC dtsi file.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v2->v3:
 * remove a typo change on imx8qxp.dtsi which is unrelated to this patch
 * include new imx8-lpcg.h
v1->v2:
 * change to the new two cell scu clk binding
---
 arch/arm64/boot/dts/freescale/imx8qm.dtsi | 180 ++++++++++++++++++++++
 1 file changed, 180 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm.dtsi

diff --git a/arch/arm64/boot/dts/freescale/imx8qm.dtsi b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
new file mode 100644
index 000000000000..87a4c3ec8861
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm.dtsi
@@ -0,0 +1,180 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright 2018-2019 NXP
+ *	Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+#include <dt-bindings/clock/imx8-lpcg.h>
+#include <dt-bindings/firmware/imx/rsrc.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/pinctrl/pads-imx8qm.h>
+
+/ {
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	aliases {
+		mmc0 = &usdhc1;
+		mmc1 = &usdhc2;
+		mmc2 = &usdhc3;
+		serial0 = &lpuart0;
+	};
+
+	cpus {
+		#address-cells = <2>;
+		#size-cells = <0>;
+
+		cpu-map {
+			cluster0 {
+				core0 {
+					cpu = <&A53_0>;
+				};
+				core1 {
+					cpu = <&A53_1>;
+				};
+				core2 {
+					cpu = <&A53_2>;
+				};
+				core3 {
+					cpu = <&A53_3>;
+				};
+			};
+
+			cluster1 {
+				core0 {
+					cpu = <&A72_0>;
+				};
+				core1 {
+					cpu = <&A72_1>;
+				};
+			};
+		};
+
+		A53_0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53", "arm,armv8";
+			reg = <0x0 0x0>;
+			enable-method = "psci";
+			next-level-cache = <&A53_L2>;
+		};
+
+		A53_1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53", "arm,armv8";
+			reg = <0x0 0x1>;
+			enable-method = "psci";
+			next-level-cache = <&A53_L2>;
+		};
+
+		A53_2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53", "arm,armv8";
+			reg = <0x0 0x2>;
+			enable-method = "psci";
+			next-level-cache = <&A53_L2>;
+		};
+
+		A53_3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a53", "arm,armv8";
+			reg = <0x0 0x3>;
+			enable-method = "psci";
+			next-level-cache = <&A53_L2>;
+		};
+
+		A72_0: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72", "arm,armv8";
+			reg = <0x0 0x100>;
+			enable-method = "psci";
+			next-level-cache = <&A72_L2>;
+		};
+
+		A72_1: cpu@101 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72", "arm,armv8";
+			reg = <0x0 0x101>;
+			enable-method = "psci";
+			next-level-cache = <&A72_L2>;
+		};
+
+		A53_L2: l2-cache0 {
+			compatible = "cache";
+		};
+
+		A72_L2: l2-cache1 {
+			compatible = "cache";
+		};
+	};
+
+	gic: interrupt-controller@51a00000 {
+		compatible = "arm,gic-v3";
+		reg = <0x0 0x51a00000 0 0x10000>, /* GIC Dist */
+		      <0x0 0x51b00000 0 0xC0000>, /* GICR */
+		      <0x0 0x52000000 0 0x2000>,  /* GICC */
+		      <0x0 0x52010000 0 0x1000>,  /* GICH */
+		      <0x0 0x52020000 0 0x20000>; /* GICV */
+		#interrupt-cells = <3>;
+		interrupt-controller;
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+	};
+
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>, /* Physical Secure */
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>, /* Physical Non-Secure */
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>, /* Virtual */
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>; /* Hypervisor */
+	};
+
+	scu {
+		compatible = "fsl,imx-scu";
+		mbox-names = "tx0", "tx1", "tx2", "tx3",
+			     "rx0", "rx1", "rx2", "rx3";
+		mboxes = <&lsio_mu1 0 0
+			  &lsio_mu1 0 1
+			  &lsio_mu1 0 2
+			  &lsio_mu1 0 3
+			  &lsio_mu1 1 0
+			  &lsio_mu1 1 1
+			  &lsio_mu1 1 2
+			  &lsio_mu1 1 3>;
+
+		pd: imx8qx-pd {
+			compatible = "fsl,imx8qm-scu-pd", "fsl,scu-pd";
+			#power-domain-cells = <1>;
+		};
+
+		clk: clock-controller {
+			compatible = "fsl,imx8qxp-clk", "fsl,scu-clk";
+			#clock-cells = <2>;
+		};
+
+		iomuxc: pinctrl {
+			compatible = "fsl,imx8qm-iomuxc";
+		};
+
+	};
+
+	/* sorted in register address */
+	#include "imx8-ss-dma.dtsi"
+	#include "imx8-ss-conn.dtsi"
+	#include "imx8-ss-lsio.dtsi"
+};
+
+#include "imx8qm-ss-dma.dtsi"
+#include "imx8qm-ss-conn.dtsi"
+#include "imx8qm-ss-lsio.dtsi"
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

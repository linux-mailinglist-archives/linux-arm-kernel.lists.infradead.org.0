Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98CEEE4CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 17:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2pppWve37mZGvMdl9wqzAiaX6PB+ToY1qG9u9UJHmA=; b=JLOmvKiJ8pTjMS
	Y45UtCRMT1HDOc7j/s1sE5QC4jRwIzUgVV147uWqsKbkwklG9RWXOu8EYA67rINY1YagNtePAjvQa
	fh0gaie6xFmG74TX66+cqrUhGf4Zk1lqIHqwzuSXAs5QWYqCTLb83NfmW0+wojoJSxcEP11eUL4Uh
	hCkqlnnC86hKoCYvXHHJTRc5QcgmJxOaCya3mWW+apCPFnctBQVC089bBxlcqnPfMfVFMDJDDmLPq
	8A3Qj7K6IvCOgHfn9/C6i2LB376mTTAKAme1exqxJBwVtLcP3BmfdLW3HMeEr4rk/Gm92DxGBSFYe
	vAjrYHbJq9/6Cv6ryJYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfNu-0006Lc-Hr; Mon, 04 Nov 2019 16:39:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfNX-00068t-C1; Mon, 04 Nov 2019 16:38:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AA53625;
 Mon,  4 Nov 2019 08:38:53 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5FE43F71A;
 Mon,  4 Nov 2019 08:38:47 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Tsahee Zidenberg <tsahee@annapurnalabs.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Brijesh Singh <brijeshkumar.singh@amd.com>,
 Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Robert Richter <rrichter@cavium.com>,
 Jayachandran C <jnair@caviumnetworks.com>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michal Simek <michal.simek@xilinx.com>
Subject: [PATCH v1 2/7] arm64: dts: Use IRQ flags for legacy PCI IRQ interrupts
Date: Mon,  4 Nov 2019 16:38:16 +0000
Message-Id: <20191104163834.8932-3-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191104163834.8932-1-andrew.murray@arm.com>
References: <20191104163834.8932-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_083855_547747_6317877E 
X-CRM114-Status: GOOD (  14.12  )
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
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace magic numbers used to describe legacy PCI IRQ interrupts
with #define.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 arch/arm64/boot/dts/al/alpine-v2.dtsi            |  6 +++---
 arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts |  2 +-
 arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts |  2 +-
 arch/arm64/boot/dts/amd/amd-overdrive.dts        |  2 +-
 arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi     | 12 +++++++-----
 arch/arm64/boot/dts/amd/husky.dts                |  2 +-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts        | 10 +++++-----
 arch/arm64/boot/dts/arm/juno-base.dtsi           | 12 +++++++-----
 arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi    | 10 +++++-----
 arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi   | 10 +++++-----
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi        | 10 +++++-----
 arch/arm64/boot/dts/hisilicon/hip06.dtsi         | 10 +++++-----
 arch/arm64/boot/dts/qcom/msm8998.dtsi            | 10 +++++-----
 arch/arm64/boot/dts/qcom/qcs404.dtsi             | 10 +++++-----
 arch/arm64/boot/dts/rockchip/rk3399.dtsi         | 10 +++++-----
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi | 11 ++++++-----
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi | 11 ++++++-----
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi           | 12 +++++++-----
 18 files changed, 80 insertions(+), 72 deletions(-)

diff --git a/arch/arm64/boot/dts/al/alpine-v2.dtsi b/arch/arm64/boot/dts/al/alpine-v2.dtsi
index d5e7e2bb4e6c..35a540090026 100644
--- a/arch/arm64/boot/dts/al/alpine-v2.dtsi
+++ b/arch/arm64/boot/dts/al/alpine-v2.dtsi
@@ -132,10 +132,10 @@
 			#address-cells = <3>;
 			#interrupt-cells = <1>;
 			reg = <0x0 0xfbc00000 0x0 0x100000>;
-			interrupt-map-mask = <0xf800 0 0 7>;
+			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
 			/* add legacy interrupts for SATA only */
-			interrupt-map = <0x4000 0 0 1 &gic 0 53 4>,
-					<0x4800 0 0 1 &gic 0 54 4>;
+			interrupt-map = <0x4000 0 0 IRQ_INTA &gic 0 53 4>,
+					<0x4800 0 0 IRQ_INTA &gic 0 54 4>;
 			/* 32 bit non prefetchable memory space */
 			ranges = <0x2000000 0x0 0xfe000000 0x0 0xfe000000 0x0 0x1000000>;
 			bus-range = <0x00 0x00>;
diff --git a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
index 8e341be9a399..d4a8d3a5eebb 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
@@ -8,7 +8,7 @@
 
 /dts-v1/;
 
-/include/ "amd-seattle-soc.dtsi"
+#include "amd-seattle-soc.dtsi"
 
 / {
 	model = "AMD Seattle (Rev.B0) Development Board (Overdrive)";
diff --git a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
index 92cef05c6b74..e55254e714f2 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
@@ -8,7 +8,7 @@
 
 /dts-v1/;
 
-/include/ "amd-seattle-soc.dtsi"
+#include "amd-seattle-soc.dtsi"
 
 / {
 	model = "AMD Seattle (Rev.B1) Development Board (Overdrive)";
diff --git a/arch/arm64/boot/dts/amd/amd-overdrive.dts b/arch/arm64/boot/dts/amd/amd-overdrive.dts
index 41b3a6c0993d..4e09c9a2ceda 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive.dts
@@ -7,7 +7,7 @@
 
 /dts-v1/;
 
-/include/ "amd-seattle-soc.dtsi"
+#include "amd-seattle-soc.dtsi"
 
 / {
 	model = "AMD Seattle Development Board (Overdrive)";
diff --git a/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi b/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi
index b664e7af74eb..efc6f42f3bd1 100644
--- a/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi
+++ b/arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi
@@ -5,6 +5,8 @@
  * Copyright (C) 2014 Advanced Micro Devices, Inc.
  */
 
+#include <dt-bindings/interrupt-controller/irq.h>
+
 / {
 	compatible = "amd,seattle";
 	interrupt-parent = <&gic0>;
@@ -213,12 +215,12 @@
 			msi-parent = <&v2m0>;
 			reg = <0 0xf0000000 0 0x10000000>;
 
-			interrupt-map-mask = <0xf800 0x0 0x0 0x7>;
+			interrupt-map-mask = <0xf800 0x0 0x0 IRQ_INT_ALL>;
 			interrupt-map =
-				<0x1000 0x0 0x0 0x1 &gic0 0x0 0x0 0x0 0x120 0x1>,
-				<0x1000 0x0 0x0 0x2 &gic0 0x0 0x0 0x0 0x121 0x1>,
-				<0x1000 0x0 0x0 0x3 &gic0 0x0 0x0 0x0 0x122 0x1>,
-				<0x1000 0x0 0x0 0x4 &gic0 0x0 0x0 0x0 0x123 0x1>;
+				<0x1000 0x0 0x0 IRQ_INTA &gic0 0x0 0x0 0x0 0x120 0x1>,
+				<0x1000 0x0 0x0 IRQ_INTB &gic0 0x0 0x0 0x0 0x121 0x1>,
+				<0x1000 0x0 0x0 IRQ_INTC &gic0 0x0 0x0 0x0 0x122 0x1>,
+				<0x1000 0x0 0x0 IRQ_INTD &gic0 0x0 0x0 0x0 0x123 0x1>;
 
 			dma-coherent;
 			dma-ranges = <0x43000000 0x0 0x0 0x0 0x0 0x100 0x0>;
diff --git a/arch/arm64/boot/dts/amd/husky.dts b/arch/arm64/boot/dts/amd/husky.dts
index 7acde34772cb..5463e89b2811 100644
--- a/arch/arm64/boot/dts/amd/husky.dts
+++ b/arch/arm64/boot/dts/amd/husky.dts
@@ -8,7 +8,7 @@
 
 /dts-v1/;
 
-/include/ "amd-seattle-soc.dtsi"
+#include "amd-seattle-soc.dtsi"
 
 / {
 	model = "Linaro 96Boards Enterprise Edition Server (Husky) Board";
diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 62ab0d54ff71..8352c3ad43ab 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -161,11 +161,11 @@
 		bus-range = <0x0 0x1>;
 		reg = <0x0 0x40000000 0x0 0x10000000>;
 		ranges = <0x2000000 0x0 0x50000000 0x0 0x50000000 0x0 0x10000000>;
-		interrupt-map = <0 0 0 1 &gic GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 2 &gic GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 3 &gic GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 4 &gic GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-map-mask = <0x0 0x0 0x0 0x7>;
+		interrupt-map = <0 0 0 IRQ_INTA &gic GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 IRQ_INTB &gic GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 IRQ_INTC &gic GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 IRQ_INTD &gic GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0x0 0x0 0x0 IRQ_INT_ALL>;
 		msi-map = <0x0 &its 0x0 0x10000>;
 		iommu-map = <0x0 &smmu 0x0 0x10000>;
 
diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 26a039a028b8..b01a922a9fbf 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -1,4 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
+#include <dt-bindings/interrupt-controller/irq.h>
+
 #include "juno-clocks.dtsi"
 #include "juno-motherboard.dtsi"
 
@@ -519,11 +521,11 @@
 			 <0x02000000 0x00 0x50000000 0x00 0x50000000 0x0 0x08000000>,
 			 <0x42000000 0x40 0x00000000 0x40 0x00000000 0x1 0x00000000>;
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 7>;
-		interrupt-map = <0 0 0 1 &gic 0 0 GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 2 &gic 0 0 GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 3 &gic 0 0 GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
-				<0 0 0 4 &gic 0 0 GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+		interrupt-map = <0 0 0 IRQ_INTA &gic 0 0 GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 IRQ_INTB &gic 0 0 GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 IRQ_INTC &gic 0 0 GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>,
+				<0 0 0 IRQ_INTD &gic 0 0 GIC_SPI 139 IRQ_TYPE_LEVEL_HIGH>;
 		msi-parent = <&v2m_0>;
 		status = "disabled";
 		iommu-map-mask = <0x0>;	/* RC has no means to output PCI RID */
diff --git a/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi b/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi
index dfb41705a9a9..6776b116e3db 100644
--- a/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi
+++ b/arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi
@@ -115,13 +115,13 @@
 		  <0x02000000    0 0x40000000    0 0x40000000    0 0x20000000
 		   0x43000000 0x40 0x00000000 0x40 0x00000000 0x20 0x00000000>;
 		bus-range = <0 0xff>;
-		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
 		interrupt-map =
 		      /* addr  pin  ic   icaddr  icintr */
-			<0 0 0  1  &gic   0 0    GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH
-			 0 0 0  2  &gic   0 0    GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH
-			 0 0 0  3  &gic   0 0    GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH
-			 0 0 0  4  &gic   0 0    GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
+			<0 0 0  IRQ_INTA  &gic   0 0    GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH
+			 0 0 0  IRQ_INTB  &gic   0 0    GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH
+			 0 0 0  IRQ_INTC  &gic   0 0    GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH
+			 0 0 0  IRQ_INTD  &gic   0 0    GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
 		msi-parent = <&gicits>;
 		dma-coherent;
 	};
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
index 337919366dc8..662cbf7c6588 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
@@ -492,11 +492,11 @@
 				  0x82000000 0x0 0x40000000 0x40 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
 			msi-parent = <&msi>;
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 7>;
-			interrupt-map = <0000 0 0 1 &gic 0 110 IRQ_TYPE_LEVEL_HIGH>,
-					<0000 0 0 2 &gic 0 111 IRQ_TYPE_LEVEL_HIGH>,
-					<0000 0 0 3 &gic 0 112 IRQ_TYPE_LEVEL_HIGH>,
-					<0000 0 0 4 &gic 0 113 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0000 0 0 IRQ_INTA &gic 0 110 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 IRQ_INTB &gic 0 111 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 IRQ_INTC &gic 0 112 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 IRQ_INTD &gic 0 113 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 		};
 	};
diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
index 253cc345f143..9469e1c935c0 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
@@ -1013,14 +1013,14 @@
 			#interrupt-cells = <1>;
 			interrupts = <0 283 4>;
 			interrupt-names = "msi";
-			interrupt-map-mask = <0xf800 0 0 7>;
-			interrupt-map = <0x0 0 0 1
+			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0x0 0 0 IRQ_INTA
 					 &gic GIC_SPI 282 IRQ_TYPE_LEVEL_HIGH>,
-					<0x0 0 0 2
+					<0x0 0 0 IRQ_INTB
 					 &gic GIC_SPI 283 IRQ_TYPE_LEVEL_HIGH>,
-					<0x0 0 0 3
+					<0x0 0 0 IRQ_INTC
 					 &gic GIC_SPI 284 IRQ_TYPE_LEVEL_HIGH>,
-					<0x0 0 0 4
+					<0x0 0 0 IRQ_INTD
 					 &gic GIC_SPI 285 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&crg_ctrl HI3660_PCIEPHY_REF>,
 				 <&crg_ctrl HI3660_CLK_GATE_PCIEAUX>,
diff --git a/arch/arm64/boot/dts/hisilicon/hip06.dtsi b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
index 50ceaa959bdc..179a61e171de 100644
--- a/arch/arm64/boot/dts/hisilicon/hip06.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
@@ -741,11 +741,11 @@
 				 0x5ff0000 0x01000000 0 0 0 0xb7ff0000
 				 0 0x10000>;
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0xf800 0 0 7>;
-			interrupt-map = <0x0 0 0 1 &mbigen_pcie0 650 4
-					0x0 0 0 2 &mbigen_pcie0 650 4
-					0x0 0 0 3 &mbigen_pcie0 650 4
-					0x0 0 0 4 &mbigen_pcie0 650 4>;
+			interrupt-map-mask = <0xf800 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0x0 0 0 IRQ_INTA &mbigen_pcie0 650 4
+					0x0 0 0 IRQ_INTB &mbigen_pcie0 650 4
+					0x0 0 0 IRQ_INTC &mbigen_pcie0 650 4
+					0x0 0 0 IRQ_INTD &mbigen_pcie0 650 4>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index c6f81431983e..63e72069d21e 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -867,11 +867,11 @@
 			#interrupt-cells = <1>;
 			interrupts = <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "msi";
-			interrupt-map-mask = <0 0 0 0x7>;
-			interrupt-map =	<0 0 0 1 &intc 0 135 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 2 &intc 0 136 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 3 &intc 0 138 IRQ_TYPE_LEVEL_HIGH>,
-					<0 0 0 4 &intc 0 139 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map =	<0 0 0 IRQ_INTA &intc 0 135 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTB &intc 0 136 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTC &intc 0 138 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTD &intc 0 139 IRQ_TYPE_LEVEL_HIGH>;
 
 			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
 				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index a97eeb4569c0..8e0a9fa37c82 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -980,11 +980,11 @@
 			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "msi";
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0x7>;
-			interrupt-map = <0 0 0 1 &intc GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
-					<0 0 0 2 &intc GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
-					<0 0 0 3 &intc GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
-					<0 0 0 4 &intc GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0 0 0 IRQ_INTA &intc GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTB &intc GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTC &intc GIC_SPI 267 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 IRQ_INTD &intc GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index cede1ad81be2..bb68826bac6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -242,11 +242,11 @@
 			     <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-names = "sys", "legacy", "client";
-		interrupt-map-mask = <0 0 0 7>;
-		interrupt-map = <0 0 0 1 &pcie0_intc 0>,
-				<0 0 0 2 &pcie0_intc 1>,
-				<0 0 0 3 &pcie0_intc 2>,
-				<0 0 0 4 &pcie0_intc 3>;
+		interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+		interrupt-map = <0 0 0 IRQ_INTA &pcie0_intc 0>,
+				<0 0 0 IRQ_INTB &pcie0_intc 1>,
+				<0 0 0 IRQ_INTC &pcie0_intc 2>,
+				<0 0 0 IRQ_INTD &pcie0_intc 3>;
 		linux,pci-domain = <0>;
 		max-link-speed = <1>;
 		msi-map = <0x0 &its 0x0 0x1000>;
diff --git a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
index b658f2b641e2..8a1a3e5bb11c 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/gpio/uniphier-gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -900,11 +901,11 @@
 			#interrupt-cells = <1>;
 			interrupt-names = "dma", "msi";
 			interrupts = <0 224 4>, <0 225 4>;
-			interrupt-map-mask = <0 0 0 7>;
-			interrupt-map = <0 0 0 1 &pcie_intc 0>,	/* INTA */
-					<0 0 0 2 &pcie_intc 1>,	/* INTB */
-					<0 0 0 3 &pcie_intc 2>,	/* INTC */
-					<0 0 0 4 &pcie_intc 3>;	/* INTD */
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0 0 0 IRQ_INTA &pcie_intc 0>,
+					<0 0 0 IRQ_INTB &pcie_intc 1>,
+					<0 0 0 IRQ_INTC &pcie_intc 2>,
+					<0 0 0 IRQ_INTD &pcie_intc 3>;
 			phy-names = "pcie-phy";
 			phys = <&pcie_phy>;
 
diff --git a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
index d6f6cee4d549..ec20417fbd31 100644
--- a/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
+++ b/arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/gpio/uniphier-gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 
 / {
 	compatible = "socionext,uniphier-pxs3";
@@ -758,11 +759,11 @@
 			#interrupt-cells = <1>;
 			interrupt-names = "dma", "msi";
 			interrupts = <0 224 4>, <0 225 4>;
-			interrupt-map-mask = <0 0 0 7>;
-			interrupt-map = <0 0 0 1 &pcie_intc 0>,	/* INTA */
-					<0 0 0 2 &pcie_intc 1>,	/* INTB */
-					<0 0 0 3 &pcie_intc 2>,	/* INTC */
-					<0 0 0 4 &pcie_intc 3>;	/* INTD */
+			interrupt-map-mask = <0 0 0 IRQ_INT_ALL>;
+			interrupt-map = <0 0 0 IRQ_INTA &pcie_intc 0>,
+					<0 0 0 IRQ_INTB &pcie_intc 1>,
+					<0 0 0 IRQ_INTC &pcie_intc 2>,
+					<0 0 0 IRQ_INTD &pcie_intc 3>;
 			phy-names = "pcie-phy";
 			phys = <&pcie_phy>;
 
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 9aa67340a4d8..30c9b0b275de 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -12,6 +12,8 @@
  * the License, or (at your option) any later version.
  */
 
+#include <dt-bindings/interrupt-controller/irq.h>
+
 / {
 	compatible = "xlnx,zynqmp";
 	#address-cells = <2>;
@@ -462,11 +464,11 @@
 			ranges = <0x02000000 0x00000000 0xe0000000 0x00000000 0xe0000000 0x00000000 0x10000000	/* non-prefetchable memory */
 				  0x43000000 0x00000006 0x00000000 0x00000006 0x00000000 0x00000002 0x00000000>;/* prefetchable memory */
 			bus-range = <0x00 0xff>;
-			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
-			interrupt-map = <0x0 0x0 0x0 0x1 &pcie_intc 0x1>,
-					<0x0 0x0 0x0 0x2 &pcie_intc 0x2>,
-					<0x0 0x0 0x0 0x3 &pcie_intc 0x3>,
-					<0x0 0x0 0x0 0x4 &pcie_intc 0x4>;
+			interrupt-map-mask = <0x0 0x0 0x0 IRQ_INT_ALL>;
+			interrupt-map = <0x0 0x0 0x0 IRQ_INTA &pcie_intc 0x1>,
+					<0x0 0x0 0x0 IRQ_INTB &pcie_intc 0x2>,
+					<0x0 0x0 0x0 IRQ_INTC &pcie_intc 0x3>,
+					<0x0 0x0 0x0 IRQ_INTD &pcie_intc 0x4>;
 			pcie_intc: legacy-interrupt-controller {
 				interrupt-controller;
 				#address-cells = <0>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739F278BD3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oeD2LVSiShaJqGbY4YAZivf7NPAeTM/l8IQh2fe/LEA=; b=lvBTubnTh8M/cy
	IwffiuhyL8HDzVXcS/5/ajfh/Jf0TbvLVHNvkB7dy8zvUYF8uGAQwQZbSBg4NvlD4FDHu0ZtbzML/
	xN5ZXVlq1UxUUVqfUGrvZTi5SYPKfu8Bo3Ry1Dcl2GPWFWJEQs8aqKqpm+MIvfhpFiXid+cOGwvQk
	Irpc8zmdIIS9SiHYShAoJ5d1BkBplDVyoGJCDlqbTCWxIReIEripG7yAFEaXSsYaFaCNGY0hb4Yn/
	m5LGCOPxlcOwXkt2fkK2Lp+uF+e0mXya6gOU/YDUNagzsyPSfjePkYUa9l3l8VrDJGcrvlfuRu8jE
	qaXSO5b1V1txiJyV0mcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4oX-0001s8-4F; Mon, 29 Jul 2019 12:31:41 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4o9-0001Mt-Ox
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:31:19 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6TCVGGr018234;
 Mon, 29 Jul 2019 07:31:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564403476;
 bh=Tik4umecjwL0CRxAXzJG0pgkNEaQfeEJhJa0tGM9+So=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=bLbMPNDpsj/LTETvEk3EXneACQ2Uu9oub00nwUOo7/OH6EupsUFoMJHMbcSFcysC/
 vJfG9JPWk+bN7YlENkVGBeqgZpRohjf5CZXMqdp1IO+BXtdVQ+Yem5btZje3ZsY6Gb
 1t1VNjFYN7TuI7z5QyOAYZXebJcAbl1EgUyiS2r0=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6TCVGtR092496
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 29 Jul 2019 07:31:16 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 29
 Jul 2019 07:31:16 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 29 Jul 2019 07:31:15 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6TCV7t3087075;
 Mon, 29 Jul 2019 07:31:13 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 2/2] arm64: dts: ti: k3-j721e: Update the power domain cells
Date: Mon, 29 Jul 2019 18:00:23 +0530
Message-ID: <20190729123023.32702-3-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729123023.32702-1-lokeshvutla@ti.com>
References: <20190729123023.32702-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_053117_940354_004E27C6 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the power-domain cells to 2 and mark all devices as
exclusive. Main uart 0 is the debug console for processor boards
and it is used by different software entities like u-boot, atf,
linux simultaneously. So just mark main_uart0 as shared device
for common processor board.

Reviewed-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
---
 .../dts/ti/k3-j721e-common-proc-board.dts     |  4 ++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi     | 20 +++++++++----------
 .../boot/dts/ti/k3-j721e-mcu-wakeup.dtsi      |  6 +++---
 arch/arm64/boot/dts/ti/k3-j721e.dtsi          |  1 +
 4 files changed, 18 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
index c680123f067c..63b47b839388 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts
@@ -19,6 +19,10 @@
 	status = "disabled";
 };
 
+&main_uart0 {
+	power-domains = <&k3_pds 146 TI_SCI_PD_SHARED>;
+};
+
 &main_uart3 {
 	/* UART not brought out */
 	status = "disabled";
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index a01308142f77..01661c22c39d 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -119,7 +119,7 @@
 		interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 146>;
+		power-domains = <&k3_pds 146 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 146 0>;
 		clock-names = "fclk";
 	};
@@ -132,7 +132,7 @@
 		interrupts = <GIC_SPI 193 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 278>;
+		power-domains = <&k3_pds 278 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 278 0>;
 		clock-names = "fclk";
 	};
@@ -145,7 +145,7 @@
 		interrupts = <GIC_SPI 194 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 279>;
+		power-domains = <&k3_pds 279 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 279 0>;
 		clock-names = "fclk";
 	};
@@ -158,7 +158,7 @@
 		interrupts = <GIC_SPI 195 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 280>;
+		power-domains = <&k3_pds 280 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 280 0>;
 		clock-names = "fclk";
 	};
@@ -171,7 +171,7 @@
 		interrupts = <GIC_SPI 196 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 281>;
+		power-domains = <&k3_pds 281 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 281 0>;
 		clock-names = "fclk";
 	};
@@ -184,7 +184,7 @@
 		interrupts = <GIC_SPI 197 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 282>;
+		power-domains = <&k3_pds 282 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 282 0>;
 		clock-names = "fclk";
 	};
@@ -197,7 +197,7 @@
 		interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 283>;
+		power-domains = <&k3_pds 283 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 283 0>;
 		clock-names = "fclk";
 	};
@@ -210,7 +210,7 @@
 		interrupts = <GIC_SPI 199 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 284>;
+		power-domains = <&k3_pds 284 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 284 0>;
 		clock-names = "fclk";
 	};
@@ -223,7 +223,7 @@
 		interrupts = <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 285>;
+		power-domains = <&k3_pds 285 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 285 0>;
 		clock-names = "fclk";
 	};
@@ -236,7 +236,7 @@
 		interrupts = <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 286>;
+		power-domains = <&k3_pds 286 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 286 0>;
 		clock-names = "fclk";
 	};
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
index 07b58eeebceb..e616c2481f51 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi
@@ -20,7 +20,7 @@
 
 		k3_pds: power-controller {
 			compatible = "ti,sci-pm-domain";
-			#power-domain-cells = <1>;
+			#power-domain-cells = <2>;
 		};
 
 		k3_clks: clocks {
@@ -59,7 +59,7 @@
 		interrupts = <GIC_SPI 897 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <48000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 287>;
+		power-domains = <&k3_pds 287 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 287 0>;
 		clock-names = "fclk";
 	};
@@ -72,7 +72,7 @@
 		interrupts = <GIC_SPI 846 IRQ_TYPE_LEVEL_HIGH>;
 		clock-frequency = <96000000>;
 		current-speed = <115200>;
-		power-domains = <&k3_pds 149>;
+		power-domains = <&k3_pds 149 TI_SCI_PD_EXCLUSIVE>;
 		clocks = <&k3_clks 149 0>;
 		clock-names = "fclk";
 	};
diff --git a/arch/arm64/boot/dts/ti/k3-j721e.dtsi b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
index f8dd74b17bfb..43ea1ba97922 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/k3.h>
+#include <dt-bindings/soc/ti,sci_pm_domain.h>
 
 / {
 	model = "Texas Instruments K3 J721E SoC";
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

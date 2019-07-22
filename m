Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445026F8BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 07:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=suu7XGoXkCxCGO5ygZVnOUxsacWtWnyw8kqTV+mkYDc=; b=kZujjQ8MfpI6d/
	y7ZLKHZ26KqBB1bjgGnryKcgC6rPMBvX6DHSFSnokYcELCpxbOtam9lBgZ+MoAiMThdR3GMnIX9Pg
	0ti2fydDDz/7CGyE6uftY77Dg81IcbebVgMxLEHirhcB404RrSoFl7xyPEHIpufNAHAivhX5lTV2R
	MKrTQxuhLyAeVjatmiawqgO/KjGkQQ9HXL5Ktc7e72HXrmiOQCU7b5m91PGyySF44NQ044oHkT/BT
	D7BnqC4vP5I2sxJbKl+f1hpvufp7Bc2rvwd5q0Rb+RcXpbWJ8TPa/6VrWXzk4qzCt3dH3fRz8vQrp
	bMJA8j3FuJflTM72PuXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpQbX-0005tz-FL; Mon, 22 Jul 2019 05:11:19 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpQZF-0003SM-2z
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 05:08:59 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6M58tIi030984;
 Mon, 22 Jul 2019 00:08:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563772135;
 bh=YUiV/ffZbfzSxQ0/eOrI3kaBoRhGAfoARi2kOlH+VO4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=fdSxsljzM92y0nIfiWGFPrYAj9wiWUqZchqfntZtWScrMSMdOCvVUfem0p99YJDU1
 d/1+CVYqpLDBy9zIj6ZRzWms6DlC0iMuSivOdtzoxWlCUvmKBcfyHzUo3B94s63YsH
 aLhJmcE9fDO7lVaoWZ7wv4f6PNVfozp+DO5b/LFA=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6M58txu011093
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Jul 2019 00:08:55 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 22
 Jul 2019 00:08:54 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 22 Jul 2019 00:08:55 -0500
Received: from uda0131933.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6M58bwQ039856;
 Mon, 22 Jul 2019 00:08:52 -0500
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 5/5] arm64: dts: ti: k3-j721e: Update the power domain cells
Date: Mon, 22 Jul 2019 10:37:57 +0530
Message-ID: <20190722050757.29893-6-lokeshvutla@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722050757.29893-1-lokeshvutla@ti.com>
References: <20190722050757.29893-1-lokeshvutla@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_220857_271271_5E0434E8 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

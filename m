Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 363364EE66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 20:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=086qR6t/sd5u7my/fsnnSu6EtodZHQJotYLug2DJF/o=; b=pchDCVDZfMdhzRC1fTPTuVx2Qt
	PAOTgYAp5RRXrfT1JmV611uM+RldVkiLqwdIkHHQa3LUNmfLlTqlqbtmA4hWPiTu/sHgPBZmm/DmA
	knIForLZVkTHE/RzJUoQHO476CiV3it4ArSuCGoXWO9o8Y7ppqXJrO1HYZCgw7vvBAraKqW6TzBcg
	jNNAfxXL6z76EkqhjCR3ziFk7qnEsj8khgkEEPmPNspwYMaxPvMuxdudOYURMwSE3fLEymln1tSeU
	bg7oWHPzXnO3JBRfPxMG8kknPHaHfoG7vKowCE62XcGb2H2VKKWtACTJhd5tO82b4zVcbbLRNdsnX
	cwlATX1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNsK-00051A-SE; Fri, 21 Jun 2019 18:03:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNrp-0004oi-Df
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 18:02:31 +0000
Received: from localhost.localdomain (unknown [194.230.155.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B1D35215EA;
 Fri, 21 Jun 2019 18:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561140149;
 bh=eunsB9axngpbwgAv86zG8SLCyKeyRPBGXGEeasE/nUE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xHfe2I8Cm0NV/f7gFxOe/r7qIN14zaIFQTSa6q/OrsrrF2OzeKUiW8yCOlgUbdFQ2
 XEQlXF6pa7tHIB7QhaROX9OyaW8X4ydmLtIWwGlvzpSss+EYWSCGtUsOL7ZHl/prD6
 rSA1ak3c6SSMQJ8O3i0u2fGbiCI2NaWbibOwHuqI=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/7] ARM: dts: exynos: Add GPU/Mali 400 node to Exynos4
Date: Fri, 21 Jun 2019 20:02:03 +0200
Message-Id: <20190621180208.25361-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621180208.25361-1-krzk@kernel.org>
References: <20190621180208.25361-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_110229_520452_BF78DA6E 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joseph Kogut <joseph.kogut@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nodes for GPU (Mali 400) to Exynos4210 and Exynos4412.  Describe the
GPU as much as possible however still few elements are missing:
1. Exynos4210 bus clock is not described in hardware manual therefore
   the IP gate clock was provided,
2. Exynos4412: Not sure what to do with CLK_G3D clock responsible for
   gating entire IP block (it is now being disabled as unused),
3. Regulator supplies on Trats board.

Limited testing on Odroid U3 (Exynos4412).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Use samsung,exynos4210-mali compatible
2. Use CLK_G3D as bus clock (clock for entire IP block)
3. Remove some of operating points to match Mali in Tizen kernel.
   Previously they were taken from datasheet but this information is too
   generic.
4. Add 533 MHz opp to Exynos4412-prime.
---
 arch/arm/boot/dts/exynos4.dtsi                | 36 +++++++++++++++++++
 arch/arm/boot/dts/exynos4210-origen.dts       |  5 +++
 arch/arm/boot/dts/exynos4210-trats.dts        |  4 +++
 .../boot/dts/exynos4210-universal_c210.dts    |  5 +++
 arch/arm/boot/dts/exynos4210.dtsi             | 17 +++++++++
 .../boot/dts/exynos4412-itop-scp-core.dtsi    |  5 +++
 arch/arm/boot/dts/exynos4412-midas.dtsi       |  5 +++
 .../boot/dts/exynos4412-odroid-common.dtsi    |  5 +++
 arch/arm/boot/dts/exynos4412-prime.dtsi       |  7 ++++
 arch/arm/boot/dts/exynos4412.dtsi             | 25 +++++++++++++
 10 files changed, 114 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4.dtsi b/arch/arm/boot/dts/exynos4.dtsi
index 36ccf227434d..ceaa169032c8 100644
--- a/arch/arm/boot/dts/exynos4.dtsi
+++ b/arch/arm/boot/dts/exynos4.dtsi
@@ -51,6 +51,42 @@
 		serial3 = &serial_3;
 	};
 
+	gpu: gpu@13000000 {
+		compatible = "samsung,exynos4210-mali", "arm,mali-400";
+		reg = <0x13000000 0x10000>;
+		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "gp",
+				  "gpmmu",
+				  "pp0",
+				  "ppmmu0",
+				  "pp1",
+				  "ppmmu1",
+				  "pp2",
+				  "ppmmu2",
+				  "pp3",
+				  "ppmmu3",
+				  "pmu";
+		/*
+		 * CLK_G3D is not actually bus clock but a IP-level clock.
+		 * The bus clock is not described in hardware manual.
+		 */
+		clocks = <&clock CLK_G3D>,
+			 <&clock CLK_SCLK_G3D>;
+		clock-names = "bus", "core";
+		power-domains = <&pd_g3d>;
+		status = "disabled";
+	};
+
 	pmu: pmu {
 		compatible = "arm,cortex-a9-pmu";
 		interrupt-parent = <&combiner>;
diff --git a/arch/arm/boot/dts/exynos4210-origen.dts b/arch/arm/boot/dts/exynos4210-origen.dts
index 36b1edea254a..0d1e1a9c2f6e 100644
--- a/arch/arm/boot/dts/exynos4210-origen.dts
+++ b/arch/arm/boot/dts/exynos4210-origen.dts
@@ -132,6 +132,11 @@
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&buck3_reg>;
+	status = "okay";
+};
+
 &hsotg {
 	vusb_d-supply = <&ldo3_reg>;
 	vusb_a-supply = <&ldo8_reg>;
diff --git a/arch/arm/boot/dts/exynos4210-trats.dts b/arch/arm/boot/dts/exynos4210-trats.dts
index 6882480dbaf7..7c39dd1c4d3a 100644
--- a/arch/arm/boot/dts/exynos4210-trats.dts
+++ b/arch/arm/boot/dts/exynos4210-trats.dts
@@ -239,6 +239,10 @@
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+};
+
 &hsotg {
 	vusb_d-supply = <&vusb_reg>;
 	vusb_a-supply = <&vusbdac_reg>;
diff --git a/arch/arm/boot/dts/exynos4210-universal_c210.dts b/arch/arm/boot/dts/exynos4210-universal_c210.dts
index bf092e97e14f..82a8b5449978 100644
--- a/arch/arm/boot/dts/exynos4210-universal_c210.dts
+++ b/arch/arm/boot/dts/exynos4210-universal_c210.dts
@@ -262,6 +262,11 @@
 	};
 };
 
+&gpu {
+	mali-supply = <&buck2_reg>;
+	status = "okay";
+};
+
 &hdmi {
 	hpd-gpios = <&gpx3 7 GPIO_ACTIVE_HIGH>;
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
index ea0e043cd2b4..bf312ebed01f 100644
--- a/arch/arm/boot/dts/exynos4210.dtsi
+++ b/arch/arm/boot/dts/exynos4210.dtsi
@@ -449,6 +449,23 @@
 	samsung,lcd-wb;
 };
 
+&gpu {
+	operating-points-v2 = <&gpu_opp_table>;
+
+	gpu_opp_table: opp_table {
+		compatible = "operating-points-v2";
+
+		opp-160000000 {
+			opp-hz = /bits/ 64 <160000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-267000000 {
+			opp-hz = /bits/ 64 <267000000>;
+			opp-microvolt = <1050000>;
+		};
+	};
+};
+
 &mdma1 {
 	power-domains = <&pd_lcd0>;
 };
diff --git a/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi b/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
index 0038465f38f1..462a5409b1de 100644
--- a/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
+++ b/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
@@ -115,6 +115,11 @@
 	cpu0-supply = <&buck2_reg>;
 };
 
+&gpu {
+	mali-supply = <&buck4_reg>;
+	status = "okay";
+};
+
 &hsotg {
 	vusb_d-supply = <&ldo15_reg>;
 	vusb_a-supply = <&ldo12_reg>;
diff --git a/arch/arm/boot/dts/exynos4412-midas.dtsi b/arch/arm/boot/dts/exynos4412-midas.dtsi
index 4c15cb616cdf..83be3a797411 100644
--- a/arch/arm/boot/dts/exynos4412-midas.dtsi
+++ b/arch/arm/boot/dts/exynos4412-midas.dtsi
@@ -453,6 +453,11 @@
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&buck4_reg>;
+	status = "okay";
+};
+
 &hdmi {
 	hpd-gpios = <&gpx3 7 GPIO_ACTIVE_HIGH>;
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
index 08d3a0a7b4eb..ea55f377d17c 100644
--- a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
+++ b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
@@ -229,6 +229,11 @@
 	assigned-clock-rates = <0>, <176000000>;
 };
 
+&gpu {
+	mali-supply = <&buck4_reg>;
+	status = "okay";
+};
+
 &hdmi {
 	hpd-gpios = <&gpx3 7 GPIO_ACTIVE_HIGH>;
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/exynos4412-prime.dtsi b/arch/arm/boot/dts/exynos4412-prime.dtsi
index d83fbd4e434c..3731a225f779 100644
--- a/arch/arm/boot/dts/exynos4412-prime.dtsi
+++ b/arch/arm/boot/dts/exynos4412-prime.dtsi
@@ -38,3 +38,10 @@
 	cooling-device = <&cpu0 15 15>, <&cpu1 15 15>,
 			 <&cpu2 15 15>, <&cpu3 15 15>;
 };
+
+&gpu_opp_table {
+	opp-533000000 {
+		opp-hz = /bits/ 64 <533000000>;
+		opp-microvolt = <1075000>;
+	};
+};
diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
index e5c041ec0756..fb53d96934cc 100644
--- a/arch/arm/boot/dts/exynos4412.dtsi
+++ b/arch/arm/boot/dts/exynos4412.dtsi
@@ -716,6 +716,31 @@
 	cpu-offset = <0x4000>;
 };
 
+&gpu {
+	operating-points-v2 = <&gpu_opp_table>;
+
+	gpu_opp_table: opp_table {
+		compatible = "operating-points-v2";
+
+		opp-160000000 {
+			opp-hz = /bits/ 64 <160000000>;
+			opp-microvolt = <875000>;
+		};
+		opp-267000000 {
+			opp-hz = /bits/ 64 <267000000>;
+			opp-microvolt = <900000>;
+		};
+		opp-350000000 {
+			opp-hz = /bits/ 64 <350000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-440000000 {
+			opp-hz = /bits/ 64 <440000000>;
+			opp-microvolt = <1025000>;
+		};
+	};
+};
+
 &hdmi {
 	compatible = "samsung,exynos4212-hdmi";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

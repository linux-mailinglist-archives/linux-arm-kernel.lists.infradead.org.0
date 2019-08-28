Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108ED9FC6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ATRgiElIXJJJuAkZJfKBRP4fC4AlUNLXqVvFc//5WU=; b=Wo+NTbzEnrOF1E
	k3F+0HKB9OFvWEWw9j0WTDYszwC61cJ774F8cV8Kn3g2OxvM74g7xqFqUCdN0plQwlft3i5h4ywJ2
	a/OcTzddM8ogKBLdvrCcfZUeRBoFTZnbe6vgmJZqrgdd90HCwbU/cno1Lo5gBR03pwYmybI8O8i1y
	6yODGxJ5LJdeJK+9sl1caXd3miDKxbNqipGpwjX77y+RTqX07AjvxuGkZc23iFEaGz32/0Dsdt4s5
	1Pee87WlgqNubTZtfWHq6sa9Vuv3tUvYgTfV49D659Ip794lPwkMq80pwl29/3Mw/XYg9Jx/hrbaU
	QJEcIl3UGBq31DY2PXxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2srs-0004Mx-E9; Wed, 28 Aug 2019 07:59:48 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2spK-0002Zj-SD
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:57:12 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7v9do007401;
 Wed, 28 Aug 2019 02:57:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566979029;
 bh=PdU5LgP9Hg6QKlaio0Oi7x2kiAEJReGQeaYlIom23cw=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=blR8ntm3kKo8JbcKDkKA8bkXjdLUKAyeQZvRhAlcUpe1/nwJ0K4TmtQlIEEV0yKyk
 ovrA5MtVExT07O3XKAFUMTM0ug9QqCrQqG/ZnBFWrBhArd/ioXw0Mxux1aQXfvEp/4
 lcBpMFe/c2BExo5ALcV67OkSXEBbJDFCsMAxI8NQ=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7v9Dm124352
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:57:09 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:57:07 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:57:07 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uuFq107124;
 Wed, 28 Aug 2019 02:57:06 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 07/10] ARM: dts: dra7: convert IOMMUs to use ti-sysc
Date: Wed, 28 Aug 2019 10:56:41 +0300
Message-ID: <20190828075644.4493-8-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828075644.4493-1-t-kristo@ti.com>
References: <20190828075644.4493-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_005711_135566_11497380 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert dra7 IOMMUs to use ti-sysc instead of legacy omap-hwmod based
implementation. Enable the IOMMUs also while doing this.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra7.dtsi | 140 +++++++++++++++++++++++++++---------
 1 file changed, 108 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boot/dts/dra7.dtsi b/arch/arm/boot/dts/dra7.dtsi
index 95147289be9c..98c01f204a1a 100644
--- a/arch/arm/boot/dts/dra7.dtsi
+++ b/arch/arm/boot/dts/dra7.dtsi
@@ -377,44 +377,120 @@
 			ti,hwmods = "dmm";
 		};
 
-		mmu0_dsp1: mmu@40d01000 {
-			compatible = "ti,dra7-dsp-iommu";
-			reg = <0x40d01000 0x100>;
-			interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
-			ti,hwmods = "mmu0_dsp1";
-			#iommu-cells = <0>;
-			ti,syscon-mmuconfig = <&dsp1_system 0x0>;
-			status = "disabled";
+		target-module@40d01000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x40d01000 0x4>,
+			      <0x40d01010 0x4>,
+			      <0x40d01014 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			clocks = <&dsp1_clkctrl DRA7_DSP1_MMU0_DSP1_CLKCTRL 0>;
+			clock-names = "fck";
+			resets = <&prm_dsp1 1>;
+			reset-names = "rstctrl";
+			ranges = <0x0 0x40d01000 0x1000>;
+			#size-cells = <1>;
+			#address-cells = <1>;
+
+			mmu0_dsp1: mmu@0 {
+				compatible = "ti,dra7-dsp-iommu";
+				reg = <0x0 0x100>;
+				interrupts = <GIC_SPI 23 IRQ_TYPE_LEVEL_HIGH>;
+				#iommu-cells = <0>;
+				ti,syscon-mmuconfig = <&dsp1_system 0x0>;
+			};
 		};
 
-		mmu1_dsp1: mmu@40d02000 {
-			compatible = "ti,dra7-dsp-iommu";
-			reg = <0x40d02000 0x100>;
-			interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
-			ti,hwmods = "mmu1_dsp1";
-			#iommu-cells = <0>;
-			ti,syscon-mmuconfig = <&dsp1_system 0x1>;
-			status = "disabled";
+		target-module@40d02000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x40d02000 0x4>,
+			      <0x40d02010 0x4>,
+			      <0x40d02014 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			clocks = <&dsp1_clkctrl DRA7_DSP1_MMU0_DSP1_CLKCTRL 0>;
+			clock-names = "fck";
+			resets = <&prm_dsp1 1>;
+			reset-names = "rstctrl";
+			ranges = <0x0 0x40d02000 0x1000>;
+			#size-cells = <1>;
+			#address-cells = <1>;
+
+			mmu1_dsp1: mmu@0 {
+				compatible = "ti,dra7-dsp-iommu";
+				reg = <0x0 0x100>;
+				interrupts = <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>;
+				#iommu-cells = <0>;
+				ti,syscon-mmuconfig = <&dsp1_system 0x1>;
+			};
 		};
 
-		mmu_ipu1: mmu@58882000 {
-			compatible = "ti,dra7-iommu";
-			reg = <0x58882000 0x100>;
-			interrupts = <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>;
-			ti,hwmods = "mmu_ipu1";
-			#iommu-cells = <0>;
-			ti,iommu-bus-err-back;
-			status = "disabled";
+		target-module@58882000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x58882000 0x4>,
+			      <0x58882010 0x4>,
+			      <0x58882014 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			clocks = <&ipu1_clkctrl DRA7_IPU1_MMU_IPU1_CLKCTRL 0>;
+			clock-names = "fck";
+			resets = <&prm_ipu 2>;
+			reset-names = "rstctrl";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x58882000 0x100>;
+
+			mmu_ipu1: mmu@0 {
+				compatible = "ti,dra7-iommu";
+				reg = <0x0 0x100>;
+				interrupts = <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>;
+				#iommu-cells = <0>;
+				ti,iommu-bus-err-back;
+			};
 		};
 
-		mmu_ipu2: mmu@55082000 {
-			compatible = "ti,dra7-iommu";
-			reg = <0x55082000 0x100>;
-			interrupts = <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>;
-			ti,hwmods = "mmu_ipu2";
-			#iommu-cells = <0>;
-			ti,iommu-bus-err-back;
-			status = "disabled";
+		target-module@55082000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x55082000 0x4>,
+			      <0x55082010 0x4>,
+			      <0x55082014 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			clocks = <&ipu2_clkctrl DRA7_IPU2_MMU_IPU2_CLKCTRL 0>;
+			clock-names = "fck";
+			resets = <&prm_core 2>;
+			reset-names = "rstctrl";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x55082000 0x100>;
+
+			mmu_ipu2: mmu@0 {
+				compatible = "ti,dra7-iommu";
+				reg = <0x0 0x100>;
+				interrupts = <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>;
+				#iommu-cells = <0>;
+				ti,iommu-bus-err-back;
+			};
 		};
 
 		abb_mpu: regulator-abb-mpu {
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E339FC7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPSXbpBFH0mE8/DOcBm0uLMWHg4Kg8spAPZisnj2w6s=; b=jNqiJWRp3DrWsc
	b3IoLZEz9E3O6ty5bsiVo5n1zzZBh4w3WTSdLU2Zv4sBVEYwePfZ5IJH7QbmYlzojX0ro8DUf/CfE
	3DyK4F5XrtlMIMZk4OAV0xdAyL6WsJABqAxUEblBbOYdDsobELeQgQ8qJRQH/sw1RPxq9TJQX+wTI
	ja1PDzQIuh5b0dq7vBmj+96Y3DHCGv9Eo0pYO742PzdzAvmfKq/WRvxxhozI94Ibge7trA650VTSd
	4IDbg1iDY2Ab/XhO8McCV6Evzr6//BfuCSbLXNkQckvd/U6fzQxmUNmiWxQw5REBzy71R1+wdR6hU
	PmH0k3mrQ9wHPgF46WIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ssa-00069b-Eo; Wed, 28 Aug 2019 08:00:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2spc-0002qQ-Ts
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:57:30 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7vRxD007447;
 Wed, 28 Aug 2019 02:57:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566979047;
 bh=TGUVPD43qbXTCmcwpihYxSJ/SRD6X4Ttg1A4Zd2r+Xk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=apg1o24YwGO1eLSjaCit8514janK3qe2NeoN8RFojLPDvnKt7OYOmymY5ducRgcL1
 0mXwKT3CtGjQ3RrllutdV31SarlGlfrnBK065wn+5qcVvMVRnrJ0JapRbMMrbkPFbu
 feh5YrgNr8jrxkjkUEot/3K1M6237SZCUmBsXE28=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7vRiJ128550
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:57:27 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:57:26 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:57:27 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uuFt107124;
 Wed, 28 Aug 2019 02:57:10 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 10/10] ARM: dts: omap5: convert IOMMUs to use ti-sysc
Date: Wed, 28 Aug 2019 10:56:44 +0300
Message-ID: <20190828075644.4493-11-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828075644.4493-1-t-kristo@ti.com>
References: <20190828075644.4493-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_005729_183971_86D913DE 
X-CRM114-Status: GOOD (  12.84  )
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

Convert omap5 IOMMUs to use ti-sysc instead of legacy omap-hwmod based
implementation. Enable the IOMMUs also while doing this.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/omap5-l4.dtsi | 11 ++++++---
 arch/arm/boot/dts/omap5.dtsi    | 40 +++++++++++++++++++++------------
 2 files changed, 34 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boot/dts/omap5-l4.dtsi b/arch/arm/boot/dts/omap5-l4.dtsi
index 0960348002ad..80c2d2fcc03b 100644
--- a/arch/arm/boot/dts/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/omap5-l4.dtsi
@@ -349,7 +349,6 @@
 
 		target-module@66000 {			/* 0x4a066000, ap 23 0a.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "mmu_dsp";
 			reg = <0x66000 0x4>,
 			      <0x66010 0x4>,
 			      <0x66014 0x4>;
@@ -364,12 +363,18 @@
 			/* Domains (V, P, C): mm, dsp_pwrdm, dsp_clkdm */
 			clocks = <&dsp_clkctrl OMAP5_MMU_DSP_CLKCTRL 0>;
 			clock-names = "fck";
+			resets = <&prm_dsp 1>;
+			reset-names = "rstctrl";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x0 0x66000 0x1000>;
 
-			/* mmu_dsp cannot be moved before reset driver */
-			status = "disabled";
+			mmu_dsp: mmu@0 {
+				compatible = "ti,omap4-iommu";
+				reg = <0x0 0x100>;
+				interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+				#iommu-cells = <0>;
+			};
 		};
 
 		target-module@70000 {			/* 0x4a070000, ap 79 2e.0 */
diff --git a/arch/arm/boot/dts/omap5.dtsi b/arch/arm/boot/dts/omap5.dtsi
index c8bde171a949..05929d59b0af 100644
--- a/arch/arm/boot/dts/omap5.dtsi
+++ b/arch/arm/boot/dts/omap5.dtsi
@@ -186,21 +186,33 @@
 			#gpio-cells = <2>;
 		};
 
-		mmu_dsp: mmu@4a066000 {
-			compatible = "ti,omap4-iommu";
-			reg = <0x4a066000 0x100>;
-			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
-			ti,hwmods = "mmu_dsp";
-			#iommu-cells = <0>;
-		};
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
+			clocks = <&ipu_clkctrl OMAP5_MMU_IPU_CLKCTRL 0>;
+			clock-names = "fck";
+			resets = <&prm_core 2>;
+			reset-names = "rstctrl";
+			ranges = <0x0 0x55082000 0x100>;
+			#size-cells = <1>;
+			#address-cells = <1>;
 
-		mmu_ipu: mmu@55082000 {
-			compatible = "ti,omap4-iommu";
-			reg = <0x55082000 0x100>;
-			interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
-			ti,hwmods = "mmu_ipu";
-			#iommu-cells = <0>;
-			ti,iommu-bus-err-back;
+			mmu_ipu: mmu@0 {
+				compatible = "ti,omap4-iommu";
+				reg = <0x0 0x100>;
+				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+				#iommu-cells = <0>;
+				ti,iommu-bus-err-back;
+			};
 		};
 
 		dmm@4e000000 {
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

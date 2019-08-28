Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA8B9FC6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8s+cuKn4xY64nvK5NrX0xvmbElcWFGMlzTfvyRuVOG8=; b=fcGzqgGyr41c4S
	Olr43CDIkuCOUM5HLVPkOFMaOVe92lxwqPyVtv8KyMvJ1sVvQoSxPNDPWsVBlaaPUeifEXCv9XoAr
	K2Sr0L29ljzEPt9WA5igsEEJFfFfPBnIWxpZZzPc2RvbfRGZLrTC4FCYSUXY+U+uUS7nuomly6BJq
	f/r26vUQPlfLWf21fZBwaSfn3Zs6njZ7538H4kHFqMIMM0ybDR2zofWWcgetga8+3awQ8sZaoOfFP
	cRGc9rBHqtkrL8ziQyAElztpgrECR1mSz+aTl+6eYo0EjWPLgYKcI5wr5HXdQucuB/AEsTbgeoKkh
	6joFlrB8ppSA+hUb0hUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2srd-00045f-63; Wed, 28 Aug 2019 07:59:33 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2spL-0002a7-41
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:57:12 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7v9kS014940;
 Wed, 28 Aug 2019 02:57:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566979029;
 bh=gdGNt8Bd4D3tOazg61iqzY4jL5JivnDdetottPmFFxY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=yZLlUsyNd3RG0FDRjfy+iA7z2Wq7qFdt+gtKqMrRitq07hQJjQw+ArASwxWDLT5sM
 dfa59sZFk0+y/ratrTQWxmSYIjsS57RCbXY1wOqx7MlXH31wqpy087Dx1kaDmWyoZ0
 zymYOGTxNHuDm7OoCUqUyqJlfpxXZEH6Ta4h3GKM=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7v9rV072447
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:57:09 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:57:09 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:57:09 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uuFr107124;
 Wed, 28 Aug 2019 02:57:08 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 08/10] ARM: dts: dra74x: convert IOMMUs to use ti-sysc
Date: Wed, 28 Aug 2019 10:56:42 +0300
Message-ID: <20190828075644.4493-9-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828075644.4493-1-t-kristo@ti.com>
References: <20190828075644.4493-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_005711_403358_89ED9C4F 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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

Convert dra74x IOMMUs to use ti-sysc instead of legacy omap-hwmod based
implementation. Enable the IOMMUs also while doing this.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra74x.dtsi | 71 +++++++++++++++++++++++++++--------
 1 file changed, 55 insertions(+), 16 deletions(-)

diff --git a/arch/arm/boot/dts/dra74x.dtsi b/arch/arm/boot/dts/dra74x.dtsi
index d1b5b76bc5a8..c5abc436ca1f 100644
--- a/arch/arm/boot/dts/dra74x.dtsi
+++ b/arch/arm/boot/dts/dra74x.dtsi
@@ -66,24 +66,63 @@
 			};
 		};
 
-		mmu0_dsp2: mmu@41501000 {
-			compatible = "ti,dra7-dsp-iommu";
-			reg = <0x41501000 0x100>;
-			interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
-			ti,hwmods = "mmu0_dsp2";
-			#iommu-cells = <0>;
-			ti,syscon-mmuconfig = <&dsp2_system 0x0>;
-			status = "disabled";
+		target-module@41501000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x41501000 0x4>,
+			      <0x41501010 0x4>,
+			      <0x41501014 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			clocks = <&dsp2_clkctrl DRA7_DSP2_MMU0_DSP2_CLKCTRL 0>;
+			clock-names = "fck";
+			resets = <&prm_dsp2 1>;
+			reset-names = "rstctrl";
+			ranges = <0x0 0x41501000 0x1000>;
+			#size-cells = <1>;
+			#address-cells = <1>;
+
+			mmu0_dsp2: mmu@0 {
+				compatible = "ti,dra7-dsp-iommu";
+				reg = <0x0 0x100>;
+				interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
+				#iommu-cells = <0>;
+				ti,syscon-mmuconfig = <&dsp2_system 0x0>;
+			};
 		};
 
-		mmu1_dsp2: mmu@41502000 {
-			compatible = "ti,dra7-dsp-iommu";
-			reg = <0x41502000 0x100>;
-			interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>;
-			ti,hwmods = "mmu1_dsp2";
-			#iommu-cells = <0>;
-			ti,syscon-mmuconfig = <&dsp2_system 0x1>;
-			status = "disabled";
+		target-module@41502000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0x41502000 0x4>,
+			      <0x41502010 0x4>,
+			      <0x41502014 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+
+			clocks = <&dsp2_clkctrl DRA7_DSP2_MMU0_DSP2_CLKCTRL 0>;
+			clock-names = "fck";
+			resets = <&prm_dsp2 1>;
+			reset-names = "rstctrl";
+			ranges = <0x0 0x41502000 0x1000>;
+			#size-cells = <1>;
+			#address-cells = <1>;
+
+			mmu1_dsp2: mmu@0 {
+				compatible = "ti,dra7-dsp-iommu";
+				reg = <0x0 0x100>;
+				interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>;
+				#iommu-cells = <0>;
+				ti,syscon-mmuconfig = <&dsp2_system 0x1>;
+			};
 		};
 	};
 };
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

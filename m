Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A191B7931
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMIaEdn8iVrrFeJvUXOKua35J2Ga6zu8Znopo4R0kdU=; b=dbd1NPQwDFBV6r
	nwNuHwsB8m6numej7WbRcqbs9gqS2hR5FQkeXnKae9NYUmGT/VX2JoxrLgT7Uer+fqglUVUh5doPS
	ovvM90hGPL+cViSm7Pm4Rp979kgPzt4QaWfNQsGXLMA+QQZonbXTaueuLJ4S54BHsZJ1TuQsyqWGj
	T6Fw1V2xIMAkUTpxQbA640+tAZH8WpIFKJBg/MLVwWYtVEUx3RymF6J/oZ61zTcVM53FQbVMyj4CT
	tan+aCVcOvSsLGhXyieoMOLkwQ3zgQ36w56qDD8x4MRpcNsAMnbnin2bF6+dF0JyF9qghfDwkyZLm
	lShPpQgqljx/82chxaOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS02M-0004c4-2l; Fri, 24 Apr 2020 15:14:42 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS00q-0003em-21
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:13:09 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFD1SO051907;
 Fri, 24 Apr 2020 10:13:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587741181;
 bh=dUcBXkA+mI1VnymmrNxcWukhkF4qUvXilpLKdh5ewJE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ODtUaLiXq8dyAkGwJUrGEDs8K4Lxr5F88SCVrK7GLIxc4zj3yncgc/BpraIytK/OG
 JOJsbWMblM0tCIKrD1GxnqcBIP9XyapPvN4smZ3rFDfDQNMiXGpmYnjNh2+7PNY0X1
 vXimapZzv9sxshKmICMJeiiHRU0JvneLJ4XQLjgA=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03OFD11m091618
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Apr 2020 10:13:01 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:13:01 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:13:01 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFCu7A122378;
 Fri, 24 Apr 2020 10:13:00 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 02/17] ARM: dts: DRA7: Add common IPU and DSP nodes
Date: Fri, 24 Apr 2020 18:12:29 +0300
Message-ID: <20200424151244.3225-3-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200424151244.3225-1-t-kristo@ti.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_081308_188711_D1D45585 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: s-anna@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suman Anna <s-anna@ti.com>

The DRA7xx family of SOCs have two IPUs and upto two DSP
processor subsystems in general. The IPU processor subsystem
contains dual-core ARM Cortex-M4 processors, while the DSP
processor subsystem is based on the TI's standard TMS320C66x
DSP CorePac core. The IPUs are very similar to those on OMAP5.

Two IPUs and one DSP processor subsystems is the most common
configuration. The processor device DT nodes have been added
for these processor subsystems, with the internal memories
added through 'reg' and 'reg-names' properties. The IPUs only
have an L2 RAM, whereas the DSPs have L1P, L1D and L2 RAM
memories.

NOTE:
1. The nodes do not have any mailboxes, timers or CMA regions
   assigned, they should be added in the respective board dts
   files.
2. The nodes haven been disabled by default and the enabling
   of these nodes is also left to the respective board dts
   files.

Signed-off-by: Suman Anna <s-anna@ti.com>
[t-kristo@ti.com: convert to ti-sysc support from legacy hwmod]
Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/dra7.dtsi | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/dra7.dtsi b/arch/arm/boot/dts/dra7.dtsi
index 4740989ed9c4..8f4e4941984f 100644
--- a/arch/arm/boot/dts/dra7.dtsi
+++ b/arch/arm/boot/dts/dra7.dtsi
@@ -410,6 +410,42 @@
 			ti,hwmods = "dmm";
 		};
 
+		ipu1: ipu@58820000 {
+			compatible = "ti,dra7-ipu";
+			reg = <0x58820000 0x10000>;
+			reg-names = "l2ram";
+			iommus = <&mmu_ipu1>;
+			status = "disabled";
+			resets = <&prm_ipu 0>, <&prm_ipu 1>;
+			clocks = <&ipu1_clkctrl DRA7_IPU1_MMU_IPU1_CLKCTRL 0>;
+			firmware-name = "dra7-ipu1-fw.xem4";
+		};
+
+		ipu2: ipu@55020000 {
+			compatible = "ti,dra7-ipu";
+			reg = <0x55020000 0x10000>;
+			reg-names = "l2ram";
+			iommus = <&mmu_ipu2>;
+			status = "disabled";
+			resets = <&prm_core 0>, <&prm_core 1>;
+			clocks = <&ipu2_clkctrl DRA7_IPU2_MMU_IPU2_CLKCTRL 0>;
+			firmware-name = "dra7-ipu2-fw.xem4";
+		};
+
+		dsp1: dsp@40800000 {
+			compatible = "ti,dra7-dsp";
+			reg = <0x40800000 0x48000>,
+			      <0x40e00000 0x8000>,
+			      <0x40f00000 0x8000>;
+			reg-names = "l2ram", "l1pram", "l1dram";
+			ti,bootreg = <&scm_conf 0x55c 10>;
+			iommus = <&mmu0_dsp1>, <&mmu1_dsp1>;
+			status = "disabled";
+			resets = <&prm_dsp1 0>;
+			clocks = <&dsp1_clkctrl DRA7_DSP1_MMU0_DSP1_CLKCTRL 0>;
+			firmware-name = "dra7-dsp1-fw.xe66";
+		};
+
 		target-module@40d01000 {
 			compatible = "ti,sysc-omap2", "ti,sysc";
 			reg = <0x40d01000 0x4>,
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

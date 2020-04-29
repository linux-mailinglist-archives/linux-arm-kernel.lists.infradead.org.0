Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4D81BE0FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/0QC10DhFBfoOz2TNWnCepftrbYwwc6lDHIlnQtynM=; b=mTja5F+oHOArE+
	QXe1E4XNgFhe6N19brcVdu6PfxzH0l9BH4pbzk/9uyT2bDXuFvPdDiE3F7hlwynZfU/fk7ngVGiG4
	WjawhL05Q6XXMiRPpYWr3MPpSIszSm1KZYQ2lCuItE/RBC6HtseQshAEdUBeUoE/kbfbTWeXOIuBm
	3TSXYUEaCfMXH9dp4LlCQ4ftMk29Uu6+tgYbbKoQGRir60iNtZKpheBwi+TfQdfh46dkawv0mYeVM
	wCtUPa7vL2pxv61ZoWd72rcQY1Sh5xwiuo31Ba44e0ZnZq6PkKSFn75BKNpsr90LnAhMuXEsurD9o
	XmiukGm7lUWvUlzHBgWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnku-0006Vi-Mi; Wed, 29 Apr 2020 14:32:08 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnjA-0005BB-3Z
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:30:24 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03TEUFwb103729;
 Wed, 29 Apr 2020 09:30:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588170615;
 bh=dp/ptzdtBpE57xdN7wrAd5gHoAOPnNuOJOS+skT7pWs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=XhxV/9itdLtQCw3a0qk+yc1ZrIB+J1eXnT95yAPfg4Lz2VfJzc89N3V0f6axCsrKg
 04UukYjztpJzfNixbuTUJrV26P8L1JHhcuh8Nhw6j2xqQm6Fme9uGMMUW4BheCKwx7
 7N2MR6yL+TDhsrqQQWb0rgFZlk34JX94aR9xkHpM=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03TEUF96122220;
 Wed, 29 Apr 2020 09:30:15 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 29
 Apr 2020 09:30:15 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 29 Apr 2020 09:30:15 -0500
Received: from sokoban.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03TEU54q010784;
 Wed, 29 Apr 2020 09:30:14 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 6/8] ARM: dts: omap5: add DES crypto accelerator node
Date: Wed, 29 Apr 2020 17:30:00 +0300
Message-ID: <20200429143002.5050-7-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200429143002.5050-1-t-kristo@ti.com>
References: <20200429143002.5050-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_073021_161953_B939688F 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

OMAP5 contains a single DES crypto accelerator instance. Add node for
this in DT to enable it.

We keep the node disabled for now, as it appears OMAP5 platform is
running out of available DMA channels, and DES is the least interesting
crypto accelerator available on the device.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/omap5-l4.dtsi | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/boot/dts/omap5-l4.dtsi b/arch/arm/boot/dts/omap5-l4.dtsi
index f68740abb8aa..55999655a3bc 100644
--- a/arch/arm/boot/dts/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/omap5-l4.dtsi
@@ -1003,6 +1003,7 @@
 			 <0x00090000 0x00090000 0x002000>,	/* ap 55 */
 			 <0x00092000 0x00092000 0x001000>,	/* ap 56 */
 			 <0x000a4000 0x000a4000 0x001000>,	/* ap 57 */
+			 <0x000a5000 0x000a5000 0x001000>,
 			 <0x000a6000 0x000a6000 0x001000>,	/* ap 58 */
 			 <0x000a8000 0x000a8000 0x004000>,	/* ap 59 */
 			 <0x000ac000 0x000ac000 0x001000>,	/* ap 60 */
@@ -1908,6 +1909,36 @@
 				 <0x00001000 0x000a5000 0x00001000>;
 		};
 
+		des_target: target-module@a5000 {	/* 0x480a5000 */
+			compatible = "ti,sysc-omap2", "ti,sysc";
+			reg = <0xa5030 0x4>,
+			      <0xa5034 0x4>,
+			      <0xa5038 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>,
+					<SYSC_IDLE_SMART_WKUP>;
+			ti,syss-mask = <1>;
+			/* Domains (P, C): l4per_pwrdm, l4sec_clkdm */
+			clocks = <&l4sec_clkctrl OMAP5_DES3DES_CLKCTRL 0>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0xa5000 0x00001000>;
+			status = "disabled";
+
+			des: des@0 {
+				compatible = "ti,omap4-des";
+				reg = <0 0xa0>;
+				interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
+				dmas = <&sdma 117>, <&sdma 116>;
+				dma-names = "tx", "rx";
+			};
+		};
+
 		target-module@a8000 {			/* 0x480a8000, ap 59 2a.0 */
 			compatible = "ti,sysc";
 			status = "disabled";
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

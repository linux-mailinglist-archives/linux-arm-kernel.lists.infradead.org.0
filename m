Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D809FC5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/XbgNXnnxmi+t0ge5qrXqs8Qnv2SrazFNJn4ksE6dQ=; b=tsBY6zOpsI8M1s
	XXFSp+6vo8hTg1Atj2Il3qRYYUww7gTyxzdnDZbA6DxAUjKBRTHAKnkcQWslEXPKz4X2AZuJ1kMAJ
	U8nkvanvRL55RSpX3nYUR2EaHAlnit48Ld3EIq8CGTgrBJsqmsnnrOE65pdKfbJST1ZirScshx5Ca
	D/Sm4VWRCirelwNxT3V01Y6/UdeEg6bocB9NE70gsn0n62mQeezVIgBT97JkIPZll3CEgm0NmXkAW
	An+vlMOzt04ogDdQI8ro9OdakfGErI+Rx4pnlsG3VwAMVh8aVJbw2JGVhMUIGsWdf3KhcBPU0rnds
	lCoTL1W8a0xMCWQKaDOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2spj-0002gb-Th; Wed, 28 Aug 2019 07:57:35 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2spB-0002RI-1L
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:57:02 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uxJF123121;
 Wed, 28 Aug 2019 02:56:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566979019;
 bh=u5tysN0SZOq/tSuyufNeM9PorN2KHwQ83/BegyqbgjI=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=JvmWmEIFfFauU/RYUeBDx/hWp4iBOZ5NHIPqqF1LoRkYn9PTGhqtyeL9UAIUpxqnL
 FjoFJfvthz+qTiu3JmrPyy/Xu0TAOqU2oB7kxDkWjNfty1fycn9HuKtxVDJpE4oVl5
 i3kx7Q/KDmPjEGr1wbiF69zwetJSmR6qGWz+VBts=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7ux4H072041
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:56:59 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:56:59 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:56:59 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uuFk107124;
 Wed, 28 Aug 2019 02:56:58 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 01/10] ARM: dts: omap5: add IVA clkctrl nodes
Date: Wed, 28 Aug 2019 10:56:35 +0300
Message-ID: <20190828075644.4493-2-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828075644.4493-1-t-kristo@ti.com>
References: <20190828075644.4493-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_005701_117383_1D907117 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

Add clkctrtl nodes for Image and Video Accelerator subsystem for omap5.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/omap54xx-clocks.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/omap54xx-clocks.dtsi b/arch/arm/boot/dts/omap54xx-clocks.dtsi
index 33e8dd905bff..f1ab2777e33e 100644
--- a/arch/arm/boot/dts/omap54xx-clocks.dtsi
+++ b/arch/arm/boot/dts/omap54xx-clocks.dtsi
@@ -1132,6 +1132,20 @@
 		};
 	};
 
+	iva_cm: iva_cm@1200 {
+		compatible = "ti,omap4-cm";
+		reg = <0x1200 0x100>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x1200 0x100>;
+
+		iva_clkctrl: clk@20 {
+			compatible = "ti,clkctrl";
+			reg = <0x20 0xc>;
+			#clock-cells = <2>;
+		};
+	};
+
 	dss_cm: dss_cm@1400 {
 		compatible = "ti,omap4-cm";
 		reg = <0x1400 0x100>;
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

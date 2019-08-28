Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50C79FC60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wx4htxF3DeNMO79S+Z4zZ14xMWg2JtzzjWi0E3JjiHw=; b=U/IxrYw5H8y23U
	9VfSlnwDAnDP+hO9VLigfDhzUvhgYqFwezFdnKPgs945AKfTjSdFRL2s0Q9zv5PzasP1jmb/TjPzX
	vEEJtlV4RtGq9sM/dmKc9SD0aGQQ/I28p1PqjnRjCVVZRMNGkK/9Mm5m6OTZyr4gC8P3oL5yV6CJd
	eZF8K1jrUN3vQjupZxH87Yi3nbVRl6Zo6DMjL33QUl6qIaoS1coyoBX6wWKWiPET7v9kePvXDKu+q
	/UR2VeJnY6FkjeNZP47RT6NXSNjpzreVeCjRwxgLS01RUQhRa6g7C2g05Z6tHzKrJxJANjjskbp9w
	YsKdGg3Y3t/PU0UMlKJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sqM-00039h-T7; Wed, 28 Aug 2019 07:58:15 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2spE-0002Sn-NX
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:57:06 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7v2eU127649;
 Wed, 28 Aug 2019 02:57:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566979022;
 bh=usezFA71rznpN9ia/t+wJ4qi7Gg7ULvpWM8RBhJKtf8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=eVWVv26kx/ZLkUP2KsIMU9gkIDrDd+eOXNiLPGCXJafrU2Pdny9cfOlO4vk722rTG
 BEs9xW0LRjRKnl/LkMU66Iiq7LOqXmmLnjk3m0jrhFH+yv9xk/PSEumuCbv4bGxUhf
 hUBYf9FPfgw5jxTZ+CTluPyy4o+3fz0Cr03pf/AE=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7v2Nc072155
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:57:02 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:57:02 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:57:01 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7uuFm107124;
 Wed, 28 Aug 2019 02:57:00 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <tony@atomide.com>
Subject: [PATCH 03/10] ARM: dts: omap4: add PRM nodes
Date: Wed, 28 Aug 2019 10:56:37 +0300
Message-ID: <20190828075644.4493-4-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828075644.4493-1-t-kristo@ti.com>
References: <20190828075644.4493-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_005704_948176_5D58ED9F 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

Add PRM nodes for omap4 series of SoCs. These are initially used to
support reset control for some of the nodes, but will be extended
later to add powerdomain control and support for PRCM irqs among
other things.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 arch/arm/boot/dts/omap4-l4.dtsi |  2 +-
 arch/arm/boot/dts/omap4.dtsi    | 29 +++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/omap4-l4.dtsi b/arch/arm/boot/dts/omap4-l4.dtsi
index bea05dc4ef0f..0977bc39955b 100644
--- a/arch/arm/boot/dts/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/omap4-l4.dtsi
@@ -981,7 +981,7 @@
 			ranges = <0x0 0x6000 0x2000>;
 
 			prm: prm@0 {
-				compatible = "ti,omap4-prm";
+				compatible = "ti,omap4-prm", "simple-bus";
 				reg = <0x0 0x2000>;
 				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
diff --git a/arch/arm/boot/dts/omap4.dtsi b/arch/arm/boot/dts/omap4.dtsi
index c43e52fd5f65..e377f66fc322 100644
--- a/arch/arm/boot/dts/omap4.dtsi
+++ b/arch/arm/boot/dts/omap4.dtsi
@@ -443,3 +443,32 @@
 #include "omap4-l4.dtsi"
 #include "omap4-l4-abe.dtsi"
 #include "omap44xx-clocks.dtsi"
+
+&prm {
+	prm_tesla: prm@400 {
+		compatible = "ti,omap4-prm-inst";
+		reg = <0x400 0x100>;
+		#reset-cells = <1>;
+		clocks = <&tesla_clkctrl OMAP4_DSP_CLKCTRL 0>;
+	};
+
+	prm_core: prm@700 {
+		compatible = "ti,omap4-prm-inst";
+		reg = <0x700 0x100>;
+		#reset-cells = <1>;
+		clocks = <&ducati_clkctrl OMAP4_IPU_CLKCTRL 0>;
+	};
+
+	prm_ivahd: prm@f00 {
+		compatible = "ti,omap4-prm-inst";
+		reg = <0xf00 0x100>;
+		#reset-cells = <1>;
+		clocks = <&ivahd_clkctrl OMAP4_IVA_CLKCTRL 0>;
+	};
+
+	prm_device: prm@1b00 {
+		compatible = "ti,omap4-prm-inst";
+		reg = <0x1b00 0x40>;
+		#reset-cells = <1>;
+	};
+};
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

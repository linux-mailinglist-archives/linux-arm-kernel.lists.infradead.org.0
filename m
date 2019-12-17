Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2806B121F5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xLsjfb85sIgBbu9zftnlXgK/liZPAQ+OXSpX+RiUm0=; b=Yxp9IgWYedb05L
	Nk6MEgbItVShNyOt0lLjl/0+T/MEXWPKyQEPR2zzqAWTf+VkpSnQi44Psbb5KnE+5VRSEimOa6exy
	8xpp51zTtrC1ilTzfuN7bEgIeHRemXm/0ervbluB3rEhbvcuH86tuLfgJCzP60DN5z2EsOp/J55dK
	Zls4CwyXb+McgOWG+79oh0OCCGRrJde2BR1+esGb1B764V/zqXfXhM+VkyLnB2r+6dda47pfNvOOT
	HtDeWZYG/u3h9DhmmKsu0HMt8bV0gbB6vFN5Ku4/dt3x84nmUbJTI9ojPW+Bi0rQ3WNs9tqSYH35n
	CDyjeb3RjJStyIlLraAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0bn-00037v-8M; Tue, 17 Dec 2019 00:21:03 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0aa-0001AL-1Q
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:19:50 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id BF2A68272;
 Tue, 17 Dec 2019 00:20:26 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 03/14] ARM: dts: Configure interconnect target module for
 omap3 sdma
Date: Mon, 16 Dec 2019 16:19:14 -0800
Message-Id: <20191217001925.44558-4-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217001925.44558-1-tony@atomide.com>
References: <20191217001925.44558-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_161948_188490_69556B51 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Vinod Koul <vinod.koul@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can now probe devices with device tree only configuration using
ti-sysc interconnect target module driver. Let's configure the
module, but keep the legacy "ti,hwmods" peroperty to avoid new boot
time warnings. The legacy property will be removed in later patches
together with the legacy platform data.

Note that we want to use separate compatible for omap34xx and
omap36xx so let's do that here too while at it.

Cc: devicetree@vger.kernel.org
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap3-n900.dts |  5 ++++
 arch/arm/boot/dts/omap3.dtsi     | 45 +++++++++++++++++++++++++-------
 arch/arm/boot/dts/omap36xx.dtsi  |  4 +++
 3 files changed, 44 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/omap3-n900.dts b/arch/arm/boot/dts/omap3-n900.dts
--- a/arch/arm/boot/dts/omap3-n900.dts
+++ b/arch/arm/boot/dts/omap3-n900.dts
@@ -482,6 +482,11 @@ &vintdig {
 	regulator-always-on;
 };
 
+/* First two dma channels are reserved on secure omap3 */
+&sdma {
+	dma-channel-mask = <0xfffffffc>;
+};
+
 &twl {
 	twl_audio: audio {
 		compatible = "ti,twl4030-audio";
diff --git a/arch/arm/boot/dts/omap3.dtsi b/arch/arm/boot/dts/omap3.dtsi
--- a/arch/arm/boot/dts/omap3.dtsi
+++ b/arch/arm/boot/dts/omap3.dtsi
@@ -206,17 +206,42 @@ intc: interrupt-controller@48200000 {
 			reg = <0x48200000 0x1000>;
 		};
 
-		sdma: dma-controller@48056000 {
-			compatible = "ti,omap3630-sdma", "ti,omap3430-sdma";
-			reg = <0x48056000 0x1000>;
-			interrupts = <12>,
-				     <13>,
-				     <14>,
-				     <15>;
-			#dma-cells = <1>;
-			dma-channels = <32>;
-			dma-requests = <96>;
+		target-module@48056000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
 			ti,hwmods = "dma";
+			reg = <0x48056000 0x4>,
+			      <0x4805602c 0x4>,
+			      <0x48056028 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_EMUFREE |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-midle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,syss-mask = <1>;
+			/* Domains (V, P, C): core, core_pwrdm, core_l3_clkdm */
+			clocks = <&core_l3_ick>;
+			clock-names = "ick";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x48056000 0x1000>;
+
+			sdma: dma-controller@0 {
+				compatible = "ti,omap3430-sdma", "ti,omap-sdma";
+				reg = <0x0 0x1000>;
+				interrupts = <12>,
+					     <13>,
+					     <14>,
+					     <15>;
+				#dma-cells = <1>;
+				dma-channels = <32>;
+				dma-requests = <96>;
+			};
 		};
 
 		gpio1: gpio@48310000 {
diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
--- a/arch/arm/boot/dts/omap36xx.dtsi
+++ b/arch/arm/boot/dts/omap36xx.dtsi
@@ -223,6 +223,10 @@ thermal_zones: thermal-zones {
 	};
 };
 
+&sdma {
+	compatible = "ti,omap3630-sdma", "ti,omap-sdma";
+};
+
 /* OMAP3630 needs dss_96m_fck for VENC */
 &venc {
 	clocks = <&dss_tv_fck>, <&dss_96m_fck>;
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

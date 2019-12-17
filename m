Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B91121F5A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8ygKaXyL8/O0BseYtHwGFuxGR7TBEx+3FmDQGPfMaI=; b=mIIropk67gJtVh
	PIUxna3S5kYj6+dUVsjosOVjaXax+4NBysTmqHif4A6pKmjO/S2WCrHcTlRN/b3i8YNXhkv2rOS5M
	En9cnf1U6KIgIJLPNSoUjg/YgPraawqpbhw71x/PzCK6ao/eoh3rK23J3cEz3+dN5PAw3+R7agktP
	HX31jmlxQcFJ7rXGXu6VUdXyzD5AvsjDn7k/3jHBrCoJnnGl5SXD3VhezGLBwUrwQ0exZSG9QZU4y
	1puUPJ8RwwogzDDznYJhdFuA882oe9OTcgJFqqL1wLDQU0VbEpZgu018hPEh9kmT0tEwlF2yz9ZC6
	A0+O1CPQda4iZJ5Lat1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0bY-0002rH-MJ; Tue, 17 Dec 2019 00:20:48 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0aY-00019N-Bu
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:19:48 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 28FB981D8;
 Tue, 17 Dec 2019 00:20:25 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 02/14] ARM: dts: Configure interconnect target module for
 omap2 sdma
Date: Mon, 16 Dec 2019 16:19:13 -0800
Message-Id: <20191217001925.44558-3-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191217001925.44558-1-tony@atomide.com>
References: <20191217001925.44558-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_161946_466734_E88A7E04 
X-CRM114-Status: GOOD (  10.37  )
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

Note that we want to use separate compatible for omap2420 and
omap2430 so let's do that here too while at it.

Cc: devicetree@vger.kernel.org
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap2.dtsi    | 42 +++++++++++++++++++++++++--------
 arch/arm/boot/dts/omap2430.dtsi |  4 ++++
 2 files changed, 36 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/omap2.dtsi b/arch/arm/boot/dts/omap2.dtsi
--- a/arch/arm/boot/dts/omap2.dtsi
+++ b/arch/arm/boot/dts/omap2.dtsi
@@ -8,6 +8,7 @@
  * kind, whether express or implied.
  */
 
+#include <dt-bindings/bus/ti-sysc.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/omap.h>
@@ -79,17 +80,38 @@ intc: interrupt-controller@1 {
 			reg = <0x480FE000 0x1000>;
 		};
 
-		sdma: dma-controller@48056000 {
-			compatible = "ti,omap2430-sdma", "ti,omap2420-sdma";
+		target-module@48056000 {
+			compatible = "ti,sysc-omap2", "ti,sysc";
 			ti,hwmods = "dma";
-			reg = <0x48056000 0x1000>;
-			interrupts = <12>,
-				     <13>,
-				     <14>,
-				     <15>;
-			#dma-cells = <1>;
-			dma-channels = <32>;
-			dma-requests = <64>;
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
+			ti,syss-mask = <1>;
+			clocks = <&core_l3_ck>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x48056000 0x1000>;
+
+			sdma: dma-controller@0 {
+				compatible = "ti,omap2420-sdma", "ti,omap-sdma";
+				reg = <0 0x1000>;
+				interrupts = <12>,
+					     <13>,
+					     <14>,
+					     <15>;
+				#dma-cells = <1>;
+				dma-channels = <32>;
+				dma-requests = <64>;
+			};
 		};
 
 		i2c1: i2c@48070000 {
diff --git a/arch/arm/boot/dts/omap2430.dtsi b/arch/arm/boot/dts/omap2430.dtsi
--- a/arch/arm/boot/dts/omap2430.dtsi
+++ b/arch/arm/boot/dts/omap2430.dtsi
@@ -309,6 +309,10 @@ wd_timer2: wdt@49016000 {
 	};
 };
 
+&sdma {
+	compatible = "ti,omap2430-sdma", "ti,omap-sdma";
+};
+
 &i2c1 {
 	compatible = "ti,omap2430-i2c";
 };
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

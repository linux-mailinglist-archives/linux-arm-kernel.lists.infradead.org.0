Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 080EB10EA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 23:42:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKUfZXgmXJpepAA+ZwRubQV5+g4zkG39biT7a/BygeU=; b=iiI7d/KAf82pNf
	a3NeVxz5SPHYLMLugCRjPZQ5r4/DSFi2TlhhGbj+zBJjqqwbP1hRtdJEXlRNdWBXcNowwHC+ZJe94
	IfpyRHPAXdFEeY5no7bG1ZKWtg0AEo9oyyNyXm6xRifIqbPb0tYDeNbP3QQJS3FeOmNjo8NpS0tkn
	l4qY2meT8p/qzRwm2SrEMZBSMhQmK0oxW9411H2v6pwVn9LF/J4qv6ERC+fn2ADi39QEfT/5HxYDs
	7tBw3cL7pDDDoOdlNckK0cFnD2/47SN4sf261noslNDE0AeGOHsJEcB6L7DFj7wPxZatTsgIVC/n8
	5+gvhpCWR1MKKG8IwjmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLwzU-0002WS-VM; Wed, 01 May 2019 21:42:12 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLwz8-0002CT-FR
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 21:41:52 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id A87F48198;
 Wed,  1 May 2019 21:42:06 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/2] bus: ti-sysc: Handle devices with no control registers
Date: Wed,  1 May 2019 14:41:29 -0700
Message-Id: <20190501214129.12572-3-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190501214129.12572-1-tony@atomide.com>
References: <20190501214129.12572-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_144150_713044_DB0546D0 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>, Keerthy <j-keerthy@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some interconnect target modules have no module control registers at
all, such as d_can on am335x and am437x.

The d_can register offset at 0 is CTL register with 0x401 as the default
value. I guess I mistook the 0x401 value for a revision register as the
value happens to look similar to what the revision registers typically
have for other modules.

To handle modules with no control registers, we need to improve the
ti-sysc driver a bit to bail out with errors on no control registers,
and then we can remove the bogus revision registers for d_can.

Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/am33xx-l4.dtsi |  4 ----
 arch/arm/boot/dts/am437x-l4.dtsi |  4 ----
 drivers/bus/ti-sysc.c            | 23 +++++++++++------------
 3 files changed, 11 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/am33xx-l4.dtsi b/arch/arm/boot/dts/am33xx-l4.dtsi
--- a/arch/arm/boot/dts/am33xx-l4.dtsi
+++ b/arch/arm/boot/dts/am33xx-l4.dtsi
@@ -1759,8 +1759,6 @@
 		target-module@cc000 {			/* 0x481cc000, ap 60 46.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
 			ti,hwmods = "d_can0";
-			reg = <0xcc000 0x4>;
-			reg-names = "rev";
 			/* Domains (P, C): per_pwrdm, l4ls_clkdm */
 			clocks = <&l4ls_clkctrl AM3_L4LS_D_CAN0_CLKCTRL 0>,
 				 <&dcan0_fck>;
@@ -1783,8 +1781,6 @@
 		target-module@d0000 {			/* 0x481d0000, ap 62 42.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
 			ti,hwmods = "d_can1";
-			reg = <0xd0000 0x4>;
-			reg-names = "rev";
 			/* Domains (P, C): per_pwrdm, l4ls_clkdm */
 			clocks = <&l4ls_clkctrl AM3_L4LS_D_CAN1_CLKCTRL 0>,
 				 <&dcan1_fck>;
diff --git a/arch/arm/boot/dts/am437x-l4.dtsi b/arch/arm/boot/dts/am437x-l4.dtsi
--- a/arch/arm/boot/dts/am437x-l4.dtsi
+++ b/arch/arm/boot/dts/am437x-l4.dtsi
@@ -1575,8 +1575,6 @@
 		target-module@cc000 {			/* 0x481cc000, ap 50 46.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
 			ti,hwmods = "d_can0";
-			reg = <0xcc000 0x4>;
-			reg-names = "rev";
 			/* Domains (P, C): per_pwrdm, l4ls_clkdm */
 			clocks = <&l4ls_clkctrl AM4_L4LS_D_CAN0_CLKCTRL 0>;
 			clock-names = "fck";
@@ -1596,8 +1594,6 @@
 		target-module@d0000 {			/* 0x481d0000, ap 52 3a.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
 			ti,hwmods = "d_can1";
-			reg = <0xd0000 0x4>;
-			reg-names = "rev";
 			/* Domains (P, C): per_pwrdm, l4ls_clkdm */
 			clocks = <&l4ls_clkctrl AM4_L4LS_D_CAN1_CLKCTRL 0>;
 			clock-names = "fck";
diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -660,12 +660,6 @@ static int sysc_check_registers(struct sysc *ddata)
 		nr_regs++;
 	}
 
-	if (nr_regs < 1) {
-		dev_err(ddata->dev, "missing registers\n");
-
-		return -EINVAL;
-	}
-
 	if (nr_matches > nr_regs) {
 		dev_err(ddata->dev, "overlapping registers: (%i/%i)",
 			nr_regs, nr_matches);
@@ -691,12 +685,18 @@ static int sysc_ioremap(struct sysc *ddata)
 {
 	int size;
 
-	size = max3(ddata->offsets[SYSC_REVISION],
-		    ddata->offsets[SYSC_SYSCONFIG],
-		    ddata->offsets[SYSC_SYSSTATUS]);
+	if (ddata->offsets[SYSC_REVISION] < 0 &&
+	    ddata->offsets[SYSC_SYSCONFIG] < 0 &&
+	    ddata->offsets[SYSC_SYSSTATUS] < 0) {
+		size = ddata->module_size;
+	} else {
+		size = max3(ddata->offsets[SYSC_REVISION],
+			    ddata->offsets[SYSC_SYSCONFIG],
+			    ddata->offsets[SYSC_SYSSTATUS]);
 
-	if (size < 0 || (size + sizeof(u32)) > ddata->module_size)
-		return -EINVAL;
+		if ((size + sizeof(u32)) > ddata->module_size)
+			return -EINVAL;
+	}
 
 	ddata->module_va = devm_ioremap(ddata->dev,
 					ddata->module_pa,
@@ -1128,7 +1128,6 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 	SYSC_QUIRK("cpgmac", 0, 0x1200, 0x1208, 0x1204, 0x4edb1902,
 		   0xffff00f0, 0),
 	SYSC_QUIRK("dcan", 0, 0, -1, -1, 0xffffffff, 0xffffffff, 0),
-	SYSC_QUIRK("dcan", 0, 0, -1, -1, 0x00001401, 0xffffffff, 0),
 	SYSC_QUIRK("dmic", 0, 0, 0x10, -1, 0x50010000, 0xffffffff, 0),
 	SYSC_QUIRK("dwc3", 0, 0, 0x10, -1, 0x500a0200, 0xffffffff, 0),
 	SYSC_QUIRK("epwmss", 0, 0, 0x4, -1, 0x47400001, 0xffffffff, 0),
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

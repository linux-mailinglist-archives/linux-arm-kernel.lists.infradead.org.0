Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFD111BA10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8JulYw/kLTKr5Jw4nuPjT7xvl8g/EGa37J1F9tCFXA=; b=rk2PtQInxv9jUA
	SLmudECS45H3dQnTTDniNEzzVe0CZwnQzvzk6TptDQmjcSFYw3o1Ufl1WnkKZ08kR8A9X8TPc5S97
	0j6GJcMZfT6G+8H/lf8qsQngftYAvN+ggPYmUerBz2IO1pp7FbPZupMbeZUC/91+52+raC6GVwaXy
	bbMN21DD7Uf+qt7+pUHA4AwflJ8Xx/3J6MKQ++VZQavaYB7TlF0c0OMtapw8geFHs2KAanq6id59E
	MJ14hsJw2KEAO/qLecINIX3LnUUGfq/b11OtzyBUYBJoixmwe9fnPhsY4o9RIK2Ei78aWZwJe7E2e
	Dnhc7bbUajMbxNQ5/7Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5g5-00079y-P8; Wed, 11 Dec 2019 17:21:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5f0-0006Qf-JH
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:20:29 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 7749B81A8;
 Wed, 11 Dec 2019 17:21:04 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 03/16] ARM: OMAP2+: Drop legacy platform data for am3 and am4
 spinlock
Date: Wed, 11 Dec 2019 09:20:01 -0800
Message-Id: <20191211172014.35201-4-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211172014.35201-1-tony@atomide.com>
References: <20191211172014.35201-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092026_669854_000BF318 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vignesh R <vigneshr@ti.com>, Keerthy <j-keerthy@ti.com>,
 Jyri Sarha <jsarha@ti.com>, "Andrew F. Davis" <afd@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, linux-arm-kernel@lists.infradead.org,
 Suman Anna <s-anna@ti.com>, Franklin S Cooper Jr <fcooper@ti.com>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can now probe devices with ti-sysc interconnect driver and dts
data. Let's drop the related platform data and custom ti,hwmods
dts property.

As we're just dropping data, and the early platform data init
is based on the custom ti,hwmods property, we want to drop both
the platform data and ti,hwmods property in a single patch.

Cc: Suman Anna <s-anna@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/am33xx-l4.dtsi              |  1 -
 arch/arm/boot/dts/am437x-l4.dtsi              |  1 -
 .../omap_hwmod_33xx_43xx_common_data.h        |  2 --
 .../omap_hwmod_33xx_43xx_interconnect_data.c  |  8 -----
 .../omap_hwmod_33xx_43xx_ipblock_data.c       | 35 -------------------
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c    |  1 -
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c    |  1 -
 7 files changed, 49 deletions(-)

diff --git a/arch/arm/boot/dts/am33xx-l4.dtsi b/arch/arm/boot/dts/am33xx-l4.dtsi
--- a/arch/arm/boot/dts/am33xx-l4.dtsi
+++ b/arch/arm/boot/dts/am33xx-l4.dtsi
@@ -1407,7 +1407,6 @@ mbox_wkupm3: wkup_m3 {
 
 		target-module@ca000 {			/* 0x480ca000, ap 91 40.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "spinlock";
 			reg = <0xca000 0x4>,
 			      <0xca010 0x4>,
 			      <0xca014 0x4>;
diff --git a/arch/arm/boot/dts/am437x-l4.dtsi b/arch/arm/boot/dts/am437x-l4.dtsi
--- a/arch/arm/boot/dts/am437x-l4.dtsi
+++ b/arch/arm/boot/dts/am437x-l4.dtsi
@@ -1164,7 +1164,6 @@ mbox_wkupm3: wkup_m3 {
 
 		target-module@ca000 {			/* 0x480ca000, ap 77 38.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "spinlock";
 			reg = <0xca000 0x4>,
 			      <0xca010 0x4>,
 			      <0xca014 0x4>;
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_common_data.h b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_common_data.h
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_common_data.h
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_common_data.h
@@ -32,7 +32,6 @@ extern struct omap_hwmod_ocp_if am33xx_l4_per__dcan0;
 extern struct omap_hwmod_ocp_if am33xx_l4_per__dcan1;
 extern struct omap_hwmod_ocp_if am33xx_l4_ls__elm;
 extern struct omap_hwmod_ocp_if am33xx_l3_s__gpmc;
-extern struct omap_hwmod_ocp_if am33xx_l4_ls__spinlock;
 extern struct omap_hwmod_ocp_if am33xx_l4_ls__mcspi0;
 extern struct omap_hwmod_ocp_if am33xx_l4_ls__mcspi1;
 extern struct omap_hwmod_ocp_if am33xx_l4_ls__timer2;
@@ -61,7 +60,6 @@ extern struct omap_hwmod am33xx_gpmc_hwmod;
 extern struct omap_hwmod am33xx_rtc_hwmod;
 extern struct omap_hwmod am33xx_spi0_hwmod;
 extern struct omap_hwmod am33xx_spi1_hwmod;
-extern struct omap_hwmod am33xx_spinlock_hwmod;
 extern struct omap_hwmod am33xx_timer1_hwmod;
 extern struct omap_hwmod am33xx_timer2_hwmod;
 extern struct omap_hwmod am33xx_tpcc_hwmod;
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c
@@ -137,14 +137,6 @@ struct omap_hwmod_ocp_if am33xx_l3_s__gpmc = {
 	.user		= OCP_USER_MPU,
 };
 
-/* l4 ls -> spinlock */
-struct omap_hwmod_ocp_if am33xx_l4_ls__spinlock = {
-	.master		= &am33xx_l4_ls_hwmod,
-	.slave		= &am33xx_spinlock_hwmod,
-	.clk		= "l4ls_gclk",
-	.user		= OCP_USER_MPU,
-};
-
 /* l4 ls -> mcspi0 */
 struct omap_hwmod_ocp_if am33xx_l4_ls__mcspi0 = {
 	.master		= &am33xx_l4_ls_hwmod,
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
@@ -439,39 +439,6 @@ struct omap_hwmod am33xx_spi1_hwmod = {
 	},
 };
 
-/*
- * 'spinlock' class
- * spinlock provides hardware assistance for synchronizing the
- * processes running on multiple processors
- */
-
-static struct omap_hwmod_class_sysconfig am33xx_spinlock_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.syss_offs	= 0x0014,
-	.sysc_flags	= (SYSC_HAS_AUTOIDLE | SYSC_HAS_CLOCKACTIVITY |
-			   SYSC_HAS_ENAWAKEUP | SYSC_HAS_SIDLEMODE |
-			   SYSC_HAS_SOFTRESET | SYSS_HAS_RESET_STATUS),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class am33xx_spinlock_hwmod_class = {
-	.name		= "spinlock",
-	.sysc		= &am33xx_spinlock_sysc,
-};
-
-struct omap_hwmod am33xx_spinlock_hwmod = {
-	.name		= "spinlock",
-	.class		= &am33xx_spinlock_hwmod_class,
-	.clkdm_name	= "l4ls_clkdm",
-	.main_clk	= "l4ls_gclk",
-	.prcm		= {
-		.omap4	= {
-			.modulemode	= MODULEMODE_SWCTRL,
-		},
-	},
-};
 
 /* 'timer 2-7' class */
 static struct omap_hwmod_class_sysconfig am33xx_timer_sysc = {
@@ -612,7 +579,6 @@ static void omap_hwmod_am33xx_clkctrl(void)
 	CLKCTRL(am33xx_elm_hwmod, AM33XX_CM_PER_ELM_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_spi0_hwmod, AM33XX_CM_PER_SPI0_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_spi1_hwmod, AM33XX_CM_PER_SPI1_CLKCTRL_OFFSET);
-	CLKCTRL(am33xx_spinlock_hwmod, AM33XX_CM_PER_SPINLOCK_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_timer2_hwmod, AM33XX_CM_PER_TIMER2_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_smartreflex0_hwmod,
 		AM33XX_CM_WKUP_SMARTREFLEX0_CLKCTRL_OFFSET);
@@ -656,7 +622,6 @@ static void omap_hwmod_am43xx_clkctrl(void)
 	CLKCTRL(am33xx_elm_hwmod, AM43XX_CM_PER_ELM_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_spi0_hwmod, AM43XX_CM_PER_SPI0_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_spi1_hwmod, AM43XX_CM_PER_SPI1_CLKCTRL_OFFSET);
-	CLKCTRL(am33xx_spinlock_hwmod, AM43XX_CM_PER_SPINLOCK_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_timer2_hwmod, AM43XX_CM_PER_TIMER2_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_smartreflex0_hwmod,
 		AM43XX_CM_WKUP_SMARTREFLEX0_CLKCTRL_OFFSET);
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
@@ -381,7 +381,6 @@ static struct omap_hwmod_ocp_if *am33xx_hwmod_ocp_ifs[] __initdata = {
 	&am33xx_l4_per__dcan1,
 	&am33xx_l4_ls__timer2,
 	&am33xx_l3_main__tpcc,
-	&am33xx_l4_ls__spinlock,
 	&am33xx_l4_ls__elm,
 	&am33xx_l3_s__gpmc,
 	&am33xx_l3_main__lcdc,
diff --git a/arch/arm/mach-omap2/omap_hwmod_43xx_data.c b/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
@@ -575,7 +575,6 @@ static struct omap_hwmod_ocp_if *am43xx_hwmod_ocp_ifs[] __initdata = {
 	&am33xx_l4_per__dcan1,
 	&am33xx_l4_ls__timer2,
 	&am33xx_l3_main__tpcc,
-	&am33xx_l4_ls__spinlock,
 	&am33xx_l4_ls__elm,
 	&am33xx_l3_s__gpmc,
 	&am33xx_l4_ls__mcspi0,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

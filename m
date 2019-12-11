Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCCE11BA15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:22:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5IvERuJ5+TmrYnZX3VXnj5ZwDNSNVuvkA4201GvmjWs=; b=jFpPP9O78Y/STK
	FtgRZDLxFx3qFhW5HyJ7yiVy84EzkK2gsQO3I8S+cVCnGRMwZBqrXjLYf2qsbZArsBc1fcFd3dBjC
	3cZQOgM2sUOc59+TZnsYpVvYewpG4WbdJmpXkr7spkFZXpJT4D+ydumyS2urpgtxaJE6QyhT3Te8s
	1wJ0HgWtoHiP15fmd7QwxiI25CnPqeWRKuEqUlfP6irWFRsBhW0BlUMIdkCF3eVC/7Ba8z3vFWQUD
	UMTYFWS9KbbVW+Fin9d/3TfCMlMve4P0ElLBlue3BmxxvivlOcCypRxLvJ9gA6OQHnP9oAt6b0YDE
	xY6rh4yNM0F2oGmuhndQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5gl-0007uA-N5; Wed, 11 Dec 2019 17:22:15 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5f5-0006Qa-0z
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:20:32 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id B87968198;
 Wed, 11 Dec 2019 17:21:02 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 02/16] ARM: OMAP2+: Drop legacy platform data for dra7 epwmss
Date: Wed, 11 Dec 2019 09:20:00 -0800
Message-Id: <20191211172014.35201-3-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211172014.35201-1-tony@atomide.com>
References: <20191211172014.35201-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092031_131222_9355D6FF 
X-CRM114-Status: UNSURE (   7.53  )
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

Cc: Franklin S Cooper Jr <fcooper@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Vignesh R <vigneshr@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/dra7-l4.dtsi            |  3 -
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c | 90 -----------------------
 2 files changed, 93 deletions(-)

diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
--- a/arch/arm/boot/dts/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/dra7-l4.dtsi
@@ -2518,7 +2518,6 @@ atl: atl@0 {
 
 		target-module@3e000 {			/* 0x4843e000, ap 25 30.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "epwmss0";
 			reg = <0x3e000 0x4>,
 			      <0x3e004 0x4>;
 			reg-names = "rev", "sysc";
@@ -2565,7 +2564,6 @@ ehrpwm0: pwm@200 {
 
 		target-module@40000 {			/* 0x48440000, ap 27 38.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "epwmss1";
 			reg = <0x40000 0x4>,
 			      <0x40004 0x4>;
 			reg-names = "rev", "sysc";
@@ -2612,7 +2610,6 @@ ehrpwm1: pwm@200 {
 
 		target-module@42000 {			/* 0x48442000, ap 29 20.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "epwmss2";
 			reg = <0x42000 0x4>,
 			      <0x42004 0x4>;
 			reg-names = "rev", "sysc";
diff --git a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
@@ -324,69 +324,6 @@ static struct omap_hwmod dra7xx_dcan2_hwmod = {
 	},
 };
 
-/* pwmss  */
-static struct omap_hwmod_class_sysconfig dra7xx_epwmss_sysc = {
-	.rev_offs	= 0x0,
-	.sysc_offs	= 0x4,
-	.sysc_flags	= SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET |
-			  SYSC_HAS_RESET_STATUS,
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type2,
-};
-
-/*
- * epwmss class
- */
-static struct omap_hwmod_class dra7xx_epwmss_hwmod_class = {
-	.name		= "epwmss",
-	.sysc		= &dra7xx_epwmss_sysc,
-};
-
-/* epwmss0 */
-static struct omap_hwmod dra7xx_epwmss0_hwmod = {
-	.name		= "epwmss0",
-	.class		= &dra7xx_epwmss_hwmod_class,
-	.clkdm_name	= "l4per2_clkdm",
-	.main_clk	= "l4_root_clk_div",
-	.prcm		= {
-		.omap4	= {
-			.modulemode	= MODULEMODE_SWCTRL,
-			.clkctrl_offs	= DRA7XX_CM_L4PER2_PWMSS1_CLKCTRL_OFFSET,
-			.context_offs	= DRA7XX_RM_L4PER2_PWMSS1_CONTEXT_OFFSET,
-		},
-	},
-};
-
-/* epwmss1 */
-static struct omap_hwmod dra7xx_epwmss1_hwmod = {
-	.name		= "epwmss1",
-	.class		= &dra7xx_epwmss_hwmod_class,
-	.clkdm_name	= "l4per2_clkdm",
-	.main_clk	= "l4_root_clk_div",
-	.prcm		= {
-		.omap4	= {
-			.modulemode	= MODULEMODE_SWCTRL,
-			.clkctrl_offs	= DRA7XX_CM_L4PER2_PWMSS2_CLKCTRL_OFFSET,
-			.context_offs	= DRA7XX_RM_L4PER2_PWMSS2_CONTEXT_OFFSET,
-		},
-	},
-};
-
-/* epwmss2 */
-static struct omap_hwmod dra7xx_epwmss2_hwmod = {
-	.name		= "epwmss2",
-	.class		= &dra7xx_epwmss_hwmod_class,
-	.clkdm_name	= "l4per2_clkdm",
-	.main_clk	= "l4_root_clk_div",
-	.prcm		= {
-		.omap4	= {
-			.modulemode	= MODULEMODE_SWCTRL,
-			.clkctrl_offs	= DRA7XX_CM_L4PER2_PWMSS3_CLKCTRL_OFFSET,
-			.context_offs	= DRA7XX_RM_L4PER2_PWMSS3_CONTEXT_OFFSET,
-		},
-	},
-};
-
 /*
  * 'dma' class
  *
@@ -1703,30 +1640,6 @@ static struct omap_hwmod_ocp_if dra7xx_l4_per2__vcp2 = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_per2 -> epwmss0 */
-static struct omap_hwmod_ocp_if dra7xx_l4_per2__epwmss0 = {
-	.master		= &dra7xx_l4_per2_hwmod,
-	.slave		= &dra7xx_epwmss0_hwmod,
-	.clk		= "l4_root_clk_div",
-	.user		= OCP_USER_MPU,
-};
-
-/* l4_per2 -> epwmss1 */
-static struct omap_hwmod_ocp_if dra7xx_l4_per2__epwmss1 = {
-	.master		= &dra7xx_l4_per2_hwmod,
-	.slave		= &dra7xx_epwmss1_hwmod,
-	.clk		= "l4_root_clk_div",
-	.user		= OCP_USER_MPU,
-};
-
-/* l4_per2 -> epwmss2 */
-static struct omap_hwmod_ocp_if dra7xx_l4_per2__epwmss2 = {
-	.master		= &dra7xx_l4_per2_hwmod,
-	.slave		= &dra7xx_epwmss2_hwmod,
-	.clk		= "l4_root_clk_div",
-	.user		= OCP_USER_MPU,
-};
-
 static struct omap_hwmod_ocp_if *dra7xx_hwmod_ocp_ifs[] __initdata = {
 	&dra7xx_l3_main_1__dmm,
 	&dra7xx_l3_main_2__l3_instr,
@@ -1777,9 +1690,6 @@ static struct omap_hwmod_ocp_if *dra7xx_hwmod_ocp_ifs[] __initdata = {
 	&dra7xx_l4_per2__vcp1,
 	&dra7xx_l3_main_1__vcp2,
 	&dra7xx_l4_per2__vcp2,
-	&dra7xx_l4_per2__epwmss0,
-	&dra7xx_l4_per2__epwmss1,
-	&dra7xx_l4_per2__epwmss2,
 	NULL,
 };
 
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

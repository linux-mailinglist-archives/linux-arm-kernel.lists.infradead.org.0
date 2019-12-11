Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8547F11BCA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:13:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrEILaIrGFCFiVmRrVvElYHhMSqTFgsg6EdM4BrZpXM=; b=BiEaTEs2QFr0Z6
	OMFQMiYm4dfBuTFzukSsKyrwYIpJBH7H9QOobkutwxaN84lTEszLdyetSFKgVEWsEy3oYjyU7GN66
	/OYfgWVQljo8J5yKl8+rhR+pPfBgxS+kT0ZUL6Z3HdMVtLyZZcXGWR0CGiIdPgy3hVVzmz2pLJzRJ
	lUXw5VCD3e+/jMaCb6RWj2eKY06z3HaP3TCmKk82Vu99K9ddiNj0u4fI2v7eXRHX3yflGm3zq/sT+
	AVD5X/0LQzWUKa7DmBwzH9cAAEmZZf9WaNwWF5Y5sUj0SBXhy5zGIZJUI16ci0kgmY3cnvRd2hrBh
	RN69OOLyVlndZOuOC60A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7QC-0003Y8-9o; Wed, 11 Dec 2019 19:13:16 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7PD-0002lf-7i
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:12:16 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id AE9B280FA;
 Wed, 11 Dec 2019 19:12:53 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 03/13] ARM: OMAP2+: Drop legacy platform data for omap5 ocp2scp
Date: Wed, 11 Dec 2019 11:11:56 -0800
Message-Id: <20191211191206.12190-4-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211191206.12190-1-tony@atomide.com>
References: <20191211191206.12190-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_111215_324346_D864B555 
X-CRM114-Status: UNSURE (   7.82  )
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
Cc: Keerthy <j-keerthy@ti.com>, Sebastian Reichel <sre@kernel.org>,
 Benoit Parrot <bparrot@ti.com>, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
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

Cc: Keerthy <j-keerthy@ti.com>
Cc: Roger Quadros <rogerq@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap5-l4.dtsi            |  2 -
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c | 75 ----------------------
 2 files changed, 77 deletions(-)

diff --git a/arch/arm/boot/dts/omap5-l4.dtsi b/arch/arm/boot/dts/omap5-l4.dtsi
--- a/arch/arm/boot/dts/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/omap5-l4.dtsi
@@ -430,7 +430,6 @@ segment@80000 {					/* 0x4a080000 */
 
 		target-module@0 {			/* 0x4a080000, ap 83 28.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "ocp2scp1";
 			reg = <0x0 0x4>,
 			      <0x10 0x4>,
 			      <0x14 0x4>;
@@ -488,7 +487,6 @@ usb3_phy: usb3phy@4400 {
 
 		target-module@10000 {			/* 0x4a090000, ap 89 36.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "ocp2scp3";
 			reg = <0x10000 0x4>,
 			      <0x10010 0x4>,
 			      <0x10014 0x4>;
diff --git a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
@@ -685,42 +685,6 @@ static struct omap_hwmod omap54xx_mpu_hwmod = {
 };
 
 
-/*
- * 'ocp2scp' class
- * bridge to transform ocp interface protocol to scp (serial control port)
- * protocol
- */
-
-static struct omap_hwmod_class_sysconfig omap54xx_ocp2scp_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.syss_offs	= 0x0014,
-	.sysc_flags	= (SYSC_HAS_AUTOIDLE | SYSC_HAS_SIDLEMODE |
-			SYSC_HAS_SOFTRESET | SYSS_HAS_RESET_STATUS),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class omap54xx_ocp2scp_hwmod_class = {
-	.name	= "ocp2scp",
-	.sysc	= &omap54xx_ocp2scp_sysc,
-};
-
-/* ocp2scp1 */
-static struct omap_hwmod omap54xx_ocp2scp1_hwmod = {
-	.name		= "ocp2scp1",
-	.class		= &omap54xx_ocp2scp_hwmod_class,
-	.clkdm_name	= "l3init_clkdm",
-	.main_clk	= "l4_root_clk_div",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP54XX_CM_L3INIT_OCP2SCP1_CLKCTRL_OFFSET,
-			.context_offs = OMAP54XX_RM_L3INIT_OCP2SCP1_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_HWCTRL,
-		},
-	},
-};
-
 /*
  * 'timer' class
  * general purpose timer module with accurate 1ms tick
@@ -910,35 +874,6 @@ static struct omap_hwmod omap54xx_usb_otg_ss_hwmod = {
 	.opt_clks_cnt	= ARRAY_SIZE(usb_otg_ss_opt_clks),
 };
 
-
-/*
- * 'ocp2scp' class
- * bridge to transform ocp interface protocol to scp (serial control port)
- * protocol
- */
-/* ocp2scp3 */
-static struct omap_hwmod omap54xx_ocp2scp3_hwmod;
-/* l4_cfg -> ocp2scp3 */
-static struct omap_hwmod_ocp_if omap54xx_l4_cfg__ocp2scp3 = {
-	.master		= &omap54xx_l4_cfg_hwmod,
-	.slave		= &omap54xx_ocp2scp3_hwmod,
-	.clk		= "l4_root_clk_div",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-static struct omap_hwmod omap54xx_ocp2scp3_hwmod = {
-	.name		= "ocp2scp3",
-	.class		= &omap54xx_ocp2scp_hwmod_class,
-	.clkdm_name	= "l3init_clkdm",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP54XX_CM_L3INIT_OCP2SCP3_CLKCTRL_OFFSET,
-			.context_offs = OMAP54XX_RM_L3INIT_OCP2SCP3_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_HWCTRL,
-		},
-	},
-};
-
 /*
  * 'sata' class
  * sata:  serial ata interface  gen2 compliant   ( 1 rx/ 1 tx)
@@ -1228,14 +1163,6 @@ static struct omap_hwmod_ocp_if omap54xx_l4_cfg__mpu = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_cfg -> ocp2scp1 */
-static struct omap_hwmod_ocp_if omap54xx_l4_cfg__ocp2scp1 = {
-	.master		= &omap54xx_l4_cfg_hwmod,
-	.slave		= &omap54xx_ocp2scp1_hwmod,
-	.clk		= "l4_root_clk_div",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_wkup -> timer1 */
 static struct omap_hwmod_ocp_if omap54xx_l4_wkup__timer1 = {
 	.master		= &omap54xx_l4_wkup_hwmod,
@@ -1299,12 +1226,10 @@ static struct omap_hwmod_ocp_if *omap54xx_hwmod_ocp_ifs[] __initdata = {
 	&omap54xx_l3_main_2__mmu_ipu,
 	&omap54xx_l4_wkup__kbd,
 	&omap54xx_l4_cfg__mpu,
-	&omap54xx_l4_cfg__ocp2scp1,
 	&omap54xx_l4_wkup__timer1,
 	&omap54xx_l4_cfg__usb_host_hs,
 	&omap54xx_l4_cfg__usb_tll_hs,
 	&omap54xx_l4_cfg__usb_otg_ss,
-	&omap54xx_l4_cfg__ocp2scp3,
 	&omap54xx_l4_cfg__sata,
 	NULL,
 };
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

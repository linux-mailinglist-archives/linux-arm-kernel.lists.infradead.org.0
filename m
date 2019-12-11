Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B409D11BA23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:23:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkObPdC3CHKp+Qa/IVGIKRy3z6Yecwnov3m7MPGafyk=; b=D2S+dxn9a4AFr4
	kJSkE8U4M7OX5UOuSNBR/PTLG8c3+TdLE782GDW8Nz2u+px2MUnMOVCGAmu4uAg1JmD2SBs4C8+Lv
	5l7l+AO/Y9UkOAWY0IjkCCYHfL+5hxDX6krgoWg36ymvxsp7vs5bN/t748Lij913VtH6DxBYyblqd
	+jjzBxaIXNPQzJ/ic5HRSksu2xDm4bQJF49vBKRvH5ogyn1X3hU3fLGVIOAuie5yaZj3k086BgrUP
	QG5BD875pp28Dvbyoidvc/znGmUYpXdjDroVXi1ymV9ou1OHzFInDzY1qEmb/DUXx9due1yXuq8MN
	nTpwu1aDkQ8jLpjMGUUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5hp-0000TG-UO; Wed, 11 Dec 2019 17:23:21 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5fC-0006ae-PQ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:20:40 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id B53FB81BD;
 Wed, 11 Dec 2019 17:21:16 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 10/16] ARM: OMAP2+: Drop legacy platform data for am3 adc_tsc
Date: Wed, 11 Dec 2019 09:20:08 -0800
Message-Id: <20191211172014.35201-11-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211172014.35201-1-tony@atomide.com>
References: <20191211172014.35201-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092038_922759_29AEC727 
X-CRM114-Status: UNSURE (   7.49  )
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
 Jyri Sarha <jsarha@ti.com>, "Andrew F . Davis" <afd@ti.com>,
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

Cc: Andrew F. Davis <afd@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Vignesh R <vigneshr@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/am33xx-l4.dtsi           |  1 -
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c | 39 ----------------------
 2 files changed, 40 deletions(-)

diff --git a/arch/arm/boot/dts/am33xx-l4.dtsi b/arch/arm/boot/dts/am33xx-l4.dtsi
--- a/arch/arm/boot/dts/am33xx-l4.dtsi
+++ b/arch/arm/boot/dts/am33xx-l4.dtsi
@@ -225,7 +225,6 @@ i2c0: i2c@0 {
 
 		target-module@d000 {			/* 0x44e0d000, ap 20 38.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "adc_tsc";
 			reg = <0xd000 0x4>,
 			      <0xd010 0x4>;
 			reg-names = "rev", "sysc";
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
@@ -81,36 +81,6 @@ static struct omap_hwmod am33xx_wkup_m3_hwmod = {
 	.rst_lines_cnt	= ARRAY_SIZE(am33xx_wkup_m3_resets),
 };
 
-/*
- * 'adc/tsc' class
- * TouchScreen Controller (Anolog-To-Digital Converter)
- */
-static struct omap_hwmod_class_sysconfig am33xx_adc_tsc_sysc = {
-	.rev_offs	= 0x00,
-	.sysc_offs	= 0x10,
-	.sysc_flags	= SYSC_HAS_SIDLEMODE,
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-			SIDLE_SMART_WKUP),
-	.sysc_fields	= &omap_hwmod_sysc_type2,
-};
-
-static struct omap_hwmod_class am33xx_adc_tsc_hwmod_class = {
-	.name		= "adc_tsc",
-	.sysc		= &am33xx_adc_tsc_sysc,
-};
-
-static struct omap_hwmod am33xx_adc_tsc_hwmod = {
-	.name		= "adc_tsc",
-	.class		= &am33xx_adc_tsc_hwmod_class,
-	.clkdm_name	= "l4_wkup_clkdm",
-	.main_clk	= "adc_tsc_fck",
-	.prcm		= {
-		.omap4	= {
-			.clkctrl_offs	= AM33XX_CM_WKUP_ADC_TSC_CLKCTRL_OFFSET,
-			.modulemode	= MODULEMODE_SWCTRL,
-		},
-	},
-};
 
 /*
  * Modules omap_hwmod structures
@@ -331,14 +301,6 @@ static struct omap_hwmod_ocp_if am33xx_l4_wkup__control = {
 	.user		= OCP_USER_MPU,
 };
 
-/* L4 WKUP -> ADC_TSC */
-static struct omap_hwmod_ocp_if am33xx_l4_wkup__adc_tsc = {
-	.master		= &am33xx_l4_wkup_hwmod,
-	.slave		= &am33xx_adc_tsc_hwmod,
-	.clk		= "dpll_core_m4_div2_ck",
-	.user		= OCP_USER_MPU,
-};
-
 static struct omap_hwmod_ocp_if am33xx_l3_main__lcdc = {
 	.master		= &am33xx_l3_main_hwmod,
 	.slave		= &am33xx_lcdc_hwmod,
@@ -375,7 +337,6 @@ static struct omap_hwmod_ocp_if *am33xx_hwmod_ocp_ifs[] __initdata = {
 	&am33xx_l4_wkup__smartreflex1,
 	&am33xx_l4_wkup__timer1,
 	&am33xx_l4_wkup__rtc,
-	&am33xx_l4_wkup__adc_tsc,
 	&am33xx_l4_hs__pruss,
 	&am33xx_l4_ls__timer2,
 	&am33xx_l3_main__tpcc,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

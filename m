Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E70611BA38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:25:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lrCELZvRhKEpXKD1FNuKcWvf06cOpKnAz90O3CPvXnA=; b=hyvTbIBV4gj8Xq
	mMGJa1zqY1l2uPQrr3xd+4Odr6q0xFucctVArNd0OKVKgD3yQniKeObiZwKpELLTgtKqWiUhIclk1
	6SFb90NmfAnER8k4CR+wV7H+c2XKh2jxEgBTkV3Hw89ZNz8AkiO27Z85D+Px4o7OppEQ6Bk6lTw5/
	SmuImtRz+q6X/999YeJe/4xIPtaupROmyQWx8IaOj2iWbttzScvB5dlIIq1XJAb6uJAj/DM1VTmGL
	exqIz6VapMouwo4wXXjAeg7DT3iCBZq5XC0LwXBOUWPyxv52xZP3NxAwkJ8iVvreAFgEXYI1EEGx6
	QploLBg+vNwidnLt4ihw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5jM-00021E-C0; Wed, 11 Dec 2019 17:24:56 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5fM-0006h5-Id
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:20:51 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 1069E80FA;
 Wed, 11 Dec 2019 17:21:26 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 16/16] ARM: OMAP2+: Drop legacy platform data for am3 lcdc
Date: Wed, 11 Dec 2019 09:20:14 -0800
Message-Id: <20191211172014.35201-17-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211172014.35201-1-tony@atomide.com>
References: <20191211172014.35201-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092049_577024_0CDB5699 
X-CRM114-Status: UNSURE (   7.80  )
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

Cc: Keerthy <j-keerthy@ti.com>
Cc: Jyri Sarha <jsarha@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/am33xx-l4.dtsi           |  1 -
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c | 36 ----------------------
 2 files changed, 37 deletions(-)

diff --git a/arch/arm/boot/dts/am33xx-l4.dtsi b/arch/arm/boot/dts/am33xx-l4.dtsi
--- a/arch/arm/boot/dts/am33xx-l4.dtsi
+++ b/arch/arm/boot/dts/am33xx-l4.dtsi
@@ -2006,7 +2006,6 @@ ehrpwm2: pwm@200 {
 
 		target-module@e000 {			/* 0x4830e000, ap 72 4a.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "lcdc";
 			reg = <0xe000 0x4>,
 			      <0xe054 0x4>;
 			reg-names = "rev", "sysc";
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
@@ -196,34 +196,6 @@ static struct omap_hwmod am33xx_control_hwmod = {
 	},
 };
 
-/* lcdc */
-static struct omap_hwmod_class_sysconfig lcdc_sysc = {
-	.rev_offs	= 0x0,
-	.sysc_offs	= 0x54,
-	.sysc_flags	= SYSC_HAS_SIDLEMODE | SYSC_HAS_MIDLEMODE,
-	.idlemodes	= SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-			  MSTANDBY_FORCE | MSTANDBY_NO | MSTANDBY_SMART,
-	.sysc_fields	= &omap_hwmod_sysc_type2,
-};
-
-static struct omap_hwmod_class am33xx_lcdc_hwmod_class = {
-	.name		= "lcdc",
-	.sysc		= &lcdc_sysc,
-};
-
-static struct omap_hwmod am33xx_lcdc_hwmod = {
-	.name		= "lcdc",
-	.class		= &am33xx_lcdc_hwmod_class,
-	.clkdm_name	= "lcdc_clkdm",
-	.flags		= HWMOD_SWSUP_SIDLE | HWMOD_SWSUP_MSTANDBY,
-	.main_clk	= "lcd_gclk",
-	.prcm		= {
-		.omap4	= {
-			.clkctrl_offs	= AM33XX_CM_PER_LCDC_CLKCTRL_OFFSET,
-			.modulemode	= MODULEMODE_SWCTRL,
-		},
-	},
-};
 
 /*
  * Interfaces
@@ -301,13 +273,6 @@ static struct omap_hwmod_ocp_if am33xx_l4_wkup__control = {
 	.user		= OCP_USER_MPU,
 };
 
-static struct omap_hwmod_ocp_if am33xx_l3_main__lcdc = {
-	.master		= &am33xx_l3_main_hwmod,
-	.slave		= &am33xx_lcdc_hwmod,
-	.clk		= "dpll_core_m4_ck",
-	.user		= OCP_USER_MPU,
-};
-
 /* l4 wkup -> timer1 */
 static struct omap_hwmod_ocp_if am33xx_l4_wkup__timer1 = {
 	.master		= &am33xx_l4_wkup_hwmod,
@@ -340,7 +305,6 @@ static struct omap_hwmod_ocp_if *am33xx_hwmod_ocp_ifs[] __initdata = {
 	&am33xx_l4_ls__timer2,
 	&am33xx_l3_main__tpcc,
 	&am33xx_l3_s__gpmc,
-	&am33xx_l3_main__lcdc,
 	&am33xx_l3_main__tptc0,
 	&am33xx_l3_main__tptc1,
 	&am33xx_l3_main__tptc2,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

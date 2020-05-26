Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED1F1C97AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmG++oNi/wNEqqTdcMjPG6lCldINSmXKofxFL+Z0P6c=; b=H3enGlkMQg4KAK
	RV/isNVk3vcJYo9jpwfOneqoz9ceJOT3DzgWKgL2gtPSojB2GtVHziw+XwOUSVlQnwfIt/KkuoJFA
	Si/ySQVqV3FL03bzeEiVJtQYXx3NxilMwohQm/7BZtzMvSE23FL6Sti2gESe5E12GEYn0Re97JWRA
	8piEJypqSs86gTVRi3OkuP2yAprC0e5s6ApGcgpl5YnTACssX+ZGFKk3gXRfX2ZnuspZmvTIoVtnX
	h+npC1MEZY3sycYX1yMCl2L0asP6xFqPqC//iAbpMmS6gA3xbL9jSOPQkLeVu9bxIo2Nik5XIoHlm
	rPxOs5WkqVRvoM+h5ciQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkHi-0006Y6-AF; Thu, 07 May 2020 17:26:10 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkFY-0002KR-Q9
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:23:58 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id BD3A3817C;
 Thu,  7 May 2020 17:24:43 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 07/14] ARM: dts: Configure system timers for am437x
Date: Thu,  7 May 2020 10:23:23 -0700
Message-Id: <20200507172330.18679-8-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200507172330.18679-1-tony@atomide.com>
References: <20200507172330.18679-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102356_896116_AD4E00FE 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Rob Herring <robh@kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>,
 Keerthy <j-keerthy@ti.com>, Michael Turquette <mturquette@baylibre.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Brian Hutchinson <b.hutchman@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can now init system timers using the dmtimer and 32k counter
based on only devicetree data and drivers/clocksource timers.
Let's configure the clocksource and clockevent, and drop the old
unused platform data.

As we're just dropping platform data, and the early platform data
init is based on the custom ti,hwmods property, we want to drop
both the platform data and ti,hwmods property in a single patch.

Since the dmtimer can use both 32k clock and system clock as the
source, let's also configure the SoC specific default values. The
board specific dts files can reconfigure these with assigned-clocks
and assigned-clock-parents as needed.

Cc: devicetree@vger.kernel.org
Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/am4372.dtsi                 | 20 +++++++
 arch/arm/boot/dts/am437x-l4.dtsi              |  7 +--
 arch/arm/mach-omap2/board-generic.c           |  2 +-
 .../omap_hwmod_33xx_43xx_common_data.h        |  2 -
 .../omap_hwmod_33xx_43xx_interconnect_data.c  |  8 ---
 .../omap_hwmod_33xx_43xx_ipblock_data.c       | 60 -------------------
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c    | 45 --------------
 7 files changed, 23 insertions(+), 121 deletions(-)

diff --git a/arch/arm/boot/dts/am4372.dtsi b/arch/arm/boot/dts/am4372.dtsi
--- a/arch/arm/boot/dts/am4372.dtsi
+++ b/arch/arm/boot/dts/am4372.dtsi
@@ -553,3 +553,23 @@ prm_device: prm@4000 {
 		#reset-cells = <1>;
 	};
 };
+
+/* Preferred always-on timer for clocksource */
+&timer1_target {
+	ti,no-reset-on-init;
+	ti,no-idle;
+	timer@0 {
+		assigned-clocks = <&timer1_fck>;
+		assigned-clock-parents = <&sys_clkin_ck>;
+	};
+};
+
+/* Preferred timer for clockevent */
+&timer2_target {
+	ti,no-reset-on-init;
+	ti,no-idle;
+	timer@0 {
+		assigned-clocks = <&timer2_fck>;
+		assigned-clock-parents = <&sys_clkin_ck>;
+	};
+};
diff --git a/arch/arm/boot/dts/am437x-l4.dtsi b/arch/arm/boot/dts/am437x-l4.dtsi
--- a/arch/arm/boot/dts/am437x-l4.dtsi
+++ b/arch/arm/boot/dts/am437x-l4.dtsi
@@ -328,9 +328,8 @@ scm_clockdomains: clockdomains {
 			};
 		};
 
-		target-module@31000 {			/* 0x44e31000, ap 24 40.0 */
+		timer1_target: target-module@31000 {	/* 0x44e31000, ap 24 40.0 */
 			compatible = "ti,sysc-omap2-timer", "ti,sysc";
-			ti,hwmods = "timer1";
 			reg = <0x31000 0x4>,
 			      <0x31010 0x4>,
 			      <0x31014 0x4>;
@@ -450,7 +449,6 @@ target-module@40000 {			/* 0x44e40000, ap 36 68.0 */
 
 		target-module@86000 {			/* 0x44e86000, ap 40 70.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "counter_32k";
 			reg = <0x86000 0x4>,
 			      <0x86004 0x4>;
 			reg-names = "rev", "sysc";
@@ -868,9 +866,8 @@ mcasp1: mcasp@0 {
 			};
 		};
 
-		target-module@40000 {			/* 0x48040000, ap 18 1e.0 */
+		timer2_target: target-module@40000 {	/* 0x48040000, ap 18 1e.0 */
 			compatible = "ti,sysc-omap4-timer", "ti,sysc";
-			ti,hwmods = "timer2";
 			reg = <0x40000 0x4>,
 			      <0x40010 0x4>,
 			      <0x40014 0x4>;
diff --git a/arch/arm/mach-omap2/board-generic.c b/arch/arm/mach-omap2/board-generic.c
--- a/arch/arm/mach-omap2/board-generic.c
+++ b/arch/arm/mach-omap2/board-generic.c
@@ -308,7 +308,7 @@ DT_MACHINE_START(AM43_DT, "Generic AM43 (Flattened Device Tree)")
 	.init_late	= am43xx_init_late,
 	.init_irq	= omap_gic_of_init,
 	.init_machine	= omap_generic_init,
-	.init_time	= omap3_gptimer_timer_init,
+	.init_time	= omap_init_time_of,
 	.dt_compat	= am43_boards_compat,
 	.restart	= omap44xx_restart,
 MACHINE_END
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_common_data.h b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_common_data.h
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_common_data.h
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_common_data.h
@@ -44,8 +44,6 @@ extern struct omap_hwmod am33xx_smartreflex0_hwmod;
 extern struct omap_hwmod am33xx_smartreflex1_hwmod;
 extern struct omap_hwmod am33xx_gpmc_hwmod;
 extern struct omap_hwmod am33xx_rtc_hwmod;
-extern struct omap_hwmod am33xx_timer1_hwmod;
-extern struct omap_hwmod am33xx_timer2_hwmod;
 
 extern struct omap_hwmod_class am33xx_emif_hwmod_class;
 extern struct omap_hwmod_class am33xx_l4_hwmod_class;
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c
@@ -106,14 +106,6 @@ struct omap_hwmod_ocp_if am33xx_l3_s__gpmc = {
 	.user		= OCP_USER_MPU,
 };
 
-/* l4 per -> timer2 */
-struct omap_hwmod_ocp_if am33xx_l4_ls__timer2 = {
-	.master		= &am33xx_l4_ls_hwmod,
-	.slave		= &am33xx_timer2_hwmod,
-	.clk		= "l4ls_gclk",
-	.user		= OCP_USER_MPU,
-};
-
 /* l3 main -> ocmc */
 struct omap_hwmod_ocp_if am33xx_l3_main__ocmc = {
 	.master		= &am33xx_l3_main_hwmod,
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
@@ -307,64 +307,6 @@ struct omap_hwmod am33xx_rtc_hwmod = {
 	},
 };
 
-/* 'timer 2-7' class */
-static struct omap_hwmod_class_sysconfig am33xx_timer_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.syss_offs	= 0x0014,
-	.sysc_flags	= SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET |
-			  SYSC_HAS_RESET_STATUS,
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-			  SIDLE_SMART_WKUP),
-	.sysc_fields	= &omap_hwmod_sysc_type2,
-};
-
-struct omap_hwmod_class am33xx_timer_hwmod_class = {
-	.name		= "timer",
-	.sysc		= &am33xx_timer_sysc,
-};
-
-/* timer1 1ms */
-static struct omap_hwmod_class_sysconfig am33xx_timer1ms_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.syss_offs	= 0x0014,
-	.sysc_flags	= (SYSC_HAS_CLOCKACTIVITY | SYSC_HAS_SIDLEMODE |
-			SYSC_HAS_SOFTRESET | SYSC_HAS_AUTOIDLE |
-			SYSS_HAS_RESET_STATUS),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class am33xx_timer1ms_hwmod_class = {
-	.name		= "timer",
-	.sysc		= &am33xx_timer1ms_sysc,
-};
-
-struct omap_hwmod am33xx_timer1_hwmod = {
-	.name		= "timer1",
-	.class		= &am33xx_timer1ms_hwmod_class,
-	.clkdm_name	= "l4_wkup_clkdm",
-	.main_clk	= "timer1_fck",
-	.prcm		= {
-		.omap4	= {
-			.modulemode	= MODULEMODE_SWCTRL,
-		},
-	},
-};
-
-struct omap_hwmod am33xx_timer2_hwmod = {
-	.name		= "timer2",
-	.class		= &am33xx_timer_hwmod_class,
-	.clkdm_name	= "l4ls_clkdm",
-	.main_clk	= "timer2_fck",
-	.prcm		= {
-		.omap4	= {
-			.modulemode	= MODULEMODE_SWCTRL,
-		},
-	},
-};
-
 static void omap_hwmod_am33xx_clkctrl(void)
 {
 	CLKCTRL(am33xx_smartreflex0_hwmod,
@@ -397,12 +339,10 @@ void omap_hwmod_am33xx_reg(void)
 
 static void omap_hwmod_am43xx_clkctrl(void)
 {
-	CLKCTRL(am33xx_timer2_hwmod, AM43XX_CM_PER_TIMER2_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_smartreflex0_hwmod,
 		AM43XX_CM_WKUP_SMARTREFLEX0_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_smartreflex1_hwmod,
 		AM43XX_CM_WKUP_SMARTREFLEX1_CLKCTRL_OFFSET);
-	CLKCTRL(am33xx_timer1_hwmod, AM43XX_CM_WKUP_TIMER1_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_rtc_hwmod, AM43XX_CM_RTC_RTC_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_gpmc_hwmod, AM43XX_CM_PER_GPMC_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_l4_ls_hwmod, AM43XX_CM_PER_L4LS_CLKCTRL_OFFSET);
diff --git a/arch/arm/mach-omap2/omap_hwmod_43xx_data.c b/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
@@ -85,34 +85,6 @@ static struct omap_hwmod am43xx_control_hwmod = {
 	},
 };
 
-static struct omap_hwmod_class_sysconfig am43xx_synctimer_sysc = {
-	.rev_offs	= 0x0,
-	.sysc_offs	= 0x4,
-	.sysc_flags	= SYSC_HAS_SIDLEMODE,
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class am43xx_synctimer_hwmod_class = {
-	.name	= "synctimer",
-	.sysc	= &am43xx_synctimer_sysc,
-};
-
-static struct omap_hwmod am43xx_synctimer_hwmod = {
-	.name		= "counter_32k",
-	.class		= &am43xx_synctimer_hwmod_class,
-	.clkdm_name	= "l4_wkup_aon_clkdm",
-	.flags		= HWMOD_SWSUP_SIDLE,
-	.main_clk	= "synctimer_32kclk",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = AM43XX_CM_WKUP_SYNCTIMER_CLKCTRL_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
-
 static struct omap_hwmod_class_sysconfig am43xx_usb_otg_ss_sysc = {
 	.rev_offs	= 0x0000,
 	.sysc_offs	= 0x0010,
@@ -206,20 +178,6 @@ static struct omap_hwmod_ocp_if am43xx_l4_wkup__control = {
 	.user		= OCP_USER_MPU,
 };
 
-static struct omap_hwmod_ocp_if am43xx_l4_wkup__timer1 = {
-	.master		= &am33xx_l4_wkup_hwmod,
-	.slave		= &am33xx_timer1_hwmod,
-	.clk		= "sys_clkin_ck",
-	.user		= OCP_USER_MPU,
-};
-
-static struct omap_hwmod_ocp_if am33xx_l4_wkup__synctimer = {
-	.master		= &am33xx_l4_wkup_hwmod,
-	.slave		= &am43xx_synctimer_hwmod,
-	.clk		= "sys_clkin_ck",
-	.user		= OCP_USER_MPU,
-};
-
 static struct omap_hwmod_ocp_if am43xx_l3_s__usbotgss0 = {
 	.master         = &am33xx_l3_s_hwmod,
 	.slave          = &am43xx_usb_otg_ss0_hwmod,
@@ -235,7 +193,6 @@ static struct omap_hwmod_ocp_if am43xx_l3_s__usbotgss1 = {
 };
 
 static struct omap_hwmod_ocp_if *am43xx_hwmod_ocp_ifs[] __initdata = {
-	&am33xx_l4_wkup__synctimer,
 	&am33xx_mpu__l3_main,
 	&am33xx_mpu__prcm,
 	&am33xx_l3_s__l4_ls,
@@ -252,8 +209,6 @@ static struct omap_hwmod_ocp_if *am43xx_hwmod_ocp_ifs[] __initdata = {
 	&am43xx_l4_wkup__control,
 	&am43xx_l4_wkup__smartreflex0,
 	&am43xx_l4_wkup__smartreflex1,
-	&am43xx_l4_wkup__timer1,
-	&am33xx_l4_ls__timer2,
 	&am33xx_l3_s__gpmc,
 	&am33xx_l3_main__ocmc,
 	&am43xx_l3_s__usbotgss0,
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

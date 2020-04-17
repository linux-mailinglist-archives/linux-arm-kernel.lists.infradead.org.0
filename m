Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84661AE2E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TwfBK8a0qkm9BmdUj9PT9nyqXdYWak4/4cARGBARHLw=; b=p9J8I5fBMFKNO5
	bkyfMBBajqrqtvc20yCq6VTKLlNgwsF7La/h9zxZccIq7G4DDGYoBiReum6d++vnn1SONJiOzCcPa
	S97GbQRSZQZNic6wojOGAKBvCDbrcOOxXw0RESXoP1Q8j3Gs+F/ObFcQkYvWeNlmuHjM3JwCeTEu0
	XPGDp+4b/6rO7C4QcMjnwMsF4bzLDHITTHxidVlKhQZH0T8inyW4xPRrCFI/6QTl/mbKBPABIJWZf
	VZBECb2wgi4wyquvgtwziw/Y64JY0Y+DFuueHkuy7lloEbjYJDmyF8aegfzCMXrcokrq/bJHSl0hy
	CaWVwQnI35SLgaiF1VSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUJw-0006KC-TH; Fri, 17 Apr 2020 16:58:28 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUHY-0004QG-5R
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:56:04 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 97DC38160;
 Fri, 17 Apr 2020 16:56:46 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 09/14] ARM: dts: Configure system timers for omap5 and dra7
Date: Fri, 17 Apr 2020 09:55:14 -0700
Message-Id: <20200417165519.4979-10-tony@atomide.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417165519.4979-1-tony@atomide.com>
References: <20200417165519.4979-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_095600_304112_A105C49A 
X-CRM114-Status: GOOD (  13.63  )
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Andreas Kemnade <andreas@kemnade.info>, Keerthy <j-keerthy@ti.com>,
 Thomas Gleixner <tglx@linutronix.de>, Adam Ford <aford173@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

Note that similar to omap_init_time_of(), we now need to call
omap_clk_init() also from omap5_realtime_timer_init().

Cc: devicetree@vger.kernel.org
Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/dra7-l4.dtsi             |   5 -
 arch/arm/boot/dts/dra7.dtsi                |   6 +
 arch/arm/boot/dts/omap5-l4.dtsi            |   2 -
 arch/arm/boot/dts/omap5.dtsi               |   6 +
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c |  89 -----------
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c  | 176 ---------------------
 arch/arm/mach-omap2/timer.c                |  17 +-
 7 files changed, 13 insertions(+), 288 deletions(-)

diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
--- a/arch/arm/boot/dts/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/dra7-l4.dtsi
@@ -1143,7 +1143,6 @@ uart3: serial@0 {
 
 		target-module@32000 {			/* 0x48032000, ap 5 3e.0 */
 			compatible = "ti,sysc-omap4-timer", "ti,sysc";
-			ti,hwmods = "timer2";
 			reg = <0x32000 0x4>,
 			      <0x32010 0x4>;
 			reg-names = "rev", "sysc";
@@ -1171,7 +1170,6 @@ timer2: timer@0 {
 
 		target-module@34000 {			/* 0x48034000, ap 7 46.0 */
 			compatible = "ti,sysc-omap4-timer", "ti,sysc";
-			ti,hwmods = "timer3";
 			reg = <0x34000 0x4>,
 			      <0x34010 0x4>;
 			reg-names = "rev", "sysc";
@@ -1199,7 +1197,6 @@ timer3: timer@0 {
 
 		target-module@36000 {			/* 0x48036000, ap 9 4e.0 */
 			compatible = "ti,sysc-omap4-timer", "ti,sysc";
-			ti,hwmods = "timer4";
 			reg = <0x36000 0x4>,
 			      <0x36010 0x4>;
 			reg-names = "rev", "sysc";
@@ -4295,7 +4292,6 @@ segment@0 {					/* 0x4ae00000 */
 
 		target-module@4000 {			/* 0x4ae04000, ap 15 40.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "counter_32k";
 			reg = <0x4000 0x4>,
 			      <0x4010 0x4>;
 			reg-names = "rev", "sysc";
@@ -4432,7 +4428,6 @@ wdt2: wdt@0 {
 
 		target-module@8000 {			/* 0x4ae18000, ap 9 30.0 */
 			compatible = "ti,sysc-omap4-timer", "ti,sysc";
-			ti,hwmods = "timer1";
 			reg = <0x8000 0x4>,
 			      <0x8010 0x4>;
 			reg-names = "rev", "sysc";
diff --git a/arch/arm/boot/dts/dra7.dtsi b/arch/arm/boot/dts/dra7.dtsi
--- a/arch/arm/boot/dts/dra7.dtsi
+++ b/arch/arm/boot/dts/dra7.dtsi
@@ -1044,3 +1044,9 @@ prm_eve4: prm@1c00 {
 		reg = <0x1c00 0x60>;
 	};
 };
+
+&timer1 {
+	compatible = "ti,dmtimer-clockevent";
+	assigned-clocks = <&wkupaon_clkctrl DRA7_TIMER1_CLKCTRL 24>;
+	assigned-clock-parents = <&sys_32k_ck>;
+};
diff --git a/arch/arm/boot/dts/omap5-l4.dtsi b/arch/arm/boot/dts/omap5-l4.dtsi
--- a/arch/arm/boot/dts/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/omap5-l4.dtsi
@@ -2150,7 +2150,6 @@ segment@0 {					/* 0x4ae00000 */
 
 		target-module@4000 {			/* 0x4ae04000, ap 17 20.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "counter_32k";
 			reg = <0x4000 0x4>,
 			      <0x4010 0x4>;
 			reg-names = "rev", "sysc";
@@ -2338,7 +2337,6 @@ wdt2: wdt@0 {
 
 		target-module@8000 {			/* 0x4ae18000, ap 9 18.0 */
 			compatible = "ti,sysc-omap4-timer", "ti,sysc";
-			ti,hwmods = "timer1";
 			reg = <0x8000 0x4>,
 			      <0x8010 0x4>;
 			reg-names = "rev", "sysc";
diff --git a/arch/arm/boot/dts/omap5.dtsi b/arch/arm/boot/dts/omap5.dtsi
--- a/arch/arm/boot/dts/omap5.dtsi
+++ b/arch/arm/boot/dts/omap5.dtsi
@@ -581,3 +581,9 @@ prm_device: prm@1c00 {
 		#reset-cells = <1>;
 	};
 };
+
+&timer1 {
+	compatible = "ti,dmtimer-clockevent";
+	assigned-clocks = <&wkupaon_clkctrl OMAP5_TIMER1_CLKCTRL 24>;
+	assigned-clock-parents = <&sys_32k_ck>;
+};
diff --git a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
@@ -193,39 +193,6 @@ static struct omap_hwmod omap54xx_mpu_private_hwmod = {
 	},
 };
 
-/*
- * 'counter' class
- * 32-bit ordinary counter, clocked by the falling edge of the 32 khz clock
- */
-
-static struct omap_hwmod_class_sysconfig omap54xx_counter_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.sysc_flags	= SYSC_HAS_SIDLEMODE,
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class omap54xx_counter_hwmod_class = {
-	.name	= "counter",
-	.sysc	= &omap54xx_counter_sysc,
-};
-
-/* counter_32k */
-static struct omap_hwmod omap54xx_counter_32k_hwmod = {
-	.name		= "counter_32k",
-	.class		= &omap54xx_counter_hwmod_class,
-	.clkdm_name	= "wkupaon_clkdm",
-	.flags		= HWMOD_SWSUP_SIDLE,
-	.main_clk	= "wkupaon_iclk_mux",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP54XX_CM_WKUPAON_COUNTER_32K_CLKCTRL_OFFSET,
-			.context_offs = OMAP54XX_RM_WKUPAON_COUNTER_32K_CONTEXT_OFFSET,
-		},
-	},
-};
-
 /*
  * 'emif' class
  * external memory interface no1 (wrapper)
@@ -299,44 +266,6 @@ static struct omap_hwmod omap54xx_mpu_hwmod = {
 	},
 };
 
-
-/*
- * 'timer' class
- * general purpose timer module with accurate 1ms tick
- * This class contains several variants: ['timer_1ms', 'timer']
- */
-
-static struct omap_hwmod_class_sysconfig omap54xx_timer_1ms_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.sysc_flags	= (SYSC_HAS_EMUFREE | SYSC_HAS_RESET_STATUS |
-			   SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-			   SIDLE_SMART_WKUP),
-	.sysc_fields	= &omap_hwmod_sysc_type2,
-};
-
-static struct omap_hwmod_class omap54xx_timer_1ms_hwmod_class = {
-	.name	= "timer",
-	.sysc	= &omap54xx_timer_1ms_sysc,
-};
-
-/* timer1 */
-static struct omap_hwmod omap54xx_timer1_hwmod = {
-	.name		= "timer1",
-	.class		= &omap54xx_timer_1ms_hwmod_class,
-	.clkdm_name	= "wkupaon_clkdm",
-	.main_clk	= "timer1_gfclk_mux",
-	.flags		= HWMOD_SET_DEFAULT_CLOCKACT,
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP54XX_CM_WKUPAON_TIMER1_CLKCTRL_OFFSET,
-			.context_offs = OMAP54XX_RM_WKUPAON_TIMER1_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
 /*
  * 'usb_host_hs' class
  * high-speed multi-port usb host controller
@@ -666,14 +595,6 @@ static struct omap_hwmod_ocp_if omap54xx_mpu__mpu_private = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_wkup -> counter_32k */
-static struct omap_hwmod_ocp_if omap54xx_l4_wkup__counter_32k = {
-	.master		= &omap54xx_l4_wkup_hwmod,
-	.slave		= &omap54xx_counter_32k_hwmod,
-	.clk		= "wkupaon_iclk_mux",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* mpu -> emif1 */
 static struct omap_hwmod_ocp_if omap54xx_mpu__emif1 = {
 	.master		= &omap54xx_mpu_hwmod,
@@ -698,14 +619,6 @@ static struct omap_hwmod_ocp_if omap54xx_l4_cfg__mpu = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_wkup -> timer1 */
-static struct omap_hwmod_ocp_if omap54xx_l4_wkup__timer1 = {
-	.master		= &omap54xx_l4_wkup_hwmod,
-	.slave		= &omap54xx_timer1_hwmod,
-	.clk		= "wkupaon_iclk_mux",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_cfg -> usb_host_hs */
 static struct omap_hwmod_ocp_if omap54xx_l4_cfg__usb_host_hs = {
 	.master		= &omap54xx_l4_cfg_hwmod,
@@ -747,11 +660,9 @@ static struct omap_hwmod_ocp_if *omap54xx_hwmod_ocp_ifs[] __initdata = {
 	&omap54xx_l3_main_2__l4_per,
 	&omap54xx_l3_main_1__l4_wkup,
 	&omap54xx_mpu__mpu_private,
-	&omap54xx_l4_wkup__counter_32k,
 	&omap54xx_mpu__emif1,
 	&omap54xx_mpu__emif2,
 	&omap54xx_l4_cfg__mpu,
-	&omap54xx_l4_wkup__timer1,
 	&omap54xx_l4_cfg__usb_host_hs,
 	&omap54xx_l4_cfg__usb_tll_hs,
 	&omap54xx_l4_cfg__usb_otg_ss,
diff --git a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
@@ -221,40 +221,6 @@ static struct omap_hwmod dra7xx_bb2d_hwmod = {
 	},
 };
 
-/*
- * 'counter' class
- *
- */
-
-static struct omap_hwmod_class_sysconfig dra7xx_counter_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.sysc_flags	= SYSC_HAS_SIDLEMODE,
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-			   SIDLE_SMART_WKUP),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class dra7xx_counter_hwmod_class = {
-	.name	= "counter",
-	.sysc	= &dra7xx_counter_sysc,
-};
-
-/* counter_32k */
-static struct omap_hwmod dra7xx_counter_32k_hwmod = {
-	.name		= "counter_32k",
-	.class		= &dra7xx_counter_hwmod_class,
-	.clkdm_name	= "wkupaon_clkdm",
-	.flags		= HWMOD_SWSUP_SIDLE,
-	.main_clk	= "wkupaon_iclk_mux",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = DRA7XX_CM_WKUPAON_COUNTER_32K_CLKCTRL_OFFSET,
-			.context_offs = DRA7XX_RM_WKUPAON_COUNTER_32K_CONTEXT_OFFSET,
-		},
-	},
-};
-
 /*
  * 'ctrl_module' class
  *
@@ -525,103 +491,6 @@ static struct omap_hwmod dra7xx_sata_hwmod = {
 	},
 };
 
-/*
- * 'timer' class
- *
- * This class contains several variants: ['timer_1ms', 'timer_secure',
- * 'timer']
- */
-
-static struct omap_hwmod_class_sysconfig dra7xx_timer_1ms_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.sysc_flags	= (SYSC_HAS_EMUFREE | SYSC_HAS_RESET_STATUS |
-			   SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-			   SIDLE_SMART_WKUP),
-	.sysc_fields	= &omap_hwmod_sysc_type2,
-};
-
-static struct omap_hwmod_class dra7xx_timer_1ms_hwmod_class = {
-	.name	= "timer",
-	.sysc	= &dra7xx_timer_1ms_sysc,
-};
-
-static struct omap_hwmod_class_sysconfig dra7xx_timer_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.sysc_flags	= (SYSC_HAS_EMUFREE | SYSC_HAS_RESET_STATUS |
-			   SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-			   SIDLE_SMART_WKUP),
-	.sysc_fields	= &omap_hwmod_sysc_type2,
-};
-
-static struct omap_hwmod_class dra7xx_timer_hwmod_class = {
-	.name	= "timer",
-	.sysc	= &dra7xx_timer_sysc,
-};
-
-/* timer1 */
-static struct omap_hwmod dra7xx_timer1_hwmod = {
-	.name		= "timer1",
-	.class		= &dra7xx_timer_1ms_hwmod_class,
-	.clkdm_name	= "wkupaon_clkdm",
-	.main_clk	= "timer1_gfclk_mux",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = DRA7XX_CM_WKUPAON_TIMER1_CLKCTRL_OFFSET,
-			.context_offs = DRA7XX_RM_WKUPAON_TIMER1_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
-/* timer2 */
-static struct omap_hwmod dra7xx_timer2_hwmod = {
-	.name		= "timer2",
-	.class		= &dra7xx_timer_1ms_hwmod_class,
-	.clkdm_name	= "l4per_clkdm",
-	.main_clk	= "timer2_gfclk_mux",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = DRA7XX_CM_L4PER_TIMER2_CLKCTRL_OFFSET,
-			.context_offs = DRA7XX_RM_L4PER_TIMER2_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
-/* timer3 */
-static struct omap_hwmod dra7xx_timer3_hwmod = {
-	.name		= "timer3",
-	.class		= &dra7xx_timer_hwmod_class,
-	.clkdm_name	= "l4per_clkdm",
-	.main_clk	= "timer3_gfclk_mux",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = DRA7XX_CM_L4PER_TIMER3_CLKCTRL_OFFSET,
-			.context_offs = DRA7XX_RM_L4PER_TIMER3_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
-/* timer4 */
-static struct omap_hwmod dra7xx_timer4_hwmod = {
-	.name		= "timer4",
-	.class		= &dra7xx_timer_hwmod_class,
-	.clkdm_name	= "l4per_clkdm",
-	.main_clk	= "timer4_gfclk_mux",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = DRA7XX_CM_L4PER_TIMER4_CLKCTRL_OFFSET,
-			.context_offs = DRA7XX_RM_L4PER_TIMER4_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
 /*
  * 'usb_otg_ss' class
  *
@@ -864,14 +733,6 @@ static struct omap_hwmod_ocp_if dra7xx_l3_main_1__bb2d = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_wkup -> counter_32k */
-static struct omap_hwmod_ocp_if dra7xx_l4_wkup__counter_32k = {
-	.master		= &dra7xx_l4_wkup_hwmod,
-	.slave		= &dra7xx_counter_32k_hwmod,
-	.clk		= "wkupaon_iclk_mux",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_wkup -> ctrl_module_wkup */
 static struct omap_hwmod_ocp_if dra7xx_l4_wkup__ctrl_module_wkup = {
 	.master		= &dra7xx_l4_wkup_hwmod,
@@ -952,38 +813,6 @@ static struct omap_hwmod_ocp_if dra7xx_l4_cfg__sata = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_wkup -> timer1 */
-static struct omap_hwmod_ocp_if dra7xx_l4_wkup__timer1 = {
-	.master		= &dra7xx_l4_wkup_hwmod,
-	.slave		= &dra7xx_timer1_hwmod,
-	.clk		= "wkupaon_iclk_mux",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-/* l4_per1 -> timer2 */
-static struct omap_hwmod_ocp_if dra7xx_l4_per1__timer2 = {
-	.master		= &dra7xx_l4_per1_hwmod,
-	.slave		= &dra7xx_timer2_hwmod,
-	.clk		= "l3_iclk_div",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-/* l4_per1 -> timer3 */
-static struct omap_hwmod_ocp_if dra7xx_l4_per1__timer3 = {
-	.master		= &dra7xx_l4_per1_hwmod,
-	.slave		= &dra7xx_timer3_hwmod,
-	.clk		= "l3_iclk_div",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-/* l4_per1 -> timer4 */
-static struct omap_hwmod_ocp_if dra7xx_l4_per1__timer4 = {
-	.master		= &dra7xx_l4_per1_hwmod,
-	.slave		= &dra7xx_timer4_hwmod,
-	.clk		= "l3_iclk_div",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_per3 -> usb_otg_ss1 */
 static struct omap_hwmod_ocp_if dra7xx_l4_per3__usb_otg_ss1 = {
 	.master		= &dra7xx_l4_per3_hwmod,
@@ -1062,7 +891,6 @@ static struct omap_hwmod_ocp_if *dra7xx_hwmod_ocp_ifs[] __initdata = {
 	&dra7xx_l3_main_1__l4_wkup,
 	&dra7xx_l4_per2__atl,
 	&dra7xx_l3_main_1__bb2d,
-	&dra7xx_l4_wkup__counter_32k,
 	&dra7xx_l4_wkup__ctrl_module_wkup,
 	&dra7xx_l3_main_1__gpmc,
 	&dra7xx_l4_cfg__mpu,
@@ -1072,10 +900,6 @@ static struct omap_hwmod_ocp_if *dra7xx_hwmod_ocp_ifs[] __initdata = {
 	&dra7xx_l4_cfg__pciess2,
 	&dra7xx_l3_main_1__qspi,
 	&dra7xx_l4_cfg__sata,
-	&dra7xx_l4_wkup__timer1,
-	&dra7xx_l4_per1__timer2,
-	&dra7xx_l4_per1__timer3,
-	&dra7xx_l4_per1__timer4,
 	&dra7xx_l4_per3__usb_otg_ss1,
 	&dra7xx_l4_per3__usb_otg_ss2,
 	&dra7xx_l4_per3__usb_otg_ss3,
diff --git a/arch/arm/mach-omap2/timer.c b/arch/arm/mach-omap2/timer.c
--- a/arch/arm/mach-omap2/timer.c
+++ b/arch/arm/mach-omap2/timer.c
@@ -576,21 +576,6 @@ void __init omap3_gptimer_timer_init(void)
 }
 #endif
 
-#if defined(CONFIG_ARCH_OMAP4) || defined(CONFIG_SOC_OMAP5) ||		\
-	defined(CONFIG_SOC_DRA7XX)
-static void __init omap4_sync32k_timer_init(void)
-{
-	__omap_sync32k_timer_init(1, "timer_32k_ck", "ti,timer-alwon",
-				  0, NULL, NULL, false);
-}
-
-void __init omap4_local_timer_init(void)
-{
-	omap4_sync32k_timer_init();
-	timer_probe();
-}
-#endif
-
 #if defined(CONFIG_SOC_OMAP5) || defined(CONFIG_SOC_DRA7XX)
 
 /*
@@ -708,7 +693,7 @@ static void __init realtime_counter_init(void)
 
 void __init omap5_realtime_timer_init(void)
 {
-	omap4_sync32k_timer_init();
+	omap_clk_init();
 	realtime_counter_init();
 
 	timer_probe();
-- 
2.26.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

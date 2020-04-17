Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA85E1AE2DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:58:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAGj/8UbjLB2y2r0LDHXKSWcXAnCRJt5cTeHxH3qCtg=; b=r6Nwh/ReGDKb7o
	SZh8iYatkNl5B1eMB/8EM3BMu3LAqBEdB/HcQubmf4dic+uF62Vy/aOeyzd04zfoPySbA2fPwgGII
	WXsZWHty928KOllyCQMsZuJrOCRF4mRFZtjRjHqEju8p7LAGd9jWKCfykXgR+O8pZ5OT3JWSz7sEm
	aKE5LDh80qd8qcDlbnLezeb/GUvix0e698iNXgGg2piLz9lcvyXva6hM8UTlm+/kPQFQsJ6SiZwr4
	X87isl1aKnsJX2z7NY4KzZx0cTOsXQ2VInGT1KB6Ith8jjdAGKMLmFkwP7amE2DPPYPlThy7iKbLN
	pkhq0HRQsDF0MDCNzBHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUJf-00065s-RB; Fri, 17 Apr 2020 16:58:11 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUHV-0004OZ-MV
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:56:00 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 54B4E8047;
 Fri, 17 Apr 2020 16:56:42 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 08/14] ARM: dts: Configure system timers for omap4
Date: Fri, 17 Apr 2020 09:55:13 -0700
Message-Id: <20200417165519.4979-9-tony@atomide.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417165519.4979-1-tony@atomide.com>
References: <20200417165519.4979-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_095557_778538_4BEA38C8 
X-CRM114-Status: GOOD (  12.12  )
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

Cc: devicetree@vger.kernel.org
Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap4-l4.dtsi            |  2 -
 arch/arm/boot/dts/omap4.dtsi               |  6 ++
 arch/arm/mach-omap2/board-generic.c        |  2 +-
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c | 90 ----------------------
 4 files changed, 7 insertions(+), 93 deletions(-)

diff --git a/arch/arm/boot/dts/omap4-l4.dtsi b/arch/arm/boot/dts/omap4-l4.dtsi
--- a/arch/arm/boot/dts/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/omap4-l4.dtsi
@@ -974,7 +974,6 @@ segment@0 {					/* 0x4a300000 */
 
 		target-module@4000 {			/* 0x4a304000, ap 17 24.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "counter_32k";
 			reg = <0x4000 0x4>,
 			      <0x4004 0x4>;
 			reg-names = "rev", "sysc";
@@ -1141,7 +1140,6 @@ wdt2: wdt@0 {
 
 		target-module@8000 {			/* 0x4a318000, ap 9 1c.0 */
 			compatible = "ti,sysc-omap2-timer", "ti,sysc";
-			ti,hwmods = "timer1";
 			reg = <0x8000 0x4>,
 			      <0x8010 0x4>,
 			      <0x8014 0x4>;
diff --git a/arch/arm/boot/dts/omap4.dtsi b/arch/arm/boot/dts/omap4.dtsi
--- a/arch/arm/boot/dts/omap4.dtsi
+++ b/arch/arm/boot/dts/omap4.dtsi
@@ -655,3 +655,9 @@ prm_device: prm@1b00 {
 		#reset-cells = <1>;
 	};
 };
+
+&timer1 {
+	compatible = "ti,dmtimer-clockevent";
+	assigned-clocks = <&l4_wkup_clkctrl OMAP4_TIMER1_CLKCTRL 24>;
+	assigned-clock-parents = <&sys_clkin_ck>;
+};
diff --git a/arch/arm/mach-omap2/board-generic.c b/arch/arm/mach-omap2/board-generic.c
--- a/arch/arm/mach-omap2/board-generic.c
+++ b/arch/arm/mach-omap2/board-generic.c
@@ -261,7 +261,7 @@ DT_MACHINE_START(OMAP4_DT, "Generic OMAP4 (Flattened Device Tree)")
 	.init_irq	= omap_gic_of_init,
 	.init_machine	= omap_generic_init,
 	.init_late	= omap4430_init_late,
-	.init_time	= omap4_local_timer_init,
+	.init_time	= omap_init_time_of,
 	.dt_compat	= omap4_boards_compat,
 	.restart	= omap44xx_restart,
 MACHINE_END
diff --git a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
@@ -231,39 +231,6 @@ static struct omap_hwmod omap44xx_ocp_wp_noc_hwmod = {
  * usim
  */
 
-/*
- * 'counter' class
- * 32-bit ordinary counter, clocked by the falling edge of the 32 khz clock
- */
-
-static struct omap_hwmod_class_sysconfig omap44xx_counter_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0004,
-	.sysc_flags	= SYSC_HAS_SIDLEMODE,
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class omap44xx_counter_hwmod_class = {
-	.name	= "counter",
-	.sysc	= &omap44xx_counter_sysc,
-};
-
-/* counter_32k */
-static struct omap_hwmod omap44xx_counter_32k_hwmod = {
-	.name		= "counter_32k",
-	.class		= &omap44xx_counter_hwmod_class,
-	.clkdm_name	= "l4_wkup_clkdm",
-	.flags		= HWMOD_SWSUP_SIDLE,
-	.main_clk	= "sys_32k_ck",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP4_CM_WKUP_SYNCTIMER_CLKCTRL_OFFSET,
-			.context_offs = OMAP4_RM_WKUP_SYNCTIMER_CONTEXT_OFFSET,
-		},
-	},
-};
-
 /*
  * 'ctrl_module' class
  * attila core control module + core pad control module + wkup pad control
@@ -672,45 +639,6 @@ static struct omap_hwmod omap44xx_sl2if_hwmod = {
 	},
 };
 
-/*
- * 'timer' class
- * general purpose timer module with accurate 1ms tick
- * This class contains several variants: ['timer_1ms', 'timer']
- */
-
-static struct omap_hwmod_class_sysconfig omap44xx_timer_1ms_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.syss_offs	= 0x0014,
-	.sysc_flags	= (SYSC_HAS_AUTOIDLE | SYSC_HAS_CLOCKACTIVITY |
-			   SYSC_HAS_EMUFREE | SYSC_HAS_ENAWAKEUP |
-			   SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET |
-			   SYSS_HAS_RESET_STATUS),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class omap44xx_timer_1ms_hwmod_class = {
-	.name	= "timer",
-	.sysc	= &omap44xx_timer_1ms_sysc,
-};
-
-/* timer1 */
-static struct omap_hwmod omap44xx_timer1_hwmod = {
-	.name		= "timer1",
-	.class		= &omap44xx_timer_1ms_hwmod_class,
-	.clkdm_name	= "l4_wkup_clkdm",
-	.flags		= HWMOD_SET_DEFAULT_CLOCKACT,
-	.main_clk	= "dmt1_clk_mux",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP4_CM_WKUP_TIMER1_CLKCTRL_OFFSET,
-			.context_offs = OMAP4_RM_WKUP_TIMER1_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
 /*
  * 'usb_host_fs' class
  * full-speed usb host controller
@@ -1063,14 +991,6 @@ static struct omap_hwmod_ocp_if omap44xx_l4_cfg__ocp_wp_noc = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_wkup -> counter_32k */
-static struct omap_hwmod_ocp_if omap44xx_l4_wkup__counter_32k = {
-	.master		= &omap44xx_l4_wkup_hwmod,
-	.slave		= &omap44xx_counter_32k_hwmod,
-	.clk		= "l4_wkup_clk_mux_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_cfg -> ctrl_module_core */
 static struct omap_hwmod_ocp_if omap44xx_l4_cfg__ctrl_module_core = {
 	.master		= &omap44xx_l4_cfg_hwmod,
@@ -1199,14 +1119,6 @@ static struct omap_hwmod_ocp_if __maybe_unused omap44xx_l3_main_2__sl2if = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_wkup -> timer1 */
-static struct omap_hwmod_ocp_if omap44xx_l4_wkup__timer1 = {
-	.master		= &omap44xx_l4_wkup_hwmod,
-	.slave		= &omap44xx_timer1_hwmod,
-	.clk		= "l4_wkup_clk_mux_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_cfg -> usb_host_fs */
 static struct omap_hwmod_ocp_if __maybe_unused omap44xx_l4_cfg__usb_host_fs = {
 	.master		= &omap44xx_l4_cfg_hwmod,
@@ -1273,7 +1185,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_l4_cfg__l4_wkup,
 	&omap44xx_mpu__mpu_private,
 	&omap44xx_l4_cfg__ocp_wp_noc,
-	&omap44xx_l4_wkup__counter_32k,
 	&omap44xx_l4_cfg__ctrl_module_core,
 	&omap44xx_l4_cfg__ctrl_module_pad_core,
 	&omap44xx_l4_wkup__ctrl_module_wkup,
@@ -1290,7 +1201,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_l4_wkup__prm,
 	&omap44xx_l4_wkup__scrm,
 	/* &omap44xx_l3_main_2__sl2if, */
-	&omap44xx_l4_wkup__timer1,
 	/* &omap44xx_l4_cfg__usb_host_fs, */
 	&omap44xx_l4_cfg__usb_host_hs,
 	&omap44xx_l4_cfg__usb_tll_hs,
-- 
2.26.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

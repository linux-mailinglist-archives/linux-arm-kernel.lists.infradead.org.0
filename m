Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529ED1AE2F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/35Xy8IzcV4lydeCDHHBMb0JYg/z+ZQizD2Btk8NpmI=; b=JTdnzoyKk+h15F
	ah1xk6qFdZQWJuV5Y4F8tQucb5MOBHEBAclvHFRCjyOCal7snWtnNtFeGsQi1rw4rjbiBjpKO7GIw
	eo++N7r6QzFo3wxvCyRGiUqXXoQOqaGXYCglmWT8SEPo3whLx9h5LmY3kLNSyYUT+9MlpKn3A3UVa
	NqqnQu5gdo1/AmPCKoxorwSo/hj5HalX9FmER/ZBSNS/uJcBFoGjksLtzsCCAEdGLkNpLpld+uF7Z
	pxBEgIwox31IGyirGRO+E+6+DTbcmnQdX8Yswp+dU9X/CyoHpM2O9EcEo2T14Js+pq2fdDt+sgKO9
	PXZ1Lqi4AyKZaFk4VJaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUKq-0007CI-To; Fri, 17 Apr 2020 16:59:24 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUHf-0004Uz-2N
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:56:11 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 963158160;
 Fri, 17 Apr 2020 16:56:53 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 12/14] ARM: dts: Configure system timers for omap2
Date: Fri, 17 Apr 2020 09:55:17 -0700
Message-Id: <20200417165519.4979-13-tony@atomide.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417165519.4979-1-tony@atomide.com>
References: <20200417165519.4979-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_095607_213928_19C8C923 
X-CRM114-Status: GOOD (  13.70  )
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
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
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

Let's also update the dts file to use #include while at it.

Cc: devicetree@vger.kernel.org
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap2.dtsi                  | 38 +++++++++--
 arch/arm/boot/dts/omap2420.dtsi               | 65 +++++++++++++++----
 arch/arm/boot/dts/omap2430.dtsi               | 65 +++++++++++++++----
 arch/arm/mach-omap2/board-generic.c           |  4 +-
 arch/arm/mach-omap2/omap_hwmod_2420_data.c    | 20 ------
 arch/arm/mach-omap2/omap_hwmod_2430_data.c    | 19 ------
 .../omap_hwmod_2xxx_interconnect_data.c       |  8 ---
 .../mach-omap2/omap_hwmod_2xxx_ipblock_data.c | 47 --------------
 arch/arm/mach-omap2/omap_hwmod_common_data.h  |  3 -
 9 files changed, 141 insertions(+), 128 deletions(-)

diff --git a/arch/arm/boot/dts/omap2.dtsi b/arch/arm/boot/dts/omap2.dtsi
--- a/arch/arm/boot/dts/omap2.dtsi
+++ b/arch/arm/boot/dts/omap2.dtsi
@@ -201,11 +201,32 @@ uart3: serial@4806e000 {
 			clock-frequency = <48000000>;
 		};
 
-		timer2: timer@4802a000 {
-			compatible = "ti,omap2420-timer";
-			reg = <0x4802a000 0x400>;
-			interrupts = <38>;
-			ti,hwmods = "timer2";
+		target-module@4802a000 {
+			compatible = "ti,sysc-omap2-timer", "ti,sysc";
+			reg = <0x4802a000 0x4>,
+			      <0x4802a010 0x4>,
+			      <0x4802a014 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_EMUFREE |
+					 SYSC_OMAP2_ENAWAKEUP |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,syss-mask = <1>;
+			clocks = <&gpt2_fck>, <&gpt2_ick>;
+			clock-names = "fck", "ick";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x4802a000 0x1000>;
+
+			timer2: timer@0 {
+				compatible = "ti,omap2420-timer";
+				reg = <0 0x400>;
+				interrupts = <38>;
+			};
 		};
 
 		timer3: timer@48078000 {
@@ -318,3 +339,10 @@ venc: encoder@48050c00 {
 		};
 	};
 };
+#if 0
+&timer2 {
+	compatible = "ti,dmtimer-clocksource";
+	assigned-clocks = <&gpt2_fck>;
+	assigned-clock-parents = <&sys_ck>;
+};
+#endif
diff --git a/arch/arm/boot/dts/omap2420.dtsi b/arch/arm/boot/dts/omap2420.dtsi
--- a/arch/arm/boot/dts/omap2420.dtsi
+++ b/arch/arm/boot/dts/omap2420.dtsi
@@ -68,10 +68,23 @@ scm_clockdomains: clockdomains {
 				};
 			};
 
-			counter32k: counter@4000 {
-				compatible = "ti,omap-counter32k";
-				reg = <0x4000 0x20>;
-				ti,hwmods = "counter_32k";
+			target-module@4000 {
+				compatible = "ti,sysc-omap2", "ti,sysc";
+				reg = <0x4000 0x4>,
+				      <0x4004 0x4>;
+				reg-names = "rev", "sysc";
+				ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+						<SYSC_IDLE_NO>;
+				clocks = <&func_32k_ck>;
+				clock-names = "fck";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x4000 0x1000>;
+
+				counter32k: counter@0 {
+					compatible = "ti,omap-counter32k";
+					reg = <0 0x20>;
+				};
 			};
 		};
 
@@ -194,12 +207,33 @@ mbox_iva: iva {
 			};
 		};
 
-		timer1: timer@48028000 {
-			compatible = "ti,omap2420-timer";
-			reg = <0x48028000 0x400>;
-			interrupts = <37>;
-			ti,hwmods = "timer1";
-			ti,timer-alwon;
+		target-module@48028000 {
+			compatible = "ti,sysc-omap2-timer", "ti,sysc";
+			reg = <0x48028000 0x4>,
+			      <0x48028010 0x4>,
+			      <0x48028014 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_EMUFREE |
+					 SYSC_OMAP2_ENAWAKEUP |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,syss-mask = <1>;
+			clocks = <&gpt1_fck>, <&gpt1_ick>;
+			clock-names = "fck", "ick";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x48028000 0x1000>;
+
+			timer1: timer@0 {
+				compatible = "ti,omap2420-timer";
+				reg = <0 0x400>;
+				interrupts = <37>;
+				ti,timer-alwon;
+			};
 		};
 
 		wd_timer2: wdt@48022000 {
@@ -218,5 +252,12 @@ &i2c2 {
 	compatible = "ti,omap2420-i2c";
 };
 
-/include/ "omap24xx-clocks.dtsi"
-/include/ "omap2420-clocks.dtsi"
+#include "omap24xx-clocks.dtsi"
+#include "omap2420-clocks.dtsi"
+
+&timer1 {
+	compatible = "ti,dmtimer-clockevent";
+	assigned-clocks = <&gpt1_fck>;
+	assigned-clock-parents = <&func_32k_ck>;
+};
+
diff --git a/arch/arm/boot/dts/omap2430.dtsi b/arch/arm/boot/dts/omap2430.dtsi
--- a/arch/arm/boot/dts/omap2430.dtsi
+++ b/arch/arm/boot/dts/omap2430.dtsi
@@ -81,10 +81,23 @@ scm_clockdomains: clockdomains {
 				};
 			};
 
-			counter32k: counter@20000 {
-				compatible = "ti,omap-counter32k";
-				reg = <0x20000 0x20>;
-				ti,hwmods = "counter_32k";
+			target-module@20000 {
+				compatible = "ti,sysc-omap2", "ti,sysc";
+				reg = <0x20000 0x4>,
+				      <0x20004 0x4>;
+				reg-names = "rev", "sysc";
+				ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+						<SYSC_IDLE_NO>;
+				clocks = <&func_32k_ck>;
+				clock-names = "fck";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x20000 0x1000>;
+
+				counter32k: counter@0 {
+					compatible = "ti,omap-counter32k";
+					reg = <0 0x20>;
+				};
 			};
 		};
 
@@ -277,12 +290,33 @@ mbox_dsp: dsp {
 			};
 		};
 
-		timer1: timer@49018000 {
-			compatible = "ti,omap2420-timer";
-			reg = <0x49018000 0x400>;
-			interrupts = <37>;
-			ti,hwmods = "timer1";
-			ti,timer-alwon;
+		target-module@49018000 {
+			compatible = "ti,sysc-omap2-timer", "ti,sysc";
+			reg = <0x49018000 0x4>,
+			      <0x49018010 0x4>,
+			      <0x49018014 0x4>;
+			reg-names = "rev", "sysc", "syss";
+			ti,sysc-mask = <(SYSC_OMAP2_CLOCKACTIVITY |
+					 SYSC_OMAP2_EMUFREE |
+					 SYSC_OMAP2_ENAWAKEUP |
+					 SYSC_OMAP2_SOFTRESET |
+					 SYSC_OMAP2_AUTOIDLE)>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>;
+			ti,syss-mask = <1>;
+			clocks = <&gpt1_fck>, <&gpt1_ick>;
+			clock-names = "fck", "ick";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x49018000 0x1000>;
+
+			timer1: timer@0 {
+				compatible = "ti,omap2420-timer";
+				reg = <0 0x400>;
+				interrupts = <37>;
+				ti,timer-alwon;
+			};
 		};
 
 		mcspi3: spi@480b8000 {
@@ -321,5 +355,12 @@ &i2c2 {
 	compatible = "ti,omap2430-i2c";
 };
 
-/include/ "omap24xx-clocks.dtsi"
-/include/ "omap2430-clocks.dtsi"
+#include "omap24xx-clocks.dtsi"
+#include "omap2430-clocks.dtsi"
+
+&timer1 {
+	compatible = "ti,dmtimer-clockevent";
+	assigned-clocks = <&gpt1_fck>;
+	assigned-clock-parents = <&func_32k_ck>;
+};
+
diff --git a/arch/arm/mach-omap2/board-generic.c b/arch/arm/mach-omap2/board-generic.c
--- a/arch/arm/mach-omap2/board-generic.c
+++ b/arch/arm/mach-omap2/board-generic.c
@@ -50,7 +50,7 @@ DT_MACHINE_START(OMAP242X_DT, "Generic OMAP2420 (Flattened Device Tree)")
 	.map_io		= omap242x_map_io,
 	.init_early	= omap2420_init_early,
 	.init_machine	= omap_generic_init,
-	.init_time	= omap_init_time,
+	.init_time	= omap_init_time_of,
 	.dt_compat	= omap242x_boards_compat,
 	.restart	= omap2xxx_restart,
 MACHINE_END
@@ -67,7 +67,7 @@ DT_MACHINE_START(OMAP243X_DT, "Generic OMAP2430 (Flattened Device Tree)")
 	.map_io		= omap243x_map_io,
 	.init_early	= omap2430_init_early,
 	.init_machine	= omap_generic_init,
-	.init_time	= omap_init_time,
+	.init_time	= omap_init_time_of,
 	.dt_compat	= omap243x_boards_compat,
 	.restart	= omap2xxx_restart,
 MACHINE_END
diff --git a/arch/arm/mach-omap2/omap_hwmod_2420_data.c b/arch/arm/mach-omap2/omap_hwmod_2420_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_2420_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_2420_data.c
@@ -264,14 +264,6 @@ static struct omap_hwmod_ocp_if omap2420_l3__dsp = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_wkup -> timer1 */
-static struct omap_hwmod_ocp_if omap2420_l4_wkup__timer1 = {
-	.master		= &omap2xxx_l4_wkup_hwmod,
-	.slave		= &omap2xxx_timer1_hwmod,
-	.clk		= "gpt1_ick",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_wkup -> wd_timer2 */
 static struct omap_hwmod_ocp_if omap2420_l4_wkup__wd_timer2 = {
 	.master		= &omap2xxx_l4_wkup_hwmod,
@@ -352,15 +344,6 @@ static struct omap_hwmod_ocp_if omap2420_l4_core__hdq1w = {
 	.flags		= OMAP_FIREWALL_L4 | OCPIF_SWSUP_IDLE,
 };
 
-
-/* l4_wkup -> 32ksync_counter */
-static struct omap_hwmod_ocp_if omap2420_l4_wkup__counter_32k = {
-	.master		= &omap2xxx_l4_wkup_hwmod,
-	.slave		= &omap2xxx_counter_32k_hwmod,
-	.clk		= "sync_32k_ick",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 static struct omap_hwmod_ocp_if omap2420_l3__gpmc = {
 	.master		= &omap2xxx_l3_main_hwmod,
 	.slave		= &omap2xxx_gpmc_hwmod,
@@ -382,8 +365,6 @@ static struct omap_hwmod_ocp_if *omap2420_hwmod_ocp_ifs[] __initdata = {
 	&omap2420_l4_core__i2c2,
 	&omap2420_l3__iva,
 	&omap2420_l3__dsp,
-	&omap2420_l4_wkup__timer1,
-	&omap2xxx_l4_core__timer2,
 	&omap2xxx_l4_core__timer3,
 	&omap2xxx_l4_core__timer4,
 	&omap2xxx_l4_core__timer5,
@@ -411,7 +392,6 @@ static struct omap_hwmod_ocp_if *omap2420_hwmod_ocp_ifs[] __initdata = {
 	&omap2xxx_l4_core__sham,
 	&omap2xxx_l4_core__aes,
 	&omap2420_l4_core__hdq1w,
-	&omap2420_l4_wkup__counter_32k,
 	&omap2420_l3__gpmc,
 	NULL,
 };
diff --git a/arch/arm/mach-omap2/omap_hwmod_2430_data.c b/arch/arm/mach-omap2/omap_hwmod_2430_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_2430_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_2430_data.c
@@ -436,14 +436,6 @@ static struct omap_hwmod_ocp_if omap2430_l3__iva = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_wkup -> timer1 */
-static struct omap_hwmod_ocp_if omap2430_l4_wkup__timer1 = {
-	.master		= &omap2xxx_l4_wkup_hwmod,
-	.slave		= &omap2xxx_timer1_hwmod,
-	.clk		= "gpt1_ick",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_wkup -> wd_timer2 */
 static struct omap_hwmod_ocp_if omap2430_l4_wkup__wd_timer2 = {
 	.master		= &omap2xxx_l4_wkup_hwmod,
@@ -548,14 +540,6 @@ static struct omap_hwmod_ocp_if omap2430_l4_core__hdq1w = {
 	.flags		= OMAP_FIREWALL_L4 | OCPIF_SWSUP_IDLE,
 };
 
-/* l4_wkup -> 32ksync_counter */
-static struct omap_hwmod_ocp_if omap2430_l4_wkup__counter_32k = {
-	.master		= &omap2xxx_l4_wkup_hwmod,
-	.slave		= &omap2xxx_counter_32k_hwmod,
-	.clk		= "sync_32k_ick",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 static struct omap_hwmod_ocp_if omap2430_l3__gpmc = {
 	.master		= &omap2xxx_l3_main_hwmod,
 	.slave		= &omap2xxx_gpmc_hwmod,
@@ -581,8 +565,6 @@ static struct omap_hwmod_ocp_if *omap2430_hwmod_ocp_ifs[] __initdata = {
 	&omap2xxx_l4_core__mcspi2,
 	&omap2430_l4_core__mcspi3,
 	&omap2430_l3__iva,
-	&omap2430_l4_wkup__timer1,
-	&omap2xxx_l4_core__timer2,
 	&omap2xxx_l4_core__timer3,
 	&omap2xxx_l4_core__timer4,
 	&omap2xxx_l4_core__timer5,
@@ -613,7 +595,6 @@ static struct omap_hwmod_ocp_if *omap2430_hwmod_ocp_ifs[] __initdata = {
 	&omap2xxx_l4_core__rng,
 	&omap2xxx_l4_core__sham,
 	&omap2xxx_l4_core__aes,
-	&omap2430_l4_wkup__counter_32k,
 	&omap2430_l3__gpmc,
 	NULL,
 };
diff --git a/arch/arm/mach-omap2/omap_hwmod_2xxx_interconnect_data.c b/arch/arm/mach-omap2/omap_hwmod_2xxx_interconnect_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_2xxx_interconnect_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_2xxx_interconnect_data.c
@@ -95,14 +95,6 @@ struct omap_hwmod_ocp_if omap2xxx_l4_core__mcspi2 = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_core -> timer2 */
-struct omap_hwmod_ocp_if omap2xxx_l4_core__timer2 = {
-	.master		= &omap2xxx_l4_core_hwmod,
-	.slave		= &omap2xxx_timer2_hwmod,
-	.clk		= "gpt2_ick",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_core -> timer3 */
 struct omap_hwmod_ocp_if omap2xxx_l4_core__timer3 = {
 	.master		= &omap2xxx_l4_core_hwmod,
diff --git a/arch/arm/mach-omap2/omap_hwmod_2xxx_ipblock_data.c b/arch/arm/mach-omap2/omap_hwmod_2xxx_ipblock_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_2xxx_ipblock_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_2xxx_ipblock_data.c
@@ -195,36 +195,6 @@ struct omap_hwmod omap2xxx_iva_hwmod = {
 	.class		= &iva_hwmod_class,
 };
 
-/* timer1 */
-struct omap_hwmod omap2xxx_timer1_hwmod = {
-	.name		= "timer1",
-	.main_clk	= "gpt1_fck",
-	.prcm		= {
-		.omap2 = {
-			.module_offs = WKUP_MOD,
-			.idlest_reg_id = 1,
-			.idlest_idle_bit = OMAP24XX_ST_GPT1_SHIFT,
-		},
-	},
-	.class		= &omap2xxx_timer_hwmod_class,
-	.flags          = HWMOD_SET_DEFAULT_CLOCKACT,
-};
-
-/* timer2 */
-struct omap_hwmod omap2xxx_timer2_hwmod = {
-	.name		= "timer2",
-	.main_clk	= "gpt2_fck",
-	.prcm		= {
-		.omap2 = {
-			.module_offs = CORE_MOD,
-			.idlest_reg_id = 1,
-			.idlest_idle_bit = OMAP24XX_ST_GPT2_SHIFT,
-		},
-	},
-	.class		= &omap2xxx_timer_hwmod_class,
-	.flags          = HWMOD_SET_DEFAULT_CLOCKACT,
-};
-
 /* timer3 */
 struct omap_hwmod omap2xxx_timer3_hwmod = {
 	.name		= "timer3",
@@ -595,23 +565,6 @@ struct omap_hwmod omap2xxx_mcspi2_hwmod = {
 	.class		= &omap2xxx_mcspi_class,
 };
 
-static struct omap_hwmod_class omap2xxx_counter_hwmod_class = {
-	.name	= "counter",
-};
-
-struct omap_hwmod omap2xxx_counter_32k_hwmod = {
-	.name		= "counter_32k",
-	.main_clk	= "func_32k_ck",
-	.prcm		= {
-		.omap2	= {
-			.module_offs = WKUP_MOD,
-			.idlest_reg_id = 1,
-			.idlest_idle_bit = OMAP24XX_ST_32KSYNC_SHIFT,
-		},
-	},
-	.class		= &omap2xxx_counter_hwmod_class,
-};
-
 /* gpmc */
 struct omap_hwmod omap2xxx_gpmc_hwmod = {
 	.name		= "gpmc",
diff --git a/arch/arm/mach-omap2/omap_hwmod_common_data.h b/arch/arm/mach-omap2/omap_hwmod_common_data.h
--- a/arch/arm/mach-omap2/omap_hwmod_common_data.h
+++ b/arch/arm/mach-omap2/omap_hwmod_common_data.h
@@ -21,8 +21,6 @@ extern struct omap_hwmod omap2xxx_l4_core_hwmod;
 extern struct omap_hwmod omap2xxx_l4_wkup_hwmod;
 extern struct omap_hwmod omap2xxx_mpu_hwmod;
 extern struct omap_hwmod omap2xxx_iva_hwmod;
-extern struct omap_hwmod omap2xxx_timer1_hwmod;
-extern struct omap_hwmod omap2xxx_timer2_hwmod;
 extern struct omap_hwmod omap2xxx_timer3_hwmod;
 extern struct omap_hwmod omap2xxx_timer4_hwmod;
 extern struct omap_hwmod omap2xxx_timer5_hwmod;
@@ -47,7 +45,6 @@ extern struct omap_hwmod omap2xxx_gpio3_hwmod;
 extern struct omap_hwmod omap2xxx_gpio4_hwmod;
 extern struct omap_hwmod omap2xxx_mcspi1_hwmod;
 extern struct omap_hwmod omap2xxx_mcspi2_hwmod;
-extern struct omap_hwmod omap2xxx_counter_32k_hwmod;
 extern struct omap_hwmod omap2xxx_gpmc_hwmod;
 extern struct omap_hwmod omap2xxx_rng_hwmod;
 extern struct omap_hwmod omap2xxx_sham_hwmod;
-- 
2.26.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

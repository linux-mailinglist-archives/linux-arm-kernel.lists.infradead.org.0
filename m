Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 948081C97B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:27:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KBMigOeCSzlvjSteUtXdEgqwkn6P2cTeSvfBQyjblU=; b=L7ibB5SWcuuecQ
	EcU/SsVyR6qc0cCWbUCoNqQoPYALQoFu54RYMMKbcGl8NRssJWt9nB7rCMRX+wiwR0BfO/w96B1Az
	C6stDv/K213FUFBsOpAxvCzqkn7F0vbuU5SXgNWc5EBHpqcsEdi7YmzXQo+IM9FJxDL8XjOY6IRQ6
	BuLzUIL5xLJO6U4y79ywysZyRKG7RyfFPJdWf4Pbgj7BA12Yc65Y9MTawGU4rlxqtaQbwsJE3e9KN
	RgrJe/wuimDl85yqDnWG3SCXD88VmdO71NKzG7cZBleXnWIX5DKvCQJV+s7BPEH1bzof7TQLkqmY1
	ZURvukwcJ8mu/7XT5bIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkIk-0007XW-8F; Thu, 07 May 2020 17:27:14 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkFm-0002Xq-S8
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:24:18 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 7FFF5810D;
 Thu,  7 May 2020 17:24:57 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 11/14] ARM: dts: Configure system timers for ti81xx
Date: Thu,  7 May 2020 10:23:27 -0700
Message-Id: <20200507172330.18679-12-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200507172330.18679-1-tony@atomide.com>
References: <20200507172330.18679-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102411_266838_1E161248 
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

Note that for ti81xx, also timer1 is of type 2 unlike on am335x
where timer1 is type1 while the rest of the timers are type 2.

Cc: devicetree@vger.kernel.org
Cc: Brian Hutchinson <b.hutchman@gmail.com>
Cc: Graeme Smecher <gsmecher@threespeedlogic.com>
Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/dm814x.dtsi              | 74 +++++++++++++++++---
 arch/arm/boot/dts/dm816x.dtsi              | 78 ++++++++++++++++++----
 arch/arm/mach-omap2/board-generic.c        |  4 +-
 arch/arm/mach-omap2/omap_hwmod_81xx_data.c | 74 --------------------
 4 files changed, 130 insertions(+), 100 deletions(-)

diff --git a/arch/arm/boot/dts/dm814x.dtsi b/arch/arm/boot/dts/dm814x.dtsi
--- a/arch/arm/boot/dts/dm814x.dtsi
+++ b/arch/arm/boot/dts/dm814x.dtsi
@@ -308,14 +308,30 @@ mcspi4: spi@1a4000 {
 				ti,hwmods = "mcspi4";
 			};
 
-			timer1: timer@2e000 {
-				compatible = "ti,dm814-timer";
-				reg = <0x2e000 0x2000>;
-				interrupts = <67>;
-				ti,hwmods = "timer1";
-				ti,timer-alwon;
+			timer1_target: target-module@2e000 {
+				compatible = "ti,sysc-omap4-timer", "ti,sysc";
+				reg = <0x2e000 0x4>,
+				      <0x2e010 0x4>;
+				reg-names = "rev", "sysc";
+				ti,sysc-mask = <SYSC_OMAP4_SOFTRESET>;
+				ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+						<SYSC_IDLE_NO>,
+						<SYSC_IDLE_SMART>,
+						<SYSC_IDLE_SMART_WKUP>;
 				clocks = <&timer1_fck>;
 				clock-names = "fck";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x2e000 0x1000>;
+
+				timer1: timer@0 {
+					compatible = "ti,am335x-timer-1ms";
+					reg = <0x0 0x400>;
+					interrupts = <67>;
+					ti,timer-alwon;
+					clocks = <&timer1_fck>;
+					clock-names = "fck";
+				};
 			};
 
 			uart1: uart@20000 {
@@ -348,13 +364,29 @@ uart3: uart@24000 {
 				dma-names = "tx", "rx";
 			};
 
-			timer2: timer@40000 {
-				compatible = "ti,dm814-timer";
-				reg = <0x40000 0x2000>;
-				interrupts = <68>;
-				ti,hwmods = "timer2";
+			timer2_target: target-module@40000 {
+				compatible = "ti,sysc-omap4-timer", "ti,sysc";
+				reg = <0x40000 0x4>,
+				      <0x40010 0x4>;
+				reg-names = "rev", "sysc";
+				ti,sysc-mask = <SYSC_OMAP4_SOFTRESET>;
+				ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+						<SYSC_IDLE_NO>,
+						<SYSC_IDLE_SMART>,
+						<SYSC_IDLE_SMART_WKUP>;
 				clocks = <&timer2_fck>;
 				clock-names = "fck";
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x40000 0x1000>;
+
+				timer2: timer@0 {
+					compatible = "ti,dm814-timer";
+					reg = <0 0x1000>;
+					interrupts = <68>;
+					clocks = <&timer2_fck>;
+					clock-names = "fck";
+				};
 			};
 
 			timer3: timer@42000 {
@@ -735,3 +767,23 @@ gpmc: gpmc@50000000 {
 };
 
 #include "dm814x-clocks.dtsi"
+
+/* Preferred always-on timer for clocksource */
+&timer1_target {
+	ti,no-reset-on-init;
+	ti,no-idle;
+	timer@0 {
+		assigned-clocks = <&timer1_fck>;
+		assigned-clock-parents = <&devosc_ck>;
+	};
+};
+
+/* Preferred timer for clockevent */
+&timer2_target {
+	ti,no-reset-on-init;
+	ti,no-idle;
+	timer@0 {
+		assigned-clocks = <&timer2_fck>;
+		assigned-clock-parents = <&devosc_ck>;
+	};
+};
diff --git a/arch/arm/boot/dts/dm816x.dtsi b/arch/arm/boot/dts/dm816x.dtsi
--- a/arch/arm/boot/dts/dm816x.dtsi
+++ b/arch/arm/boot/dts/dm816x.dtsi
@@ -440,23 +440,55 @@ mmc1: mmc@48060000 {
 			dma-names = "tx", "rx";
 		};
 
-		timer1: timer@4802e000 {
-			compatible = "ti,dm816-timer";
-			reg = <0x4802e000 0x2000>;
-			interrupts = <67>;
-			ti,hwmods = "timer1";
-			ti,timer-alwon;
-			clocks = <&timer1_fck>;
+		timer1_target: target-module@4802e000 {
+			compatible = "ti,sysc-omap4-timer", "ti,sysc";
+			reg = <0x4802e000 0x4>,
+			      <0x4802e010 0x4>;
+			reg-names = "rev", "sysc";
+			ti,sysc-mask = <SYSC_OMAP4_SOFTRESET>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>,
+					<SYSC_IDLE_SMART_WKUP>;
+			clocks = <&alwon_clkctrl DM816_TIMER1_CLKCTRL 0>;
 			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x4802e000 0x1000>;
+
+			timer1: timer@0 {
+				compatible = "ti,dm816-timer";
+				reg = <0 0x1000>;
+				interrupts = <67>;
+				ti,timer-alwon;
+				clocks = <&alwon_clkctrl DM816_TIMER1_CLKCTRL 0>;
+				clock-names = "fck";
+			};
 		};
 
-		timer2: timer@48040000 {
-			compatible = "ti,dm816-timer";
-			reg = <0x48040000 0x2000>;
-			interrupts = <68>;
-			ti,hwmods = "timer2";
-			clocks = <&timer2_fck>;
+		timer2_target: target-module@48040000 {
+			compatible = "ti,sysc-omap4-timer", "ti,sysc";
+			reg = <0x48040000 0x4>,
+			      <0x48040010 0x4>;
+			reg-names = "rev", "sysc";
+			ti,sysc-mask = <SYSC_OMAP4_SOFTRESET>;
+			ti,sysc-sidle = <SYSC_IDLE_FORCE>,
+					<SYSC_IDLE_NO>,
+					<SYSC_IDLE_SMART>,
+					<SYSC_IDLE_SMART_WKUP>;
+			clocks = <&alwon_clkctrl DM816_TIMER2_CLKCTRL 0>;
 			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x48040000 0x1000>;
+
+			timer2: timer@0 {
+				compatible = "ti,dm816-timer";
+				reg = <0 0x1000>;
+				interrupts = <68>;
+				clocks = <&alwon_clkctrl DM816_TIMER2_CLKCTRL 0>;
+				clock-names = "fck";
+			};
 		};
 
 		timer3: timer@48042000 {
@@ -642,3 +674,23 @@ wd_timer2: wd_timer@480c2000 {
 };
 
 #include "dm816x-clocks.dtsi"
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
diff --git a/arch/arm/mach-omap2/board-generic.c b/arch/arm/mach-omap2/board-generic.c
--- a/arch/arm/mach-omap2/board-generic.c
+++ b/arch/arm/mach-omap2/board-generic.c
@@ -201,7 +201,7 @@ DT_MACHINE_START(TI814X_DT, "Generic ti814x (Flattened Device Tree)")
 	.init_early	= ti814x_init_early,
 	.init_machine	= omap_generic_init,
 	.init_late	= ti81xx_init_late,
-	.init_time	= omap3_gptimer_timer_init,
+	.init_time	= omap_init_time_of,
 	.dt_compat	= ti814x_boards_compat,
 	.restart	= ti81xx_restart,
 MACHINE_END
@@ -218,7 +218,7 @@ DT_MACHINE_START(TI816X_DT, "Generic ti816x (Flattened Device Tree)")
 	.init_early	= ti816x_init_early,
 	.init_machine	= omap_generic_init,
 	.init_late	= ti81xx_init_late,
-	.init_time	= omap3_gptimer_timer_init,
+	.init_time	= omap_init_time_of,
 	.dt_compat	= ti816x_boards_compat,
 	.restart	= ti81xx_restart,
 MACHINE_END
diff --git a/arch/arm/mach-omap2/omap_hwmod_81xx_data.c b/arch/arm/mach-omap2/omap_hwmod_81xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_81xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_81xx_data.c
@@ -690,76 +690,6 @@ static struct omap_hwmod_class dm816x_timer_hwmod_class = {
 	.sysc = &dm816x_timer_sysc,
 };
 
-static struct omap_hwmod dm814x_timer1_hwmod = {
-	.name		= "timer1",
-	.clkdm_name	= "alwon_l3s_clkdm",
-	.main_clk	= "timer1_fck",
-	.class		= &dm816x_timer_hwmod_class,
-	.flags		= HWMOD_NO_IDLEST,
-};
-
-static struct omap_hwmod_ocp_if dm814x_l4_ls__timer1 = {
-	.master		= &dm81xx_l4_ls_hwmod,
-	.slave		= &dm814x_timer1_hwmod,
-	.clk		= "sysclk6_ck",
-	.user		= OCP_USER_MPU,
-};
-
-static struct omap_hwmod dm816x_timer1_hwmod = {
-	.name		= "timer1",
-	.clkdm_name	= "alwon_l3s_clkdm",
-	.main_clk	= "timer1_fck",
-	.prcm		= {
-		.omap4 = {
-			.clkctrl_offs = DM816X_CM_ALWON_TIMER_1_CLKCTRL,
-			.modulemode = MODULEMODE_SWCTRL,
-		},
-	},
-	.class		= &dm816x_timer_hwmod_class,
-};
-
-static struct omap_hwmod_ocp_if dm816x_l4_ls__timer1 = {
-	.master		= &dm81xx_l4_ls_hwmod,
-	.slave		= &dm816x_timer1_hwmod,
-	.clk		= "sysclk6_ck",
-	.user		= OCP_USER_MPU,
-};
-
-static struct omap_hwmod dm814x_timer2_hwmod = {
-	.name		= "timer2",
-	.clkdm_name	= "alwon_l3s_clkdm",
-	.main_clk	= "timer2_fck",
-	.class		= &dm816x_timer_hwmod_class,
-	.flags		= HWMOD_NO_IDLEST,
-};
-
-static struct omap_hwmod_ocp_if dm814x_l4_ls__timer2 = {
-	.master		= &dm81xx_l4_ls_hwmod,
-	.slave		= &dm814x_timer2_hwmod,
-	.clk		= "sysclk6_ck",
-	.user		= OCP_USER_MPU,
-};
-
-static struct omap_hwmod dm816x_timer2_hwmod = {
-	.name		= "timer2",
-	.clkdm_name	= "alwon_l3s_clkdm",
-	.main_clk	= "timer2_fck",
-	.prcm		= {
-		.omap4 = {
-			.clkctrl_offs = DM816X_CM_ALWON_TIMER_2_CLKCTRL,
-			.modulemode = MODULEMODE_SWCTRL,
-		},
-	},
-	.class		= &dm816x_timer_hwmod_class,
-};
-
-static struct omap_hwmod_ocp_if dm816x_l4_ls__timer2 = {
-	.master		= &dm81xx_l4_ls_hwmod,
-	.slave		= &dm816x_timer2_hwmod,
-	.clk		= "sysclk6_ck",
-	.user		= OCP_USER_MPU,
-};
-
 static struct omap_hwmod dm816x_timer3_hwmod = {
 	.name		= "timer3",
 	.clkdm_name	= "alwon_l3s_clkdm",
@@ -1288,8 +1218,6 @@ static struct omap_hwmod_ocp_if *dm814x_hwmod_ocp_ifs[] __initdata = {
 	&dm814x_l4_ls__mmc1,
 	&dm814x_l4_ls__mmc2,
 	&ti81xx_l4_ls__rtc,
-	&dm814x_l4_ls__timer1,
-	&dm814x_l4_ls__timer2,
 	&dm81xx_alwon_l3_slow__gpmc,
 	&dm814x_default_l3_slow__usbss,
 	&dm814x_alwon_l3_med__mmc3,
@@ -1318,8 +1246,6 @@ static struct omap_hwmod_ocp_if *dm816x_hwmod_ocp_ifs[] __initdata = {
 	&dm81xx_l4_ls__elm,
 	&ti81xx_l4_ls__rtc,
 	&dm816x_l4_ls__mmc1,
-	&dm816x_l4_ls__timer1,
-	&dm816x_l4_ls__timer2,
 	&dm816x_l4_ls__timer3,
 	&dm816x_l4_ls__timer4,
 	&dm816x_l4_ls__timer5,
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

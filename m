Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109DD11BCB8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:15:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdpntksVeaDGg7c0fAw8DMhrvM7RfG1BujCuGEa5/s8=; b=DJiscQFtOfxTMf
	6JnIapLlFAAbfulsaxx7CosSQWMwwyaqxxg6NAWLjUnErORm5jUNtGGVWMTG/fRcXVHgjfDVj4sPx
	PE30+eltM9lkEXh73igSf56PetkjRE7Qrti18AxEHImceYiBM4Zh9pNs07Kmchyjs4oxZjWqmR0x3
	EtIu+EKsEZ0OWc1dBlyEdqzIJQKNWDOzXJp5WFgQuNAbiH9v3eZ5HIw/lFYY+jD+gUe6g7nFTfhAD
	PIcD/e7ZMkRY8zHoNH7HMq4Bv/YuyjjcJKsPBgdeeb+SQCKjtED/+yHm+B3p11FW1QYlaQOmoBkDv
	M7w/SuokpgRpAXV9NJBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7SS-00071w-4C; Wed, 11 Dec 2019 19:15:36 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7PP-0002wf-3F
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:12:28 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 7FA6F80FA;
 Wed, 11 Dec 2019 19:13:05 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 11/13] ARM: OMAP2+: Drop legacy platform data for omap4 slimbus
Date: Wed, 11 Dec 2019 11:12:04 -0800
Message-Id: <20191211191206.12190-12-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211191206.12190-1-tony@atomide.com>
References: <20191211191206.12190-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_111227_209278_1BED5D01 
X-CRM114-Status: UNSURE (   8.48  )
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

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap4-l4.dtsi            |  1 -
 arch/arm/boot/dts/omap4.dtsi               |  1 -
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c | 93 ----------------------
 3 files changed, 95 deletions(-)

diff --git a/arch/arm/boot/dts/omap4-l4.dtsi b/arch/arm/boot/dts/omap4-l4.dtsi
--- a/arch/arm/boot/dts/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/omap4-l4.dtsi
@@ -1881,7 +1881,6 @@ i2c2: i2c@0 {
 
 		target-module@76000 {			/* 0x48076000, ap 39 38.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "slimbus2";
 			reg = <0x76000 0x4>,
 			      <0x76010 0x4>;
 			reg-names = "rev", "sysc";
diff --git a/arch/arm/boot/dts/omap4.dtsi b/arch/arm/boot/dts/omap4.dtsi
--- a/arch/arm/boot/dts/omap4.dtsi
+++ b/arch/arm/boot/dts/omap4.dtsi
@@ -216,7 +216,6 @@ mmu_ipu: mmu@55082000 {
 		};
 		target-module@4012c000 {
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "slimbus1";
 			reg = <0x4012c000 0x4>,
 			      <0x4012c010 0x4>;
 			reg-names = "rev", "sysc";
diff --git a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
@@ -1187,72 +1187,6 @@ static struct omap_hwmod omap44xx_sl2if_hwmod = {
 	},
 };
 
-/*
- * 'slimbus' class
- * bidirectional, multi-drop, multi-channel two-line serial interface between
- * the device and external components
- */
-
-static struct omap_hwmod_class_sysconfig omap44xx_slimbus_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.sysc_flags	= (SYSC_HAS_RESET_STATUS | SYSC_HAS_SIDLEMODE |
-			   SYSC_HAS_SOFTRESET),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-			   SIDLE_SMART_WKUP),
-	.sysc_fields	= &omap_hwmod_sysc_type2,
-};
-
-static struct omap_hwmod_class omap44xx_slimbus_hwmod_class = {
-	.name	= "slimbus",
-	.sysc	= &omap44xx_slimbus_sysc,
-};
-
-/* slimbus1 */
-static struct omap_hwmod_opt_clk slimbus1_opt_clks[] = {
-	{ .role = "fclk_1", .clk = "slimbus1_fclk_1" },
-	{ .role = "fclk_0", .clk = "slimbus1_fclk_0" },
-	{ .role = "fclk_2", .clk = "slimbus1_fclk_2" },
-	{ .role = "slimbus_clk", .clk = "slimbus1_slimbus_clk" },
-};
-
-static struct omap_hwmod omap44xx_slimbus1_hwmod = {
-	.name		= "slimbus1",
-	.class		= &omap44xx_slimbus_hwmod_class,
-	.clkdm_name	= "abe_clkdm",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP4_CM1_ABE_SLIMBUS_CLKCTRL_OFFSET,
-			.context_offs = OMAP4_RM_ABE_SLIMBUS_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-	.opt_clks	= slimbus1_opt_clks,
-	.opt_clks_cnt	= ARRAY_SIZE(slimbus1_opt_clks),
-};
-
-/* slimbus2 */
-static struct omap_hwmod_opt_clk slimbus2_opt_clks[] = {
-	{ .role = "fclk_1", .clk = "slimbus2_fclk_1" },
-	{ .role = "fclk_0", .clk = "slimbus2_fclk_0" },
-	{ .role = "slimbus_clk", .clk = "slimbus2_slimbus_clk" },
-};
-
-static struct omap_hwmod omap44xx_slimbus2_hwmod = {
-	.name		= "slimbus2",
-	.class		= &omap44xx_slimbus_hwmod_class,
-	.clkdm_name	= "l4_per_clkdm",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP4_CM_L4PER_SLIMBUS2_CLKCTRL_OFFSET,
-			.context_offs = OMAP4_RM_L4PER_SLIMBUS2_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-	.opt_clks	= slimbus2_opt_clks,
-	.opt_clks_cnt	= ARRAY_SIZE(slimbus2_opt_clks),
-};
-
 /*
  * 'timer' class
  * general purpose timer module with accurate 1ms tick
@@ -1988,30 +1922,6 @@ static struct omap_hwmod_ocp_if __maybe_unused omap44xx_l3_main_2__sl2if = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_abe -> slimbus1 */
-static struct omap_hwmod_ocp_if omap44xx_l4_abe__slimbus1 = {
-	.master		= &omap44xx_l4_abe_hwmod,
-	.slave		= &omap44xx_slimbus1_hwmod,
-	.clk		= "ocp_abe_iclk",
-	.user		= OCP_USER_MPU,
-};
-
-/* l4_abe -> slimbus1 (dma) */
-static struct omap_hwmod_ocp_if omap44xx_l4_abe__slimbus1_dma = {
-	.master		= &omap44xx_l4_abe_hwmod,
-	.slave		= &omap44xx_slimbus1_hwmod,
-	.clk		= "ocp_abe_iclk",
-	.user		= OCP_USER_SDMA,
-};
-
-/* l4_per -> slimbus2 */
-static struct omap_hwmod_ocp_if omap44xx_l4_per__slimbus2 = {
-	.master		= &omap44xx_l4_per_hwmod,
-	.slave		= &omap44xx_slimbus2_hwmod,
-	.clk		= "l4_div_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_wkup -> timer1 */
 static struct omap_hwmod_ocp_if omap44xx_l4_wkup__timer1 = {
 	.master		= &omap44xx_l4_wkup_hwmod,
@@ -2131,9 +2041,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_l4_wkup__prm,
 	&omap44xx_l4_wkup__scrm,
 	/* &omap44xx_l3_main_2__sl2if, */
-	&omap44xx_l4_abe__slimbus1,
-	&omap44xx_l4_abe__slimbus1_dma,
-	&omap44xx_l4_per__slimbus2,
 	&omap44xx_l4_wkup__timer1,
 	/* &omap44xx_l4_cfg__usb_host_fs, */
 	&omap44xx_l4_cfg__usb_host_hs,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

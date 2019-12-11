Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F62C11BA11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOx0Yg6ixCG/Pw4CAK6X9mfUFt3eHCTtrBcAQHKIkms=; b=omXXB5sIDuzuwT
	mXgEEjjHC+DpyZ4GrkQxciGU6WIcgEeGGHj/zshM2inB6MLKqzMXycgBke04JNa9mz1mvbAHeKvnP
	TnExtpaOUijRHexCeE5kMsGTOXT+/M07l2hBmqm9lRcwXqUSaqFCgSO/0o++iwP36qAPtP1EQJC1c
	CF52RB2DVp1sQkk75Ioi8SH6Udsf7apdD/PLBE4ThOH9KlVc7ZTr53SalegF3HfiuK7lopatsadWn
	AYcO76Yhtwb7uVHQvzCcZlcMv3H5K4K0kBzAsV4iUNYViP32CIlkbav/RoibSqUW9+U1LkJyaoeYL
	mRv+J7Xp2xkEMa+ARAJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5gL-0007NQ-Oz; Wed, 11 Dec 2019 17:21:49 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5f3-0006SI-JC
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:20:31 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id EBA9B80FA;
 Wed, 11 Dec 2019 17:21:07 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 05/16] ARM: OMAP2+: Drop legacy platform data for omap5
 spinlock
Date: Wed, 11 Dec 2019 09:20:03 -0800
Message-Id: <20191211172014.35201-6-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211172014.35201-1-tony@atomide.com>
References: <20191211172014.35201-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092029_702926_F76E81AF 
X-CRM114-Status: UNSURE (   8.03  )
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

Cc: Suman Anna <s-anna@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap5-l4.dtsi            |  1 -
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c | 43 ----------------------
 2 files changed, 44 deletions(-)

diff --git a/arch/arm/boot/dts/omap5-l4.dtsi b/arch/arm/boot/dts/omap5-l4.dtsi
--- a/arch/arm/boot/dts/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/omap5-l4.dtsi
@@ -627,7 +627,6 @@ mbox_dsp: mbox_dsp {
 
 		target-module@76000 {			/* 0x4a0f6000, ap 27 0c.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "spinlock";
 			reg = <0x76000 0x4>,
 			      <0x76010 0x4>,
 			      <0x76014 0x4>;
diff --git a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
@@ -684,40 +684,6 @@ static struct omap_hwmod omap54xx_mpu_hwmod = {
 	},
 };
 
-/*
- * 'spinlock' class
- * spinlock provides hardware assistance for synchronizing the processes
- * running on multiple processors
- */
-
-static struct omap_hwmod_class_sysconfig omap54xx_spinlock_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.syss_offs	= 0x0014,
-	.sysc_flags	= (SYSC_HAS_AUTOIDLE | SYSC_HAS_CLOCKACTIVITY |
-			   SYSC_HAS_ENAWAKEUP | SYSC_HAS_SIDLEMODE |
-			   SYSC_HAS_SOFTRESET | SYSS_HAS_RESET_STATUS),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class omap54xx_spinlock_hwmod_class = {
-	.name	= "spinlock",
-	.sysc	= &omap54xx_spinlock_sysc,
-};
-
-/* spinlock */
-static struct omap_hwmod omap54xx_spinlock_hwmod = {
-	.name		= "spinlock",
-	.class		= &omap54xx_spinlock_hwmod_class,
-	.clkdm_name	= "l4cfg_clkdm",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP54XX_CM_L4CFG_SPINLOCK_CLKCTRL_OFFSET,
-			.context_offs = OMAP54XX_RM_L4CFG_SPINLOCK_CONTEXT_OFFSET,
-		},
-	},
-};
 
 /*
  * 'ocp2scp' class
@@ -1262,14 +1228,6 @@ static struct omap_hwmod_ocp_if omap54xx_l4_cfg__mpu = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_cfg -> spinlock */
-static struct omap_hwmod_ocp_if omap54xx_l4_cfg__spinlock = {
-	.master		= &omap54xx_l4_cfg_hwmod,
-	.slave		= &omap54xx_spinlock_hwmod,
-	.clk		= "l4_root_clk_div",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_cfg -> ocp2scp1 */
 static struct omap_hwmod_ocp_if omap54xx_l4_cfg__ocp2scp1 = {
 	.master		= &omap54xx_l4_cfg_hwmod,
@@ -1341,7 +1299,6 @@ static struct omap_hwmod_ocp_if *omap54xx_hwmod_ocp_ifs[] __initdata = {
 	&omap54xx_l3_main_2__mmu_ipu,
 	&omap54xx_l4_wkup__kbd,
 	&omap54xx_l4_cfg__mpu,
-	&omap54xx_l4_cfg__spinlock,
 	&omap54xx_l4_cfg__ocp2scp1,
 	&omap54xx_l4_wkup__timer1,
 	&omap54xx_l4_cfg__usb_host_hs,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

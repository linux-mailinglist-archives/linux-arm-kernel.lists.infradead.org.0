Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2313711BA14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:22:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXf2tAII3dnL52UV33K0pbfIPNZotLHp286frU29Lwk=; b=sfN2Hqkcba4ZGh
	GgNqRQ3FYd3ZodxCfOIgsvi1DCA67OP5x47I/8LCyl+ZPhtKUB4SoFOgd4C9uALvWKMzDEnvxBxHz
	Rjqd3u8pWtmrPBTMW46Z5bn2Yd5/oERHAdtDfiYYGzElhODkEPPp1yzsfoRCwtNQskvVLNTZpnyrs
	1WEJ9+ocHBKq06PnVYXoCITWS1h8yJ5orPqSKsncSsUKC5txc/9HTh/2S+lZJPLecIypliNIY3J6m
	ePnED76ku2EKBnJpXwXmmT6t1xFLbd3Tr13dRL9mcDSZfdRbvDE9fXJHAUfWAbdQT8lntgagEx7SC
	bHmcYzJg9XheZSrL5VBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5gc-0007fb-Vm; Wed, 11 Dec 2019 17:22:07 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5f5-0006Tn-C4
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:20:33 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 8386781A8;
 Wed, 11 Dec 2019 17:21:09 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 06/16] ARM: OMAP2+: Drop legacy platform data for dra7 spinlock
Date: Wed, 11 Dec 2019 09:20:04 -0800
Message-Id: <20191211172014.35201-7-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211172014.35201-1-tony@atomide.com>
References: <20191211172014.35201-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092031_528462_D77F198F 
X-CRM114-Status: UNSURE (   7.48  )
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
 arch/arm/boot/dts/dra7-l4.dtsi            |  1 -
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c | 43 -----------------------
 2 files changed, 44 deletions(-)

diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
--- a/arch/arm/boot/dts/dra7-l4.dtsi
+++ b/arch/arm/boot/dts/dra7-l4.dtsi
@@ -471,7 +471,6 @@ mailbox1: mailbox@0 {
 
 		target-module@f6000 {			/* 0x4a0f6000, ap 25 78.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "spinlock";
 			reg = <0xf6000 0x4>,
 			      <0xf6010 0x4>,
 			      <0xf6014 0x4>;
diff --git a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
@@ -962,40 +962,6 @@ static struct omap_hwmod dra7xx_smartreflex_mpu_hwmod = {
 	.dev_attr	= &smartreflex_mpu_dev_attr,
 };
 
-/*
- * 'spinlock' class
- *
- */
-
-static struct omap_hwmod_class_sysconfig dra7xx_spinlock_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.syss_offs	= 0x0014,
-	.sysc_flags	= (SYSC_HAS_AUTOIDLE | SYSC_HAS_ENAWAKEUP |
-			   SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET |
-			   SYSS_HAS_RESET_STATUS),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class dra7xx_spinlock_hwmod_class = {
-	.name	= "spinlock",
-	.sysc	= &dra7xx_spinlock_sysc,
-};
-
-/* spinlock */
-static struct omap_hwmod dra7xx_spinlock_hwmod = {
-	.name		= "spinlock",
-	.class		= &dra7xx_spinlock_hwmod_class,
-	.clkdm_name	= "l4cfg_clkdm",
-	.main_clk	= "l3_iclk_div",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = DRA7XX_CM_L4CFG_SPINLOCK_CLKCTRL_OFFSET,
-			.context_offs = DRA7XX_RM_L4CFG_SPINLOCK_CONTEXT_OFFSET,
-		},
-	},
-};
 
 /*
  * 'timer' class
@@ -1536,14 +1502,6 @@ static struct omap_hwmod_ocp_if dra7xx_l4_cfg__smartreflex_mpu = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_cfg -> spinlock */
-static struct omap_hwmod_ocp_if dra7xx_l4_cfg__spinlock = {
-	.master		= &dra7xx_l4_cfg_hwmod,
-	.slave		= &dra7xx_spinlock_hwmod,
-	.clk		= "l3_iclk_div",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_wkup -> timer1 */
 static struct omap_hwmod_ocp_if dra7xx_l4_wkup__timer1 = {
 	.master		= &dra7xx_l4_wkup_hwmod,
@@ -1678,7 +1636,6 @@ static struct omap_hwmod_ocp_if *dra7xx_hwmod_ocp_ifs[] __initdata = {
 	&dra7xx_l4_cfg__sata,
 	&dra7xx_l4_cfg__smartreflex_core,
 	&dra7xx_l4_cfg__smartreflex_mpu,
-	&dra7xx_l4_cfg__spinlock,
 	&dra7xx_l4_wkup__timer1,
 	&dra7xx_l4_per1__timer2,
 	&dra7xx_l4_per1__timer3,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

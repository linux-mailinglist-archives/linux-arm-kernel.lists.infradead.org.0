Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F37411BCB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:15:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gV87/xORVq46Fjezw1K9L1Q/FDWC8RWuE8aXwWPVaA8=; b=CECS7GiBPFO65g
	dfrNL0Gz/qVv6V3tifBSi8G4aoJkYas5OeZNIG6yw9J4Ug5k77b7H0Bl73v29I3ow+E7BsUKIcyId
	XTm6HB08iiB5LpsLB1qk042Cz+5ubUwLzHtVPRF72XAN4H/eY67bb586HjHbSm9afuxNr08TezlaP
	yEtBER4jO0YHaEdaz7mvOG6IBQmDwBilTe01YWnvSB/hOAffycNNF4tJJHEIdWZo7rUMT0YQSQ9pG
	nz2U89FI/OMVmqoYMz1aV6dh8tv+wxkETpapZPe3hnMcBzctHZHexX/1Y9kjAIPpIHa9+yH9VUkZF
	HcRh4K+l2aqLu5oWWwCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7Ru-0005Ne-Jp; Wed, 11 Dec 2019 19:15:02 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7PN-0002yB-IE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:12:27 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 17A4A81A8;
 Wed, 11 Dec 2019 19:13:04 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 10/13] ARM: OMAP2+: Drop legacy platform data for omap5 kbd
Date: Wed, 11 Dec 2019 11:12:03 -0800
Message-Id: <20191211191206.12190-11-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211191206.12190-1-tony@atomide.com>
References: <20191211191206.12190-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_111225_679710_24E04E19 
X-CRM114-Status: UNSURE (   7.88  )
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
 arch/arm/boot/dts/omap5-l4.dtsi            |  1 -
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c | 42 ----------------------
 2 files changed, 43 deletions(-)

diff --git a/arch/arm/boot/dts/omap5-l4.dtsi b/arch/arm/boot/dts/omap5-l4.dtsi
--- a/arch/arm/boot/dts/omap5-l4.dtsi
+++ b/arch/arm/boot/dts/omap5-l4.dtsi
@@ -2363,7 +2363,6 @@ timer1: timer@0 {
 
 		target-module@c000 {			/* 0x4ae1c000, ap 11 1c.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "kbd";
 			reg = <0xc000 0x4>,
 			      <0xc010 0x4>;
 			reg-names = "rev", "sysc";
diff --git a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
@@ -559,39 +559,6 @@ static struct omap_hwmod omap54xx_emif2_hwmod = {
 	},
 };
 
-/*
- * 'kbd' class
- * keyboard controller
- */
-
-static struct omap_hwmod_class_sysconfig omap54xx_kbd_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.sysc_flags	= (SYSC_HAS_EMUFREE | SYSC_HAS_SIDLEMODE |
-			   SYSC_HAS_SOFTRESET),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class omap54xx_kbd_hwmod_class = {
-	.name	= "kbd",
-	.sysc	= &omap54xx_kbd_sysc,
-};
-
-/* kbd */
-static struct omap_hwmod omap54xx_kbd_hwmod = {
-	.name		= "kbd",
-	.class		= &omap54xx_kbd_hwmod_class,
-	.clkdm_name	= "wkupaon_clkdm",
-	.main_clk	= "sys_32k_ck",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP54XX_CM_WKUPAON_KBD_CLKCTRL_OFFSET,
-			.context_offs = OMAP54XX_RM_WKUPAON_KBD_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
 
 
 
@@ -1147,14 +1114,6 @@ static struct omap_hwmod_ocp_if omap54xx_mpu__emif2 = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_wkup -> kbd */
-static struct omap_hwmod_ocp_if omap54xx_l4_wkup__kbd = {
-	.master		= &omap54xx_l4_wkup_hwmod,
-	.slave		= &omap54xx_kbd_hwmod,
-	.clk		= "wkupaon_iclk_mux",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_cfg -> mpu */
 static struct omap_hwmod_ocp_if omap54xx_l4_cfg__mpu = {
 	.master		= &omap54xx_l4_cfg_hwmod,
@@ -1224,7 +1183,6 @@ static struct omap_hwmod_ocp_if *omap54xx_hwmod_ocp_ifs[] __initdata = {
 	&omap54xx_mpu__emif1,
 	&omap54xx_mpu__emif2,
 	&omap54xx_l3_main_2__mmu_ipu,
-	&omap54xx_l4_wkup__kbd,
 	&omap54xx_l4_cfg__mpu,
 	&omap54xx_l4_wkup__timer1,
 	&omap54xx_l4_cfg__usb_host_hs,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

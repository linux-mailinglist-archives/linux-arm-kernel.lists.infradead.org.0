Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 134A411BCA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:14:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EbjK7Cq0Ti/yHyYVWHEVt4qe3PvOvIFBpDSMtEvUSk=; b=YPb0V5iE0TOdVd
	F+gDTLTb/5tstZ3LAuYX3w8ujJqga6EdhF2iEbT4UmVqcTkYxsRqB9Y/70uxt9MeJ3sDEKUrIfnjI
	UpFSUoY8GxdIuIcOHilnqaGrGgj0PtfEV+OJUWoW6gq7qRbphDMFCV68wT1vXdt1+Xp8WmkLFcn0a
	41mkmgQ5pae8wU3v8gyeQLdPplS6AUARFPiyRtCH2l0QdftrWNCgSHIGr7j8bZueObn6mVrheu8fu
	q3HXSOprO50Ayf13+VQ84w4RmPGvmUym65D+8q31zuR9fRGQeriK0OoksSna/1U7dQvNPwOBY49l7
	8U14q0Qhd+wsX7PWrzug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7Qq-0004LI-6l; Wed, 11 Dec 2019 19:13:56 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7PH-0002k7-Ec
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:12:20 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 204118198;
 Wed, 11 Dec 2019 19:12:58 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 06/13] ARM: OMAP2+: Drop legacy platform data for omap4 hsi
Date: Wed, 11 Dec 2019 11:11:59 -0800
Message-Id: <20191211191206.12190-7-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211191206.12190-1-tony@atomide.com>
References: <20191211191206.12190-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_111219_554780_160CDA1B 
X-CRM114-Status: UNSURE (   7.71  )
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

Cc: Sebastian Reichel <sre@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap4-l4.dtsi            |  1 -
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c | 57 ----------------------
 2 files changed, 58 deletions(-)

diff --git a/arch/arm/boot/dts/omap4-l4.dtsi b/arch/arm/boot/dts/omap4-l4.dtsi
--- a/arch/arm/boot/dts/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/omap4-l4.dtsi
@@ -174,7 +174,6 @@ sdma: dma-controller@0 {
 
 		target-module@58000 {			/* 0x4a058000, ap 10 0e.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "hsi";
 			reg = <0x58000 0x4>,
 			      <0x58010 0x4>,
 			      <0x58014 0x4>;
diff --git a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
@@ -835,45 +835,6 @@ static struct omap_hwmod omap44xx_gpmc_hwmod = {
 };
 
 
-/*
- * 'hsi' class
- * mipi high-speed synchronous serial interface (multichannel and full-duplex
- * serial if)
- */
-
-static struct omap_hwmod_class_sysconfig omap44xx_hsi_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.syss_offs	= 0x0014,
-	.sysc_flags	= (SYSC_HAS_AUTOIDLE | SYSC_HAS_EMUFREE |
-			   SYSC_HAS_MIDLEMODE | SYSC_HAS_SIDLEMODE |
-			   SYSC_HAS_SOFTRESET | SYSS_HAS_RESET_STATUS),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-			   SIDLE_SMART_WKUP | MSTANDBY_FORCE | MSTANDBY_NO |
-			   MSTANDBY_SMART | MSTANDBY_SMART_WKUP),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class omap44xx_hsi_hwmod_class = {
-	.name	= "hsi",
-	.sysc	= &omap44xx_hsi_sysc,
-};
-
-/* hsi */
-static struct omap_hwmod omap44xx_hsi_hwmod = {
-	.name		= "hsi",
-	.class		= &omap44xx_hsi_hwmod_class,
-	.clkdm_name	= "l3_init_clkdm",
-	.main_clk	= "hsi_fck",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP4_CM_L3INIT_HSI_CLKCTRL_OFFSET,
-			.context_offs = OMAP4_RM_L3INIT_HSI_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_HWCTRL,
-		},
-	},
-};
-
 /*
  * 'ipu' class
  * imaging processor unit
@@ -1708,14 +1669,6 @@ static struct omap_hwmod_ocp_if omap44xx_fdif__l3_main_2 = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* hsi -> l3_main_2 */
-static struct omap_hwmod_ocp_if omap44xx_hsi__l3_main_2 = {
-	.master		= &omap44xx_hsi_hwmod,
-	.slave		= &omap44xx_l3_main_2_hwmod,
-	.clk		= "l3_div_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* ipu -> l3_main_2 */
 static struct omap_hwmod_ocp_if omap44xx_ipu__l3_main_2 = {
 	.master		= &omap44xx_ipu_hwmod,
@@ -2068,14 +2021,6 @@ static struct omap_hwmod_ocp_if omap44xx_l3_main_2__gpmc = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_cfg -> hsi */
-static struct omap_hwmod_ocp_if omap44xx_l4_cfg__hsi = {
-	.master		= &omap44xx_l4_cfg_hwmod,
-	.slave		= &omap44xx_hsi_hwmod,
-	.clk		= "l4_div_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l3_main_2 -> ipu */
 static struct omap_hwmod_ocp_if omap44xx_l3_main_2__ipu = {
 	.master		= &omap44xx_l3_main_2_hwmod,
@@ -2282,7 +2227,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_debugss__l3_main_2,
 	&omap44xx_dma_system__l3_main_2,
 	&omap44xx_fdif__l3_main_2,
-	&omap44xx_hsi__l3_main_2,
 	&omap44xx_ipu__l3_main_2,
 	&omap44xx_iss__l3_main_2,
 	&omap44xx_iva__l3_main_2,
@@ -2327,7 +2271,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_l4_per__dss_venc,
 	&omap44xx_l4_cfg__fdif,
 	&omap44xx_l3_main_2__gpmc,
-	&omap44xx_l4_cfg__hsi,
 	&omap44xx_l3_main_2__ipu,
 	&omap44xx_l3_main_2__iss,
 	/* &omap44xx_iva__sl2if, */
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

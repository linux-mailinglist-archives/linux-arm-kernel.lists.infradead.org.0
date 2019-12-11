Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBAB11BCA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gl+NgDQgNF5Wt8N3VW4ytSgcch5hDuZk9xdyV+YhN5w=; b=lpG9lbJk386Hl7
	XJDUTNtdtoHJo6p21awOVU5RzlbIpG6Ul7Is4W1sWrMn1bVOSNHb2W2QKos1/yFf5/MfuQzK4/z+q
	yuNv4vcVPTXKeZshWHp6vhz3BI2hcaRKYEoNMpmb/dq9RaY1+4bAJqJdc1sxgKKXITSAnRi16K9T3
	izVxcuWw8TZ77JHMosYIrxgjYh5tFhU86ETZso21ZUdKQzVOt7KCtRaoIwiPz04zMvvRXtLfxXYm1
	VXyDn2J5AwbJBkw5K52jMKQ4ag778iwOQi4EKks5l7Hhge7jYwCGGX1wIgx2D7JvofFGu1MhecINH
	VZkMSEgr2ZeRSeiflnnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7Qf-000456-IE; Wed, 11 Dec 2019 19:13:45 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7PG-0002lf-2C
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:12:19 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 9E06C8185;
 Wed, 11 Dec 2019 19:12:56 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 05/13] ARM: OMAP2+: Drop legacy platform data for am4 vpfe
Date: Wed, 11 Dec 2019 11:11:58 -0800
Message-Id: <20191211191206.12190-6-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211191206.12190-1-tony@atomide.com>
References: <20191211191206.12190-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_111218_173362_BCD04683 
X-CRM114-Status: UNSURE (   7.94  )
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

Cc: Benoit Parrot <bparrot@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/am437x-l4.dtsi           |  2 -
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c | 70 ----------------------
 2 files changed, 72 deletions(-)

diff --git a/arch/arm/boot/dts/am437x-l4.dtsi b/arch/arm/boot/dts/am437x-l4.dtsi
--- a/arch/arm/boot/dts/am437x-l4.dtsi
+++ b/arch/arm/boot/dts/am437x-l4.dtsi
@@ -2064,7 +2064,6 @@ gpio5: gpio@0 {
 
 		target-module@26000 {			/* 0x48326000, ap 86 66.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "vpfe0";
 			reg = <0x26000 0x4>,
 			      <0x26104 0x4>;
 			reg-names = "rev", "sysc";
@@ -2091,7 +2090,6 @@ vpfe0: vpfe@0 {
 
 		target-module@28000 {			/* 0x48328000, ap 75 0e.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "vpfe1";
 			reg = <0x28000 0x4>,
 			      <0x28104 0x4>;
 			reg-names = "rev", "sysc";
diff --git a/arch/arm/mach-omap2/omap_hwmod_43xx_data.c b/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
@@ -225,44 +225,6 @@ static struct omap_hwmod am43xx_dss_rfbi_hwmod = {
 };
 
 
-static struct omap_hwmod_class_sysconfig am43xx_vpfe_sysc = {
-	.rev_offs       = 0x0,
-	.sysc_offs      = 0x104,
-	.sysc_flags     = SYSC_HAS_MIDLEMODE | SYSC_HAS_SIDLEMODE,
-	.idlemodes      = (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-				MSTANDBY_FORCE | MSTANDBY_SMART | MSTANDBY_NO),
-	.sysc_fields    = &omap_hwmod_sysc_type2,
-};
-
-static struct omap_hwmod_class am43xx_vpfe_hwmod_class = {
-	.name           = "vpfe",
-	.sysc           = &am43xx_vpfe_sysc,
-};
-
-static struct omap_hwmod am43xx_vpfe0_hwmod = {
-	.name           = "vpfe0",
-	.class          = &am43xx_vpfe_hwmod_class,
-	.clkdm_name     = "l3s_clkdm",
-	.prcm           = {
-		.omap4  = {
-			.modulemode     = MODULEMODE_SWCTRL,
-			.clkctrl_offs   = AM43XX_CM_PER_VPFE0_CLKCTRL_OFFSET,
-		},
-	},
-};
-
-static struct omap_hwmod am43xx_vpfe1_hwmod = {
-	.name           = "vpfe1",
-	.class          = &am43xx_vpfe_hwmod_class,
-	.clkdm_name     = "l3s_clkdm",
-	.prcm           = {
-		.omap4  = {
-			.modulemode     = MODULEMODE_SWCTRL,
-			.clkctrl_offs   = AM43XX_CM_PER_VPFE1_CLKCTRL_OFFSET,
-		},
-	},
-};
-
 /* Interfaces */
 static struct omap_hwmod_ocp_if am43xx_l3_main__emif = {
 	.master		= &am33xx_l3_main_hwmod,
@@ -376,34 +338,6 @@ static struct omap_hwmod_ocp_if am43xx_l4_ls__dss_rfbi = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-static struct omap_hwmod_ocp_if am43xx_l3__vpfe0 = {
-	.master         = &am43xx_vpfe0_hwmod,
-	.slave          = &am33xx_l3_main_hwmod,
-	.clk            = "l3_gclk",
-	.user           = OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-static struct omap_hwmod_ocp_if am43xx_l3__vpfe1 = {
-	.master         = &am43xx_vpfe1_hwmod,
-	.slave          = &am33xx_l3_main_hwmod,
-	.clk            = "l3_gclk",
-	.user           = OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-static struct omap_hwmod_ocp_if am43xx_l4_ls__vpfe0 = {
-	.master         = &am33xx_l4_ls_hwmod,
-	.slave          = &am43xx_vpfe0_hwmod,
-	.clk            = "l4ls_gclk",
-	.user           = OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-static struct omap_hwmod_ocp_if am43xx_l4_ls__vpfe1 = {
-	.master         = &am33xx_l4_ls_hwmod,
-	.slave          = &am43xx_vpfe1_hwmod,
-	.clk            = "l4ls_gclk",
-	.user           = OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 static struct omap_hwmod_ocp_if *am43xx_hwmod_ocp_ifs[] __initdata = {
 	&am33xx_l4_wkup__synctimer,
 	&am43xx_l3_main__pruss,
@@ -438,10 +372,6 @@ static struct omap_hwmod_ocp_if *am43xx_hwmod_ocp_ifs[] __initdata = {
 	&am43xx_l4_ls__dss,
 	&am43xx_l4_ls__dss_dispc,
 	&am43xx_l4_ls__dss_rfbi,
-	&am43xx_l3__vpfe0,
-	&am43xx_l3__vpfe1,
-	&am43xx_l4_ls__vpfe0,
-	&am43xx_l4_ls__vpfe1,
 	NULL,
 };
 
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

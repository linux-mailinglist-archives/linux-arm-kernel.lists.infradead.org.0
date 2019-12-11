Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D0811BC9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Qc/HrfwX/ffciQPUMzWc6Dnd/3ITsopSyVsNOs4Eew=; b=MIijOcMyn1joh/
	Ja6QE6dmOYpdlYxdCI94f2pMaKvfLlAesEVTbj+GZp+0EqbojBktAo1ERXKYeU5WVOklrnaWvheRs
	hGbpKza0syqqfjGleQBEd2o56zaJxDGUmwTbYKqCWwsYIIub2d9kslSsfMnyWnLpWTlPsEsowN4xO
	rhThhvfngZAwwT4OjIC+faX+AfYU4zQ6SyZ7Z6SdHCjZHu01AZ+sqQWNMmi/gga0Xet/u1lzdNnk7
	O7kXNQWUvfcOKWK9ahTsCDZ8sw3rooAUvXomBluJFoTcfY5kJJtTqu0pUJ2gw0zIP4NZYIvag6Rzu
	fKXwCp7/mbn+nLJAKFrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7Pf-0002wb-Ao; Wed, 11 Dec 2019 19:12:43 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7PA-0002je-Bd
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:12:13 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 377B68185;
 Wed, 11 Dec 2019 19:12:51 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 01/13] ARM: OMAP2+: Drop legacy platform data for am4 ocp2scp
Date: Wed, 11 Dec 2019 11:11:54 -0800
Message-Id: <20191211191206.12190-2-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211191206.12190-1-tony@atomide.com>
References: <20191211191206.12190-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_111212_433643_AF3B4F7B 
X-CRM114-Status: UNSURE (   7.86  )
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

Cc: Keerthy <j-keerthy@ti.com>
Cc: Roger Quadros <rogerq@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/am437x-l4.dtsi           |  2 -
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c | 45 ----------------------
 2 files changed, 47 deletions(-)

diff --git a/arch/arm/boot/dts/am437x-l4.dtsi b/arch/arm/boot/dts/am437x-l4.dtsi
--- a/arch/arm/boot/dts/am437x-l4.dtsi
+++ b/arch/arm/boot/dts/am437x-l4.dtsi
@@ -2332,7 +2332,6 @@ usb1: usb@10000 {
 
 		target-module@a8000 {			/* 0x483a8000, ap 125 6c.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "ocp2scp0";
 			reg = <0xa8000 0x4>;
 			reg-names = "rev";
 			/* Domains (P, C): per_pwrdm, l4ls_clkdm */
@@ -2414,7 +2413,6 @@ usb2: usb@10000 {
 
 		target-module@e8000 {			/* 0x483e8000, ap 129 78.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "ocp2scp1";
 			reg = <0xe8000 0x4>;
 			reg-names = "rev";
 			/* Domains (P, C): per_pwrdm, l4ls_clkdm */
diff --git a/arch/arm/mach-omap2/omap_hwmod_43xx_data.c b/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
@@ -112,35 +112,6 @@ static struct omap_hwmod am43xx_synctimer_hwmod = {
 	},
 };
 
-static struct omap_hwmod_class am43xx_ocp2scp_hwmod_class = {
-	.name	= "ocp2scp",
-};
-
-static struct omap_hwmod am43xx_ocp2scp0_hwmod = {
-	.name		= "ocp2scp0",
-	.class		= &am43xx_ocp2scp_hwmod_class,
-	.clkdm_name	= "l4ls_clkdm",
-	.main_clk	= "l4ls_gclk",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = AM43XX_CM_PER_USBPHYOCP2SCP0_CLKCTRL_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
-static struct omap_hwmod am43xx_ocp2scp1_hwmod = {
-	.name		= "ocp2scp1",
-	.class		= &am43xx_ocp2scp_hwmod_class,
-	.clkdm_name	= "l4ls_clkdm",
-	.main_clk	= "l4ls_gclk",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs	= AM43XX_CM_PER_USBPHYOCP2SCP1_CLKCTRL_OFFSET,
-			.modulemode	= MODULEMODE_SWCTRL,
-		},
-	},
-};
 
 static struct omap_hwmod_class_sysconfig am43xx_usb_otg_ss_sysc = {
 	.rev_offs	= 0x0000,
@@ -363,20 +334,6 @@ static struct omap_hwmod_ocp_if am33xx_l4_wkup__synctimer = {
 	.user		= OCP_USER_MPU,
 };
 
-static struct omap_hwmod_ocp_if am43xx_l4_ls__ocp2scp0 = {
-	.master		= &am33xx_l4_ls_hwmod,
-	.slave		= &am43xx_ocp2scp0_hwmod,
-	.clk		= "l4ls_gclk",
-	.user		= OCP_USER_MPU,
-};
-
-static struct omap_hwmod_ocp_if am43xx_l4_ls__ocp2scp1 = {
-	.master		= &am33xx_l4_ls_hwmod,
-	.slave		= &am43xx_ocp2scp1_hwmod,
-	.clk		= "l4ls_gclk",
-	.user		= OCP_USER_MPU,
-};
-
 static struct omap_hwmod_ocp_if am43xx_l3_s__usbotgss0 = {
 	.master         = &am33xx_l3_s_hwmod,
 	.slave          = &am43xx_usb_otg_ss0_hwmod,
@@ -475,8 +432,6 @@ static struct omap_hwmod_ocp_if *am43xx_hwmod_ocp_ifs[] __initdata = {
 	&am33xx_l3_main__tptc1,
 	&am33xx_l3_main__tptc2,
 	&am33xx_l3_main__ocmc,
-	&am43xx_l4_ls__ocp2scp0,
-	&am43xx_l4_ls__ocp2scp1,
 	&am43xx_l3_s__usbotgss0,
 	&am43xx_l3_s__usbotgss1,
 	&am43xx_dss__l3_main,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

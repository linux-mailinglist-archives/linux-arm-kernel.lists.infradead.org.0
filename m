Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E6A11BCBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2i2ULvojOZQAuh+K/mU+TmFMUUZnO6em7N8KnZAECBo=; b=Z4hxFlu3aMcFpE
	fTFH6oLMIT53rIiy5wL30T325YSciSEzqycnppcnYgdFfrETLA9kRjQigO06k6CjfnQmJEKPWEhQi
	oqQCvVM1abGlxHmfDxpJlQhKVy78ZAGJ/sh8njnW/FdyrlChhckVorl/bK/UN7UD0bQj0A12XSlAd
	S/LUHc+CxBxhAh8tNTgE5uZ3tHX1ry2VEbpY7YyCw0U9OJOE7ZJR5e8cz7QWE9ihCsoTbX5lf9V2l
	2mdjGhVph5U8y/oCDNAzeQ74aPWj8BKEpKJ+hcPW4bo/nE5dvhft66r+Co2V0LJLr9X36J73k5/iy
	inF8j5MUCk1dRmMEgxNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7Sg-0007I4-Es; Wed, 11 Dec 2019 19:15:50 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7PS-0002wf-1R
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:12:32 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 87A5F81A8;
 Wed, 11 Dec 2019 19:13:08 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 13/13] ARM: OMAP2+: Drop legacy platform data for omap4 fdif
Date: Wed, 11 Dec 2019 11:12:06 -0800
Message-Id: <20191211191206.12190-14-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211191206.12190-1-tony@atomide.com>
References: <20191211191206.12190-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_111230_148650_E42432F6 
X-CRM114-Status: UNSURE (   8.69  )
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
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c | 62 ----------------------
 2 files changed, 63 deletions(-)

diff --git a/arch/arm/boot/dts/omap4-l4.dtsi b/arch/arm/boot/dts/omap4-l4.dtsi
--- a/arch/arm/boot/dts/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/omap4-l4.dtsi
@@ -715,7 +715,6 @@ target-module@8000 {			/* 0x4a108000, ap 63 62.0 */
 
 		target-module@a000 {			/* 0x4a10a000, ap 65 50.0 */
 			compatible = "ti,sysc-omap4", "ti,sysc";
-			ti,hwmods = "fdif";
 			reg = <0xa000 0x4>,
 			      <0xa010 0x4>;
 			reg-names = "rev", "sysc";
diff --git a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
@@ -752,50 +752,6 @@ static struct omap_hwmod omap44xx_emif2_hwmod = {
 	},
 };
 
-/*
- * 'fdif' class
- * face detection hw accelerator module
- */
-
-static struct omap_hwmod_class_sysconfig omap44xx_fdif_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	/*
-	 * FDIF needs 100 OCP clk cycles delay after a softreset before
-	 * accessing sysconfig again.
-	 * The lowest frequency at the moment for L3 bus is 100 MHz, so
-	 * 1usec delay is needed. Add an x2 margin to be safe (2 usecs).
-	 *
-	 * TODO: Indicate errata when available.
-	 */
-	.srst_udelay	= 2,
-	.sysc_flags	= (SYSC_HAS_MIDLEMODE | SYSC_HAS_RESET_STATUS |
-			   SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
-			   MSTANDBY_FORCE | MSTANDBY_NO | MSTANDBY_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type2,
-};
-
-static struct omap_hwmod_class omap44xx_fdif_hwmod_class = {
-	.name	= "fdif",
-	.sysc	= &omap44xx_fdif_sysc,
-};
-
-/* fdif */
-static struct omap_hwmod omap44xx_fdif_hwmod = {
-	.name		= "fdif",
-	.class		= &omap44xx_fdif_hwmod_class,
-	.clkdm_name	= "iss_clkdm",
-	.main_clk	= "fdif_fck",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP4_CM_CAM_FDIF_CLKCTRL_OFFSET,
-			.context_offs = OMAP4_RM_CAM_FDIF_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
 /*
  * 'gpmc' class
  * general purpose memory controller
@@ -1474,14 +1430,6 @@ static struct omap_hwmod_ocp_if omap44xx_dma_system__l3_main_2 = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* fdif -> l3_main_2 */
-static struct omap_hwmod_ocp_if omap44xx_fdif__l3_main_2 = {
-	.master		= &omap44xx_fdif_hwmod,
-	.slave		= &omap44xx_l3_main_2_hwmod,
-	.clk		= "l3_div_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* ipu -> l3_main_2 */
 static struct omap_hwmod_ocp_if omap44xx_ipu__l3_main_2 = {
 	.master		= &omap44xx_ipu_hwmod,
@@ -1818,14 +1766,6 @@ static struct omap_hwmod_ocp_if omap44xx_l4_per__dss_venc = {
 	.user		= OCP_USER_MPU,
 };
 
-/* l4_cfg -> fdif */
-static struct omap_hwmod_ocp_if omap44xx_l4_cfg__fdif = {
-	.master		= &omap44xx_l4_cfg_hwmod,
-	.slave		= &omap44xx_fdif_hwmod,
-	.clk		= "l4_div_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l3_main_2 -> gpmc */
 static struct omap_hwmod_ocp_if omap44xx_l3_main_2__gpmc = {
 	.master		= &omap44xx_l3_main_2_hwmod,
@@ -1983,7 +1923,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_mpu__l3_main_1,
 	&omap44xx_debugss__l3_main_2,
 	&omap44xx_dma_system__l3_main_2,
-	&omap44xx_fdif__l3_main_2,
 	&omap44xx_ipu__l3_main_2,
 	&omap44xx_iss__l3_main_2,
 	&omap44xx_iva__l3_main_2,
@@ -2026,7 +1965,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_l4_per__dss_rfbi,
 	&omap44xx_l3_main_2__dss_venc,
 	&omap44xx_l4_per__dss_venc,
-	&omap44xx_l4_cfg__fdif,
 	&omap44xx_l3_main_2__gpmc,
 	&omap44xx_l3_main_2__ipu,
 	&omap44xx_l3_main_2__iss,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

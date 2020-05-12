Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0FA1CFF9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 22:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucHJF3ZzlpagRg6KtmMwYbLoJbkaHV1JUIjePpX4jMc=; b=n+yfRjqv10kI8T
	rdJtXVoWlzwFSkL5q6ySXHls967lSTfeV2J9yTYeEbqRh1ZGeFQluci1V772JWAH2SxHItSo0iiIp
	3SmBWHKjLspJgrRjQ1vPIEnyG9bA9rHnWO9ekelw7ViKlMkgmh/2BlDkfkxeHtJ1HK2DwnQ+9xoZK
	DZrTWQBx/F5BzWJ0ixGtHn0Z0F7sVdRv6tdmgcBIyPVzx+D7zAfVTS6EtCNot910rJNGhSoMkamP6
	vLpGfr73PCtpN3Pa+3XNRHc3nrtNoCCpJAEX/kyO5bHMg3GtBc0X8D6NxHSUh78aj2eeCJlQ9CMVl
	WJN4x9A0xOrt3SdPVi6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbhw-0002YV-NB; Tue, 12 May 2020 20:40:56 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbgI-0007Fr-AG
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 20:39:16 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 8AC7881BD;
 Tue, 12 May 2020 20:40:01 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 5/6] ARM: dts: Configure am3 and am4 sgx for genpd and drop
 platform data
Date: Tue, 12 May 2020 13:38:51 -0700
Message-Id: <20200512203852.29499-6-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512203852.29499-1-tony@atomide.com>
References: <20200512203852.29499-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_133914_524258_35FEE616 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, "Andrew F . Davis" <afd@ti.com>,
 Tero Kristo <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can power off the SGX power domain when not in use when we configure
it for genpd. And with that change, we can now also drop the old unused
legacy platform data.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/am33xx.dtsi                 |  2 +
 arch/arm/boot/dts/am4372.dtsi                 |  2 +
 .../omap_hwmod_33xx_43xx_interconnect_data.c  | 16 --------
 .../omap_hwmod_33xx_43xx_ipblock_data.c       | 40 -------------------
 arch/arm/mach-omap2/omap_hwmod_33xx_data.c    |  2 -
 arch/arm/mach-omap2/omap_hwmod_43xx_data.c    |  2 -
 6 files changed, 4 insertions(+), 60 deletions(-)

diff --git a/arch/arm/boot/dts/am33xx.dtsi b/arch/arm/boot/dts/am33xx.dtsi
--- a/arch/arm/boot/dts/am33xx.dtsi
+++ b/arch/arm/boot/dts/am33xx.dtsi
@@ -577,6 +577,7 @@ target-module@56000000 {
 					<SYSC_IDLE_SMART>;
 			clocks = <&gfx_l3_clkctrl AM3_GFX_L3_GFX_CLKCTRL 0>;
 			clock-names = "fck";
+			power-domains = <&prm_gfx>;
 			resets = <&prm_gfx 0>;
 			reset-names = "rstctrl";
 			#address-cells = <1>;
@@ -616,6 +617,7 @@ prm_device: prm@f00 {
 	prm_gfx: prm@1100 {
 		compatible = "ti,am3-prm-inst", "ti,omap-prm-inst";
 		reg = <0x1100 0x100>;
+		#power-domain-cells = <0>;
 		#reset-cells = <1>;
 	};
 };
diff --git a/arch/arm/boot/dts/am4372.dtsi b/arch/arm/boot/dts/am4372.dtsi
--- a/arch/arm/boot/dts/am4372.dtsi
+++ b/arch/arm/boot/dts/am4372.dtsi
@@ -516,6 +516,7 @@ target-module@56000000 {
 					<SYSC_IDLE_SMART>;
 			clocks = <&gfx_l3_clkctrl AM4_GFX_L3_GFX_CLKCTRL 0>;
 			clock-names = "fck";
+			power-domains = <&prm_gfx>;
 			resets = <&prm_gfx 0>;
 			reset-names = "rstctrl";
 			#address-cells = <1>;
@@ -532,6 +533,7 @@ &prcm {
 	prm_gfx: prm@400 {
 		compatible = "ti,am4-prm-inst", "ti,omap-prm-inst";
 		reg = <0x400 0x100>;
+		#power-domain-cells = <0>;
 		#reset-cells = <1>;
 	};
 
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_interconnect_data.c
@@ -74,22 +74,6 @@ struct omap_hwmod_ocp_if am33xx_l3_s__l3_main = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* gfx -> l3 main */
-struct omap_hwmod_ocp_if am33xx_gfx__l3_main = {
-	.master		= &am33xx_gfx_hwmod,
-	.slave		= &am33xx_l3_main_hwmod,
-	.clk		= "dpll_core_m4_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-/* l3 main -> gfx */
-struct omap_hwmod_ocp_if am33xx_l3_main__gfx = {
-	.master		= &am33xx_l3_main_hwmod,
-	.slave		= &am33xx_gfx_hwmod,
-	.clk		= "dpll_core_m4_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4 wkup -> rtc */
 struct omap_hwmod_ocp_if am33xx_l4_wkup__rtc = {
 	.master		= &am33xx_l4_wkup_hwmod,
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_43xx_ipblock_data.c
@@ -133,30 +133,6 @@ struct omap_hwmod_class am33xx_wkup_m3_hwmod_class = {
 	.name		= "wkup_m3",
 };
 
-/* gfx */
-/* Pseudo hwmod for reset control purpose only */
-static struct omap_hwmod_class am33xx_gfx_hwmod_class = {
-	.name	= "gfx",
-};
-
-static struct omap_hwmod_rst_info am33xx_gfx_resets[] = {
-	{ .name = "gfx", .rst_shift = 0, .st_shift = 0},
-};
-
-struct omap_hwmod am33xx_gfx_hwmod = {
-	.name		= "gfx",
-	.class		= &am33xx_gfx_hwmod_class,
-	.clkdm_name	= "gfx_l3_clkdm",
-	.main_clk	= "gfx_fck_div_ck",
-	.prcm		= {
-		.omap4	= {
-			.modulemode	= MODULEMODE_SWCTRL,
-		},
-	},
-	.rst_lines	= am33xx_gfx_resets,
-	.rst_lines_cnt	= ARRAY_SIZE(am33xx_gfx_resets),
-};
-
 /*
  * 'prcm' class
  * power and reset manager (whole prcm infrastructure)
@@ -379,22 +355,14 @@ static void omap_hwmod_am33xx_clkctrl(void)
 	CLKCTRL(am33xx_l4_ls_hwmod, AM33XX_CM_PER_L4LS_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_l4_wkup_hwmod, AM33XX_CM_WKUP_L4WKUP_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_l3_main_hwmod, AM33XX_CM_PER_L3_CLKCTRL_OFFSET);
-	CLKCTRL(am33xx_gfx_hwmod, AM33XX_CM_GFX_GFX_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_mpu_hwmod , AM33XX_CM_MPU_MPU_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_l3_instr_hwmod , AM33XX_CM_PER_L3_INSTR_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_ocmcram_hwmod , AM33XX_CM_PER_OCMCRAM_CLKCTRL_OFFSET);
 }
 
-static void omap_hwmod_am33xx_rst(void)
-{
-	RSTCTRL(am33xx_gfx_hwmod, AM33XX_RM_GFX_RSTCTRL_OFFSET);
-	RSTST(am33xx_gfx_hwmod, AM33XX_RM_GFX_RSTST_OFFSET);
-}
-
 void omap_hwmod_am33xx_reg(void)
 {
 	omap_hwmod_am33xx_clkctrl();
-	omap_hwmod_am33xx_rst();
 }
 
 static void omap_hwmod_am43xx_clkctrl(void)
@@ -410,20 +378,12 @@ static void omap_hwmod_am43xx_clkctrl(void)
 	CLKCTRL(am33xx_l4_ls_hwmod, AM43XX_CM_PER_L4LS_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_l4_wkup_hwmod, AM43XX_CM_WKUP_L4WKUP_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_l3_main_hwmod, AM43XX_CM_PER_L3_CLKCTRL_OFFSET);
-	CLKCTRL(am33xx_gfx_hwmod, AM43XX_CM_GFX_GFX_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_mpu_hwmod , AM43XX_CM_MPU_MPU_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_l3_instr_hwmod , AM43XX_CM_PER_L3_INSTR_CLKCTRL_OFFSET);
 	CLKCTRL(am33xx_ocmcram_hwmod , AM43XX_CM_PER_OCMCRAM_CLKCTRL_OFFSET);
 }
 
-static void omap_hwmod_am43xx_rst(void)
-{
-	RSTCTRL(am33xx_gfx_hwmod, AM43XX_RM_GFX_RSTCTRL_OFFSET);
-	RSTST(am33xx_gfx_hwmod, AM43XX_RM_GFX_RSTST_OFFSET);
-}
-
 void omap_hwmod_am43xx_reg(void)
 {
 	omap_hwmod_am43xx_clkctrl();
-	omap_hwmod_am43xx_rst();
 }
diff --git a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_33xx_data.c
@@ -282,10 +282,8 @@ static struct omap_hwmod_ocp_if *am33xx_hwmod_ocp_ifs[] __initdata = {
 	&am33xx_l3_main__l4_hs,
 	&am33xx_l3_main__l3_s,
 	&am33xx_l3_main__l3_instr,
-	&am33xx_l3_main__gfx,
 	&am33xx_l3_s__l3_main,
 	&am33xx_wkup_m3__l4_wkup,
-	&am33xx_gfx__l3_main,
 	&am33xx_l3_main__debugss,
 	&am33xx_l4_wkup__wkup_m3,
 	&am33xx_l4_wkup__control,
diff --git a/arch/arm/mach-omap2/omap_hwmod_43xx_data.c b/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_43xx_data.c
@@ -243,11 +243,9 @@ static struct omap_hwmod_ocp_if *am43xx_hwmod_ocp_ifs[] __initdata = {
 	&am43xx_l3_main__l4_hs,
 	&am33xx_l3_main__l3_s,
 	&am33xx_l3_main__l3_instr,
-	&am33xx_l3_main__gfx,
 	&am33xx_l3_s__l3_main,
 	&am43xx_l3_main__emif,
 	&am43xx_wkup_m3__l4_wkup,
-	&am33xx_gfx__l3_main,
 	&am43xx_l4_wkup__wkup_m3,
 	&am43xx_l4_wkup__control,
 	&am43xx_l4_wkup__smartreflex0,
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

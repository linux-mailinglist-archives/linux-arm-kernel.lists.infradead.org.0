Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A6B1CFF9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 22:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Xx4emdZXXahx5MsNvGSH+1m4AejRt/h62NGl7VAdYw=; b=YMPob3S7hB8+ZV
	A6wUaIIXh2aOKDcAitbFIrtvbTxNk2OiSyB+q0lGlIEKHLC5lSdaRlzv4p4KZMRKidOG4lZoQsrMs
	VYz7SnxGMDC11yK5Fmoip0OrAQE0/yaFFfHf1oY8cduI9UOUnYANQ0aEAbkW9OCbSHZZdM+wtTqzo
	QuUbhOFxT/avHDe2RLXhKY86b3yAFfLm4YH27ODrqwmgSXwyiJbYYkd7Hfp5n+DsnwvbuB06tbPSL
	KSfdAzrk8pHv74jDx8YKwjK8fWAVzFXHNLOOV4krmSTcDxBag67RbRCMw6Pl6cmYt8JYEtUBJ6xkD
	pN6S19kdgnx+0d2DcXsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbhm-0002LE-Be; Tue, 12 May 2020 20:40:46 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbgL-0007Il-5l
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 20:39:19 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 3D16C812F;
 Tue, 12 May 2020 20:40:04 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 6/6] ARM: dts: Configure omap4 and 5 l4_abe for genpd and drop
 platform data
Date: Tue, 12 May 2020 13:38:52 -0700
Message-Id: <20200512203852.29499-7-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512203852.29499-1-tony@atomide.com>
References: <20200512203852.29499-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_133917_340570_69DEBCB5 
X-CRM114-Status: GOOD (  11.09  )
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

We can power off l4_abe domain when not in use when we configure it for
genpd. And with that change, we can now also drop the old unused legacy
platform data.

Note that we also need to now use "simple-pm-bus" instead of "simple-bus"
for PM runtime to get enabled for the bus.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap4-l4-abe.dtsi        |  7 +++--
 arch/arm/boot/dts/omap4.dtsi               |  6 ++++
 arch/arm/boot/dts/omap5-l4-abe.dtsi        |  7 +++--
 arch/arm/boot/dts/omap5.dtsi               |  6 ++++
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c | 33 ----------------------
 arch/arm/mach-omap2/omap_hwmod_54xx_data.c | 31 --------------------
 6 files changed, 22 insertions(+), 68 deletions(-)

diff --git a/arch/arm/boot/dts/omap4-l4-abe.dtsi b/arch/arm/boot/dts/omap4-l4-abe.dtsi
--- a/arch/arm/boot/dts/omap4-l4-abe.dtsi
+++ b/arch/arm/boot/dts/omap4-l4-abe.dtsi
@@ -1,14 +1,17 @@
 &l4_abe {						/* 0x40100000 */
-	compatible = "ti,omap4-l4-abe", "simple-bus";
+	compatible = "ti,omap4-l4-abe", "simple-pm-bus";
 	reg = <0x40100000 0x400>,
 	      <0x40100400 0x400>;
 	reg-names = "la", "ap";
+	power-domains = <&prm_abe>;
+	clocks = <&abe_clkctrl OMAP4_L4_ABE_CLKCTRL 0>;
+	clock-names = "fck";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x00000000 0x40100000 0x100000>,	/* segment 0 */
 		 <0x49000000 0x49000000 0x100000>;
 	segment@0 {					/* 0x40100000 */
-		compatible = "simple-bus";
+		compatible = "simple-pm-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges =
diff --git a/arch/arm/boot/dts/omap4.dtsi b/arch/arm/boot/dts/omap4.dtsi
--- a/arch/arm/boot/dts/omap4.dtsi
+++ b/arch/arm/boot/dts/omap4.dtsi
@@ -637,6 +637,12 @@ prm_tesla: prm@400 {
 		#reset-cells = <1>;
 	};
 
+	prm_abe: prm@500 {
+		compatible = "ti,omap4-prm-inst", "ti,omap-prm-inst";
+		reg = <0x500 0x100>;
+		#power-domain-cells = <0>;
+	};
+
 	prm_core: prm@700 {
 		compatible = "ti,omap4-prm-inst", "ti,omap-prm-inst";
 		reg = <0x700 0x100>;
diff --git a/arch/arm/boot/dts/omap5-l4-abe.dtsi b/arch/arm/boot/dts/omap5-l4-abe.dtsi
--- a/arch/arm/boot/dts/omap5-l4-abe.dtsi
+++ b/arch/arm/boot/dts/omap5-l4-abe.dtsi
@@ -1,14 +1,17 @@
 &l4_abe {						/* 0x40100000 */
-	compatible = "ti,omap5-l4-abe", "simple-bus";
+	compatible = "ti,omap5-l4-abe", "simple-pm-bus";
 	reg = <0x40100000 0x400>,
 	      <0x40100400 0x400>;
 	reg-names = "la", "ap";
+	power-domains = <&prm_abe>;
+	clocks = <&abe_clkctrl OMAP5_L4_ABE_CLKCTRL 0>;
+	clock-names = "fck";
 	#address-cells = <1>;
 	#size-cells = <1>;
 	ranges = <0x00000000 0x40100000 0x100000>,	/* segment 0 */
 		 <0x49000000 0x49000000 0x100000>;
 	segment@0 {					/* 0x40100000 */
-		compatible = "simple-bus";
+		compatible = "simple-pm-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
 		ranges =
diff --git a/arch/arm/boot/dts/omap5.dtsi b/arch/arm/boot/dts/omap5.dtsi
--- a/arch/arm/boot/dts/omap5.dtsi
+++ b/arch/arm/boot/dts/omap5.dtsi
@@ -563,6 +563,12 @@ prm_dsp: prm@400 {
 		#reset-cells = <1>;
 	};
 
+	prm_abe: prm@500 {
+		compatible = "ti,omap5-prm-inst", "ti,omap-prm-inst";
+		reg = <0x500 0x100>;
+		#power-domain-cells = <0>;
+	};
+
 	prm_core: prm@700 {
 		compatible = "ti,omap5-prm-inst", "ti,omap-prm-inst";
 		reg = <0x700 0x100>;
diff --git a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
@@ -124,21 +124,6 @@ static struct omap_hwmod_class omap44xx_l4_hwmod_class = {
 	.name	= "l4",
 };
 
-/* l4_abe */
-static struct omap_hwmod omap44xx_l4_abe_hwmod = {
-	.name		= "l4_abe",
-	.class		= &omap44xx_l4_hwmod_class,
-	.clkdm_name	= "abe_clkdm",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP4_CM1_ABE_L4ABE_CLKCTRL_OFFSET,
-			.context_offs = OMAP4_RM_ABE_AESS_CONTEXT_OFFSET,
-			.lostcontext_mask = OMAP4430_LOSTMEM_AESSMEM_MASK,
-			.flags	      = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
-		},
-	},
-};
-
 /* l4_cfg */
 static struct omap_hwmod omap44xx_l4_cfg_hwmod = {
 	.name		= "l4_cfg",
@@ -1007,22 +992,6 @@ static struct omap_hwmod_ocp_if omap44xx_l4_cfg__l3_main_3 = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l3_main_1 -> l4_abe */
-static struct omap_hwmod_ocp_if omap44xx_l3_main_1__l4_abe = {
-	.master		= &omap44xx_l3_main_1_hwmod,
-	.slave		= &omap44xx_l4_abe_hwmod,
-	.clk		= "l3_div_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-/* mpu -> l4_abe */
-static struct omap_hwmod_ocp_if omap44xx_mpu__l4_abe = {
-	.master		= &omap44xx_mpu_hwmod,
-	.slave		= &omap44xx_l4_abe_hwmod,
-	.clk		= "ocp_abe_iclk",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l3_main_1 -> l4_cfg */
 static struct omap_hwmod_ocp_if omap44xx_l3_main_1__l4_cfg = {
 	.master		= &omap44xx_l3_main_1_hwmod,
@@ -1266,8 +1235,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_l3_main_1__l3_main_3,
 	&omap44xx_l3_main_2__l3_main_3,
 	&omap44xx_l4_cfg__l3_main_3,
-	&omap44xx_l3_main_1__l4_abe,
-	&omap44xx_mpu__l4_abe,
 	&omap44xx_l3_main_1__l4_cfg,
 	&omap44xx_l3_main_2__l4_per,
 	&omap44xx_l4_cfg__l4_wkup,
diff --git a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_54xx_data.c
@@ -121,19 +121,6 @@ static struct omap_hwmod_class omap54xx_l4_hwmod_class = {
 	.name	= "l4",
 };
 
-/* l4_abe */
-static struct omap_hwmod omap54xx_l4_abe_hwmod = {
-	.name		= "l4_abe",
-	.class		= &omap54xx_l4_hwmod_class,
-	.clkdm_name	= "abe_clkdm",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP54XX_CM_ABE_L4_ABE_CLKCTRL_OFFSET,
-			.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
-		},
-	},
-};
-
 /* l4_cfg */
 static struct omap_hwmod omap54xx_l4_cfg_hwmod = {
 	.name		= "l4_cfg",
@@ -618,22 +605,6 @@ static struct omap_hwmod_ocp_if omap54xx_l4_cfg__l3_main_3 = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l3_main_1 -> l4_abe */
-static struct omap_hwmod_ocp_if omap54xx_l3_main_1__l4_abe = {
-	.master		= &omap54xx_l3_main_1_hwmod,
-	.slave		= &omap54xx_l4_abe_hwmod,
-	.clk		= "abe_iclk",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-/* mpu -> l4_abe */
-static struct omap_hwmod_ocp_if omap54xx_mpu__l4_abe = {
-	.master		= &omap54xx_mpu_hwmod,
-	.slave		= &omap54xx_l4_abe_hwmod,
-	.clk		= "abe_iclk",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l3_main_1 -> l4_cfg */
 static struct omap_hwmod_ocp_if omap54xx_l3_main_1__l4_cfg = {
 	.master		= &omap54xx_l3_main_1_hwmod,
@@ -741,8 +712,6 @@ static struct omap_hwmod_ocp_if *omap54xx_hwmod_ocp_ifs[] __initdata = {
 	&omap54xx_l3_main_1__l3_main_3,
 	&omap54xx_l3_main_2__l3_main_3,
 	&omap54xx_l4_cfg__l3_main_3,
-	&omap54xx_l3_main_1__l4_abe,
-	&omap54xx_mpu__l4_abe,
 	&omap54xx_l3_main_1__l4_cfg,
 	&omap54xx_l3_main_2__l4_per,
 	&omap54xx_l3_main_1__l4_wkup,
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

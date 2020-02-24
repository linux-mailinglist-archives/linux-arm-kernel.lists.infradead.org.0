Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEADF16B53D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 00:22:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7/v9TBbkG9r5YRPNFjeEok+D/EL7fxmmsIQPf15EcE=; b=EasmwwosaTkQWb
	iPSos5gpTxs1F5PAqpZ9tSembDMPy69soxeLp5joPj4qK9/IxqKqBfA+xtgyLg9V2srHS/IVJyyCP
	57UNUJ35UPJ8pYXD7NZxMmn23y66+OPykmmkGO+B6KdqqgkJZMuxvnPoXatQJjAd8MDvi89BkItLy
	G/v5zj8PiImaohexwSrXpybmlrhheQK7TSb1BQjlD7mGEThdcnHuO3fgI22S9mNJI+oqNO1wxMbQO
	HBLT9b3PaqUudzjrprl91fbO0U18f84v2HytxBjVXusP9EBRXkec6I5KZIBwqqLwKQPHfgJO1sn94
	mag5N5+ajMOWLcb5N/og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6N3D-00029S-VT; Mon, 24 Feb 2020 23:22:11 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6N34-00027y-Vg
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 23:22:04 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01ONLxv8102922;
 Mon, 24 Feb 2020 17:21:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582586519;
 bh=vay2LoEaC3QocU8ZaOGWOzTWKhalWfYPbKQHNAgB/Ng=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=qG1/srkwsrG6iml94j23LvjlTX1IBu2wBbcWS8N+DAPN+gqrQiiBvWx/33YYQnUWU
 F1Oupz+9/yR54f0tHY99960nlcJBb6ljBwHmhMxxeTMWVDJ8ozXHqbeE7pi6d/QK4z
 wLQBwcYNeJaD0Xt/LUBSufzAoyTIY5feGkoQitW8=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01ONLx8u109527
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 24 Feb 2020 17:21:59 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 24
 Feb 2020 17:21:59 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 24 Feb 2020 17:21:59 -0600
Received: from lelv0597.itg.ti.com (lelv0597.itg.ti.com [10.181.64.32])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01ONLxcu060845;
 Mon, 24 Feb 2020 17:21:59 -0600
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
 by lelv0597.itg.ti.com (8.14.7/8.14.7) with ESMTP id 01ONLx2W021241;
 Mon, 24 Feb 2020 17:21:59 -0600
From: Suman Anna <s-anna@ti.com>
To: Tony Lindgren <tony@atomide.com>
Subject: [PATCH 2/3] ARM: OMAP2+: Drop legacy platform data for OMAP4 DSP
Date: Mon, 24 Feb 2020 17:21:51 -0600
Message-ID: <20200224232152.25562-3-s-anna@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200224232152.25562-1-s-anna@ti.com>
References: <20200224232152.25562-1-s-anna@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_152203_125694_51EF7E50 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 Suman Anna <s-anna@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The OMAP4 DSP hwmod is used in DT, but the DT node is not
probing any real driver. The DSP device-tree node shall be
updated as per the new OMAP remoteproc bindings with the
underneath MMU device relying on the ti-sysc infrastructure.

Drop the legacy hwmod data for the DSP device along with the
custom ti,hwmods property. They have to be dropped together
since the early platform data init code is based on the custom
ti,hwmods property.

Signed-off-by: Suman Anna <s-anna@ti.com>
---
 arch/arm/boot/dts/omap4.dtsi               |  1 -
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c | 76 ----------------------
 2 files changed, 77 deletions(-)

diff --git a/arch/arm/boot/dts/omap4.dtsi b/arch/arm/boot/dts/omap4.dtsi
index 9a87440d0b9d..48b97f818a68 100644
--- a/arch/arm/boot/dts/omap4.dtsi
+++ b/arch/arm/boot/dts/omap4.dtsi
@@ -108,7 +108,6 @@
 
 		dsp {
 			compatible = "ti,omap3-c64";
-			ti,hwmods = "dsp";
 		};
 
 		iva {
diff --git a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
index b7c51ea8c9a6..1d4359a43cab 100644
--- a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
@@ -355,37 +355,6 @@ static struct omap_hwmod omap44xx_debugss_hwmod = {
 	},
 };
 
-/*
- * 'dsp' class
- * dsp sub-system
- */
-
-static struct omap_hwmod_class omap44xx_dsp_hwmod_class = {
-	.name	= "dsp",
-};
-
-/* dsp */
-static struct omap_hwmod_rst_info omap44xx_dsp_resets[] = {
-	{ .name = "dsp", .rst_shift = 0 },
-};
-
-static struct omap_hwmod omap44xx_dsp_hwmod = {
-	.name		= "dsp",
-	.class		= &omap44xx_dsp_hwmod_class,
-	.clkdm_name	= "tesla_clkdm",
-	.rst_lines	= omap44xx_dsp_resets,
-	.rst_lines_cnt	= ARRAY_SIZE(omap44xx_dsp_resets),
-	.main_clk	= "dpll_iva_m4x2_ck",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP4_CM_TESLA_TESLA_CLKCTRL_OFFSET,
-			.rstctrl_offs = OMAP4_RM_TESLA_RSTCTRL_OFFSET,
-			.context_offs = OMAP4_RM_TESLA_TESLA_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_HWCTRL,
-		},
-	},
-};
-
 /*
  * 'dss' class
  * display sub-system
@@ -1236,14 +1205,6 @@ static struct omap_hwmod_ocp_if omap44xx_ocp_wp_noc__l3_instr = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* dsp -> l3_main_1 */
-static struct omap_hwmod_ocp_if omap44xx_dsp__l3_main_1 = {
-	.master		= &omap44xx_dsp_hwmod,
-	.slave		= &omap44xx_l3_main_1_hwmod,
-	.clk		= "l3_div_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* dss -> l3_main_1 */
 static struct omap_hwmod_ocp_if omap44xx_dss__l3_main_1 = {
 	.master		= &omap44xx_dss_hwmod,
@@ -1364,14 +1325,6 @@ static struct omap_hwmod_ocp_if omap44xx_l4_cfg__l3_main_3 = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* dsp -> l4_abe */
-static struct omap_hwmod_ocp_if omap44xx_dsp__l4_abe = {
-	.master		= &omap44xx_dsp_hwmod,
-	.slave		= &omap44xx_l4_abe_hwmod,
-	.clk		= "ocp_abe_iclk",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l3_main_1 -> l4_abe */
 static struct omap_hwmod_ocp_if omap44xx_l3_main_1__l4_abe = {
 	.master		= &omap44xx_l3_main_1_hwmod,
@@ -1476,30 +1429,6 @@ static struct omap_hwmod_ocp_if omap44xx_l3_instr__debugss = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* dsp -> iva */
-static struct omap_hwmod_ocp_if omap44xx_dsp__iva = {
-	.master		= &omap44xx_dsp_hwmod,
-	.slave		= &omap44xx_iva_hwmod,
-	.clk		= "dpll_iva_m5x2_ck",
-	.user		= OCP_USER_DSP,
-};
-
-/* dsp -> sl2if */
-static struct omap_hwmod_ocp_if __maybe_unused omap44xx_dsp__sl2if = {
-	.master		= &omap44xx_dsp_hwmod,
-	.slave		= &omap44xx_sl2if_hwmod,
-	.clk		= "dpll_iva_m5x2_ck",
-	.user		= OCP_USER_DSP,
-};
-
-/* l4_cfg -> dsp */
-static struct omap_hwmod_ocp_if omap44xx_l4_cfg__dsp = {
-	.master		= &omap44xx_l4_cfg_hwmod,
-	.slave		= &omap44xx_dsp_hwmod,
-	.clk		= "l4_div_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l3_main_2 -> dss */
 static struct omap_hwmod_ocp_if omap44xx_l3_main_2__dss = {
 	.master		= &omap44xx_l3_main_2_hwmod,
@@ -1762,7 +1691,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_iva__l3_instr,
 	&omap44xx_l3_main_3__l3_instr,
 	&omap44xx_ocp_wp_noc__l3_instr,
-	&omap44xx_dsp__l3_main_1,
 	&omap44xx_dss__l3_main_1,
 	&omap44xx_l3_main_2__l3_main_1,
 	&omap44xx_l4_cfg__l3_main_1,
@@ -1778,7 +1706,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_l3_main_1__l3_main_3,
 	&omap44xx_l3_main_2__l3_main_3,
 	&omap44xx_l4_cfg__l3_main_3,
-	&omap44xx_dsp__l4_abe,
 	&omap44xx_l3_main_1__l4_abe,
 	&omap44xx_mpu__l4_abe,
 	&omap44xx_l3_main_1__l4_cfg,
@@ -1792,9 +1719,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_l4_wkup__ctrl_module_wkup,
 	&omap44xx_l4_wkup__ctrl_module_pad_wkup,
 	&omap44xx_l3_instr__debugss,
-	&omap44xx_dsp__iva,
-	/* &omap44xx_dsp__sl2if, */
-	&omap44xx_l4_cfg__dsp,
 	&omap44xx_l3_main_2__dss,
 	&omap44xx_l4_per__dss,
 	&omap44xx_l3_main_2__dss_dispc,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

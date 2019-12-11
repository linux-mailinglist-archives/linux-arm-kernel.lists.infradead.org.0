Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3F911BA30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:24:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iq2OYfQCHlWyz48iQA0WBKWEIrTyonNMKkEdFUpqlhw=; b=GOPrxYFDbbgGX4
	qjkZaqkrPhkXMXx9DxOd05KCUZc0CICq4RBblhgXXQPByP7c4cbx+WbOJnzF6Ur1zeLpPyItJJWJl
	IIELHzIUucDo0ekFPZGUyV0/+7zOsaLZ+BpfBtna8pNYJP86LQAug8HXjILrP6i0nJPoA6LKrGrQc
	nrBqMY/b75fBVwUBXbwdb5Tlw94CtNx/KO7ksDZ8d5FrXA1k5NjNEBmU8154vLsZBUQUSuzMe7IfG
	sP9iCbZgI7PPm1DFlEMwaKVvTuyg5zgC2xmMiM/+zll7+OiuSA5eSEvg0CWpBWgwruB46FEN8J6cG
	d/2KXB1M9nUzysJrtLyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5ip-0001Ti-SS; Wed, 11 Dec 2019 17:24:23 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5fJ-0006h5-Ea
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:20:47 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 9F1CD8198;
 Wed, 11 Dec 2019 17:21:23 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 14/16] ARM: OMAP2+: Drop legacy platform data for omap4 elm
Date: Wed, 11 Dec 2019 09:20:12 -0800
Message-Id: <20191211172014.35201-15-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211172014.35201-1-tony@atomide.com>
References: <20191211172014.35201-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092045_552439_9A0E9448 
X-CRM114-Status: UNSURE (   7.76  )
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

Cc: Franklin S Cooper Jr <fcooper@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Roger Quadros <rogerq@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap4-l4.dtsi            |  1 -
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c | 42 ----------------------
 2 files changed, 43 deletions(-)

diff --git a/arch/arm/boot/dts/omap4-l4.dtsi b/arch/arm/boot/dts/omap4-l4.dtsi
--- a/arch/arm/boot/dts/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/omap4-l4.dtsi
@@ -1908,7 +1908,6 @@ target-module@76000 {			/* 0x48076000, ap 39 38.0 */
 
 		target-module@78000 {			/* 0x48078000, ap 41 1a.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "elm";
 			reg = <0x78000 0x4>,
 			      <0x78010 0x4>,
 			      <0x78014 0x4>;
diff --git a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
@@ -707,39 +707,6 @@ static struct omap_hwmod omap44xx_dss_venc_hwmod = {
 };
 
 
-/*
- * 'elm' class
- * bch error location module
- */
-
-static struct omap_hwmod_class_sysconfig omap44xx_elm_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.syss_offs	= 0x0014,
-	.sysc_flags	= (SYSC_HAS_AUTOIDLE | SYSC_HAS_CLOCKACTIVITY |
-			   SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET |
-			   SYSS_HAS_RESET_STATUS),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class omap44xx_elm_hwmod_class = {
-	.name	= "elm",
-	.sysc	= &omap44xx_elm_sysc,
-};
-
-/* elm */
-static struct omap_hwmod omap44xx_elm_hwmod = {
-	.name		= "elm",
-	.class		= &omap44xx_elm_hwmod_class,
-	.clkdm_name	= "l4_per_clkdm",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP4_CM_L4PER_ELM_CLKCTRL_OFFSET,
-			.context_offs = OMAP4_RM_L4PER_ELM_CONTEXT_OFFSET,
-		},
-	},
-};
 
 /*
  * 'emif' class
@@ -2130,14 +2097,6 @@ static struct omap_hwmod_ocp_if omap44xx_l4_per__dss_venc = {
 	.user		= OCP_USER_MPU,
 };
 
-/* l4_per -> elm */
-static struct omap_hwmod_ocp_if omap44xx_l4_per__elm = {
-	.master		= &omap44xx_l4_per_hwmod,
-	.slave		= &omap44xx_elm_hwmod,
-	.clk		= "l4_div_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_cfg -> fdif */
 static struct omap_hwmod_ocp_if omap44xx_l4_cfg__fdif = {
 	.master		= &omap44xx_l4_cfg_hwmod,
@@ -2419,7 +2378,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_l4_per__dss_rfbi,
 	&omap44xx_l3_main_2__dss_venc,
 	&omap44xx_l4_per__dss_venc,
-	&omap44xx_l4_per__elm,
 	&omap44xx_l4_cfg__fdif,
 	&omap44xx_l3_main_2__gpmc,
 	&omap44xx_l4_cfg__hsi,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

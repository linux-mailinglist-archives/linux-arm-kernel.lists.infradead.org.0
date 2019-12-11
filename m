Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B7811BA22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 18:23:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WA9zcRIEWkFJoZiBE1dGZoxIkidZHhWKrZuEbu+eTpE=; b=gVg2DUdpa98hFZ
	yExBzJ8WMCXRZbsYfc/PD3GpUbeSxpDZ6WoALIN1FecdfhQTxt0vggdzKOMZWtBNoiug4hILY5rQM
	/QxcwQAqngHFw8pC1LpztRB7Ns44WC2RAHWRUg+QKd82M/iyHNsyvqDHOILFJEPBU3YBMQMFwZog3
	2YmCRA9GCpItXSg8dsL2Vxr7KeKsn6ftRHShWOs88j1n5HK1aWmmDvaxbPC7sZQ5H9PyKnhZ2dpLN
	noB3WhwzXHzqCO5r4ixzLLDOILBwtaSTwPb6syMI6tW9QaWmJGL/12FKat1tJSjukN1MoKgHEQN5u
	jh9G3Nx75InTobdIMv9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5hc-0000CA-Iv; Wed, 11 Dec 2019 17:23:08 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5fA-0006ZB-Um
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 17:20:38 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 26C5E8185;
 Wed, 11 Dec 2019 17:21:15 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 09/16] ARM: OMAP2+: Drop legacy platform data for dra7 dcan
Date: Wed, 11 Dec 2019 09:20:07 -0800
Message-Id: <20191211172014.35201-10-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211172014.35201-1-tony@atomide.com>
References: <20191211172014.35201-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_092037_083644_76D910A0 
X-CRM114-Status: UNSURE (   6.80  )
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

Cc: Keerthy <j-keerthy@ti.com>
Cc: Roger Quadros <rogerq@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/omap_hwmod_7xx_data.c | 59 -----------------------
 1 file changed, 59 deletions(-)

diff --git a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_7xx_data.c
@@ -283,47 +283,6 @@ static struct omap_hwmod dra7xx_ctrl_module_wkup_hwmod = {
 	},
 };
 
-/*
- * 'dcan' class
- *
- */
-
-static struct omap_hwmod_class dra7xx_dcan_hwmod_class = {
-	.name	= "dcan",
-};
-
-/* dcan1 */
-static struct omap_hwmod dra7xx_dcan1_hwmod = {
-	.name		= "dcan1",
-	.class		= &dra7xx_dcan_hwmod_class,
-	.clkdm_name	= "wkupaon_clkdm",
-	.main_clk	= "dcan1_sys_clk_mux",
-	.flags		= HWMOD_CLKDM_NOAUTO,
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = DRA7XX_CM_WKUPAON_DCAN1_CLKCTRL_OFFSET,
-			.context_offs = DRA7XX_RM_WKUPAON_DCAN1_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
-/* dcan2 */
-static struct omap_hwmod dra7xx_dcan2_hwmod = {
-	.name		= "dcan2",
-	.class		= &dra7xx_dcan_hwmod_class,
-	.clkdm_name	= "l4per2_clkdm",
-	.main_clk	= "sys_clkin1",
-	.flags		= HWMOD_CLKDM_NOAUTO,
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = DRA7XX_CM_L4PER2_DCAN2_CLKCTRL_OFFSET,
-			.context_offs = DRA7XX_RM_L4PER2_DCAN2_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_SWCTRL,
-		},
-	},
-};
-
 /*
  * 'dma' class
  *
@@ -1318,22 +1277,6 @@ static struct omap_hwmod_ocp_if dra7xx_l4_wkup__ctrl_module_wkup = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_wkup -> dcan1 */
-static struct omap_hwmod_ocp_if dra7xx_l4_wkup__dcan1 = {
-	.master		= &dra7xx_l4_wkup_hwmod,
-	.slave		= &dra7xx_dcan1_hwmod,
-	.clk		= "wkupaon_iclk_mux",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
-/* l4_per2 -> dcan2 */
-static struct omap_hwmod_ocp_if dra7xx_l4_per2__dcan2 = {
-	.master		= &dra7xx_l4_per2_hwmod,
-	.slave		= &dra7xx_dcan2_hwmod,
-	.clk		= "l3_iclk_div",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* l4_cfg -> dma_system */
 static struct omap_hwmod_ocp_if dra7xx_l4_cfg__dma_system = {
 	.master		= &dra7xx_l4_cfg_hwmod,
@@ -1614,8 +1557,6 @@ static struct omap_hwmod_ocp_if *dra7xx_hwmod_ocp_ifs[] __initdata = {
 	&dra7xx_l3_main_1__bb2d,
 	&dra7xx_l4_wkup__counter_32k,
 	&dra7xx_l4_wkup__ctrl_module_wkup,
-	&dra7xx_l4_wkup__dcan1,
-	&dra7xx_l4_per2__dcan2,
 	&dra7xx_l4_cfg__dma_system,
 	&dra7xx_l3_main_1__tpcc,
 	&dra7xx_l3_main_1__tptc0,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

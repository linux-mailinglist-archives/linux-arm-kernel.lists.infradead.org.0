Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B7311BCA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:13:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQvgz6j1FTR957lKaVKhUaJHU6/09C6vzr1FEu751zo=; b=FxZrL4wHDpLqC0
	p86V2CrT2ryGv3M/vsUAJCQRiFBNIpOwyOgIRETKwgOYBPV6mS+BgDgkd/Za0VTzoYPLZvwuBWbIx
	nAIoPvu0grb3IGdFcJO8O3sUuX0E7CuFRHt6Z0CP0VzVy3I83yLF2lKpd2QHsMH372beJjxyaxQSL
	1Dfgnb9DLWRmRcX8uX9bwdKmBKgXswi7y4wN7//aYFySZXniaKj5g7Xx25aTpCvqBAB1PSv0VaLnn
	MYh/OpjFPxm+zn6L3LgRjZNZKRmzzroAw/FZqV2EhrSJUt1k1RbJ+NcIjNOYgKpUwVaHLJp+Pi2iA
	RPkBH+njIKWKfJLHQ1WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7Q0-0003JG-02; Wed, 11 Dec 2019 19:13:04 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7PB-0002k7-Nf
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:12:15 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 5A92A8198;
 Wed, 11 Dec 2019 19:12:52 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 02/13] ARM: OMAP2+: Drop legacy platform data for omap4 ocp2scp
Date: Wed, 11 Dec 2019 11:11:55 -0800
Message-Id: <20191211191206.12190-3-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211191206.12190-1-tony@atomide.com>
References: <20191211191206.12190-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_111213_805675_A65FB3E3 
X-CRM114-Status: UNSURE (   8.55  )
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

Cc: Bin Liu <b-liu@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Roger Quadros <rogerq@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/boot/dts/omap4-l4.dtsi            |  1 -
 arch/arm/mach-omap2/omap_hwmod_44xx_data.c | 54 ----------------------
 2 files changed, 55 deletions(-)

diff --git a/arch/arm/boot/dts/omap4-l4.dtsi b/arch/arm/boot/dts/omap4-l4.dtsi
--- a/arch/arm/boot/dts/omap4-l4.dtsi
+++ b/arch/arm/boot/dts/omap4-l4.dtsi
@@ -420,7 +420,6 @@ usb_otg_hs: usb_otg_hs@0 {
 
 		target-module@2d000 {			/* 0x4a0ad000, ap 88 0c.0 */
 			compatible = "ti,sysc-omap2", "ti,sysc";
-			ti,hwmods = "ocp2scp_usb_phy";
 			reg = <0x2d000 0x4>,
 			      <0x2d010 0x4>,
 			      <0x2d014 0x4>;
diff --git a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
--- a/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
+++ b/arch/arm/mach-omap2/omap_hwmod_44xx_data.c
@@ -1159,51 +1159,6 @@ static struct omap_hwmod omap44xx_ocmc_ram_hwmod = {
 	},
 };
 
-/*
- * 'ocp2scp' class
- * bridge to transform ocp interface protocol to scp (serial control port)
- * protocol
- */
-
-static struct omap_hwmod_class_sysconfig omap44xx_ocp2scp_sysc = {
-	.rev_offs	= 0x0000,
-	.sysc_offs	= 0x0010,
-	.syss_offs	= 0x0014,
-	.sysc_flags	= (SYSC_HAS_AUTOIDLE | SYSC_HAS_SIDLEMODE |
-			   SYSC_HAS_SOFTRESET | SYSS_HAS_RESET_STATUS),
-	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
-	.sysc_fields	= &omap_hwmod_sysc_type1,
-};
-
-static struct omap_hwmod_class omap44xx_ocp2scp_hwmod_class = {
-	.name	= "ocp2scp",
-	.sysc	= &omap44xx_ocp2scp_sysc,
-};
-
-/* ocp2scp_usb_phy */
-static struct omap_hwmod omap44xx_ocp2scp_usb_phy_hwmod = {
-	.name		= "ocp2scp_usb_phy",
-	.class		= &omap44xx_ocp2scp_hwmod_class,
-	.clkdm_name	= "l3_init_clkdm",
-	/*
-	 * ocp2scp_usb_phy_phy_48m is provided by the OMAP4 PRCM IP
-	 * block as an "optional clock," and normally should never be
-	 * specified as the main_clk for an OMAP IP block.  However it
-	 * turns out that this clock is actually the main clock for
-	 * the ocp2scp_usb_phy IP block:
-	 * http://lists.infradead.org/pipermail/linux-arm-kernel/2012-September/119943.html
-	 * So listing ocp2scp_usb_phy_phy_48m as a main_clk here seems
-	 * to be the best workaround.
-	 */
-	.main_clk	= "ocp2scp_usb_phy_phy_48m",
-	.prcm = {
-		.omap4 = {
-			.clkctrl_offs = OMAP4_CM_L3INIT_USBPHYOCP2SCP_CLKCTRL_OFFSET,
-			.context_offs = OMAP4_RM_L3INIT_USBPHYOCP2SCP_CONTEXT_OFFSET,
-			.modulemode   = MODULEMODE_HWCTRL,
-		},
-	},
-};
 
 /*
  * 'prcm' class
@@ -2169,14 +2124,6 @@ static struct omap_hwmod_ocp_if omap44xx_l3_main_2__ocmc_ram = {
 	.user		= OCP_USER_MPU | OCP_USER_SDMA,
 };
 
-/* l4_cfg -> ocp2scp_usb_phy */
-static struct omap_hwmod_ocp_if omap44xx_l4_cfg__ocp2scp_usb_phy = {
-	.master		= &omap44xx_l4_cfg_hwmod,
-	.slave		= &omap44xx_ocp2scp_usb_phy_hwmod,
-	.clk		= "l4_div_ck",
-	.user		= OCP_USER_MPU | OCP_USER_SDMA,
-};
-
 /* mpu_private -> prcm_mpu */
 static struct omap_hwmod_ocp_if omap44xx_mpu_private__prcm_mpu = {
 	.master		= &omap44xx_mpu_private_hwmod,
@@ -2389,7 +2336,6 @@ static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
 	&omap44xx_l3_main_2__mmu_ipu,
 	&omap44xx_l4_cfg__mmu_dsp,
 	&omap44xx_l3_main_2__ocmc_ram,
-	&omap44xx_l4_cfg__ocp2scp_usb_phy,
 	&omap44xx_mpu_private__prcm_mpu,
 	&omap44xx_l4_wkup__cm_core_aon,
 	&omap44xx_l4_cfg__cm_core,
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

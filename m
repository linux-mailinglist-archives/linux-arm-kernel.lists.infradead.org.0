Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F81142A38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NAHgKPuLPZzuckm3SGv3SvKF0DQdQs4YrHY1tWyu9ME=; b=LKb9r8tcg1RYmz
	UttS6QdM9MacJKhwTAhsPGzxj+b7T5FAi7vxj0aKAig3enP76l2MJFkfLewIQiccyab+XFfBx9yO9
	PVdRXAV9kjgNX8D6Ema1myCUYAU72hG8MO2WntS/t1g/Z1RNn78YO2UCPVaS2U+kxOXl84slg1CrF
	KJScnFlXMT02uJCSPK+EHM1kMHSN2tWMQIhBIqTG1i3Ggr1U65hHWxPUZz7a0YXBuHjtOhBr3Qptg
	wruf7t74mHo9QIsM0bwfCttl/Aojg2z/+oGp59QM3B3/BeKLxDkJ7sbjPnWe86e4g2gp9tYqUXhnI
	hur/3Tvbb1dtwfxEc4ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVtP-0004QG-BE; Mon, 20 Jan 2020 12:10:55 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVsn-0004BR-Fa
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:10:24 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: s60d5Kps1H4InEvh8F/H03ak+NmVqUPeIvTe9jBCmXijXR/zzuhnYwSnMVSq0vFceb0LEoP6sq
 MYks1/lWuJ8yeBcw0e5dF5RNh2NgTXxWsMSEF3CoiVXGUYQUXp78DLMVtlqrQgRWlwc6Tiiajr
 WuU0biLYDTr9alV2hqbxMRG8K+MhYxqMCZRYwhAsR0jxWf4C0s2HfC9kBzLoMDJKt0YwpeUxm9
 Qa3zd6wz35wOb7ZiBo4/mrc9XLPKEwNL5puxHOXwGqEI9wupZkwXUgpIJ/oimjm/pEhVC6vJG/
 0/Y=
X-IronPort-AV: E=Sophos;i="5.70,341,1574146800"; d="scan'208";a="63869225"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jan 2020 05:10:16 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jan 2020 05:10:15 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Jan 2020 05:10:14 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <linux@armlinux.org.uk>,
 <mturquette@baylibre.com>, <sboyd@kernel.org>
Subject: [PATCH 1/8] ARM: at91: pm: use proper master clock register offset
Date: Mon, 20 Jan 2020 14:10:01 +0200
Message-ID: <1579522208-19523-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
References: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_041018_554297_5248533D 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SAM9X60's PMC has different master clock register offset than the other
SoCs' PMC. Due to this, specify master clock register offset based
on PMC compatible and pass it to pm_suspend.S since it is also needed
in there. When PM part for SAM9X60 was published the SAM9X60's PMC
(commit f6deae46039c ("clk: at91: add sam9x60 pmc driver")) wasn't
integrated.

Fixes: fd2280a1829b ("ARM: at91: pm: initial PM support for SAM9X60")
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/mach-at91/pm.c              | 28 +++++++++++++++++++++++-----
 arch/arm/mach-at91/pm.h              |  1 +
 arch/arm/mach-at91/pm_data-offsets.c |  2 ++
 arch/arm/mach-at91/pm_suspend.S      | 32 ++++++++++++++++++++------------
 4 files changed, 46 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
index 374b9d155558..ae7b148febd9 100644
--- a/arch/arm/mach-at91/pm.c
+++ b/arch/arm/mach-at91/pm.c
@@ -736,13 +736,30 @@ static void __init at91_pm_modes_init(void)
 
 struct pmc_info {
 	unsigned long uhp_udp_mask;
+	unsigned long mckr;
 };
 
 static const struct pmc_info pmc_infos[] __initconst = {
-	{ .uhp_udp_mask = AT91RM9200_PMC_UHP | AT91RM9200_PMC_UDP },
-	{ .uhp_udp_mask = AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP },
-	{ .uhp_udp_mask = AT91SAM926x_PMC_UHP },
-	{ .uhp_udp_mask = 0 },
+	{
+		.uhp_udp_mask = AT91RM9200_PMC_UHP | AT91RM9200_PMC_UDP,
+		.mckr = 0x30,
+	},
+
+	{
+		.uhp_udp_mask = AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP,
+		.mckr = 0x30,
+	},
+	{
+		.uhp_udp_mask = AT91SAM926x_PMC_UHP,
+		.mckr = 0x30,
+	},
+	{	.uhp_udp_mask = 0,
+		.mckr = 0x30,
+	},
+	{
+		.uhp_udp_mask = AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP,
+		.mckr = 0x28,
+	},
 };
 
 static const struct of_device_id atmel_pmc_ids[] __initconst = {
@@ -757,7 +774,7 @@ static const struct of_device_id atmel_pmc_ids[] __initconst = {
 	{ .compatible = "atmel,sama5d3-pmc", .data = &pmc_infos[1] },
 	{ .compatible = "atmel,sama5d4-pmc", .data = &pmc_infos[1] },
 	{ .compatible = "atmel,sama5d2-pmc", .data = &pmc_infos[1] },
-	{ .compatible = "microchip,sam9x60-pmc", .data = &pmc_infos[1] },
+	{ .compatible = "microchip,sam9x60-pmc", .data = &pmc_infos[4] },
 	{ /* sentinel */ },
 };
 
@@ -779,6 +796,7 @@ static void __init at91_pm_init(void (*pm_idle)(void))
 
 	pmc = of_id->data;
 	soc_pm.data.uhp_udp_mask = pmc->uhp_udp_mask;
+	soc_pm.data.pmc_mckr_offset = pmc->mckr;
 
 	if (pm_idle)
 		arm_pm_idle = pm_idle;
diff --git a/arch/arm/mach-at91/pm.h b/arch/arm/mach-at91/pm.h
index 9fa4f483f2b5..6f7f4236865a 100644
--- a/arch/arm/mach-at91/pm.h
+++ b/arch/arm/mach-at91/pm.h
@@ -33,6 +33,7 @@ struct at91_pm_data {
 	void __iomem *sfrbu;
 	unsigned int standby_mode;
 	unsigned int suspend_mode;
+	unsigned int pmc_mckr_offset;
 };
 #endif
 
diff --git a/arch/arm/mach-at91/pm_data-offsets.c b/arch/arm/mach-at91/pm_data-offsets.c
index f2d893c03cd9..dfcbe626865c 100644
--- a/arch/arm/mach-at91/pm_data-offsets.c
+++ b/arch/arm/mach-at91/pm_data-offsets.c
@@ -12,6 +12,8 @@ int main(void)
 	DEFINE(PM_DATA_MODE,		offsetof(struct at91_pm_data, mode));
 	DEFINE(PM_DATA_SHDWC,		offsetof(struct at91_pm_data, shdwc));
 	DEFINE(PM_DATA_SFRBU,		offsetof(struct at91_pm_data, sfrbu));
+	DEFINE(PM_DATA_PMC_MCKR_OFFSET,	offsetof(struct at91_pm_data,
+						 pmc_mckr_offset));
 
 	return 0;
 }
diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
index ed57c879d4e1..52b262d56cfd 100644
--- a/arch/arm/mach-at91/pm_suspend.S
+++ b/arch/arm/mach-at91/pm_suspend.S
@@ -93,6 +93,8 @@ ENTRY(at91_pm_suspend_in_sram)
 	str	tmp1, .memtype
 	ldr	tmp1, [r0, #PM_DATA_MODE]
 	str	tmp1, .pm_mode
+	ldr	tmp1, [r0, #PM_DATA_PMC_MCKR_OFFSET]
+	str	tmp1, .mckr_offset
 	/* Both ldrne below are here to preload their address in the TLB */
 	ldr	tmp1, [r0, #PM_DATA_SHDWC]
 	str	tmp1, .shdwc
@@ -138,9 +140,10 @@ ENDPROC(at91_pm_suspend_in_sram)
 ENTRY(at91_backup_mode)
 	/* Switch the master clock source to slow clock. */
 	ldr	pmc, .pmc_base
-	ldr	tmp1, [pmc, #AT91_PMC_MCKR]
+	ldr	tmp2, .mckr_offset
+	ldr	tmp1, [pmc, tmp2]
 	bic	tmp1, tmp1, #AT91_PMC_CSS
-	str	tmp1, [pmc, #AT91_PMC_MCKR]
+	str	tmp1, [pmc, tmp2]
 
 	wait_mckrdy
 
@@ -218,6 +221,7 @@ ENDPROC(at91_backup_mode)
  */
 .macro at91_pm_ulp1_mode
 	ldr	pmc, .pmc_base
+	ldr	tmp2, .mckr_offset
 
 	/* Save RC oscillator state and check if it is enabled. */
 	ldr	tmp1, [pmc, #AT91_PMC_SR]
@@ -254,10 +258,10 @@ ENDPROC(at91_backup_mode)
 	str	tmp1, [pmc, #AT91_CKGR_MOR]
 
 	/* Switch the master clock source to main clock */
-	ldr	tmp1, [pmc, #AT91_PMC_MCKR]
+	ldr	tmp1, [pmc, tmp2]
 	bic	tmp1, tmp1, #AT91_PMC_CSS
 	orr	tmp1, tmp1, #AT91_PMC_CSS_MAIN
-	str	tmp1, [pmc, #AT91_PMC_MCKR]
+	str	tmp1, [pmc, tmp2]
 
 	wait_mckrdy
 
@@ -280,9 +284,9 @@ ENDPROC(at91_backup_mode)
 	wait_moscrdy
 
 	/* Switch the master clock source to slow clock */
-	ldr	tmp1, [pmc, #AT91_PMC_MCKR]
+	ldr	tmp1, [pmc, tmp2]
 	bic	tmp1, tmp1, #AT91_PMC_CSS
-	str	tmp1, [pmc, #AT91_PMC_MCKR]
+	str	tmp1, [pmc, tmp2]
 
 	wait_mckrdy
 
@@ -296,10 +300,10 @@ ENDPROC(at91_backup_mode)
 	wait_moscsels
 
 	/* Switch the master clock source to main clock */
-	ldr	tmp1, [pmc, #AT91_PMC_MCKR]
+	ldr	tmp1, [pmc, tmp2]
 	bic	tmp1, tmp1, #AT91_PMC_CSS
 	orr	tmp1, tmp1, #AT91_PMC_CSS_MAIN
-	str	tmp1, [pmc, #AT91_PMC_MCKR]
+	str	tmp1, [pmc, tmp2]
 
 	wait_mckrdy
 
@@ -325,16 +329,17 @@ ENDPROC(at91_backup_mode)
 
 ENTRY(at91_ulp_mode)
 	ldr	pmc, .pmc_base
+	ldr	tmp2, .mckr_offset
 
 	/* Save Master clock setting */
-	ldr	tmp1, [pmc, #AT91_PMC_MCKR]
+	ldr	tmp1, [pmc, tmp2]
 	str	tmp1, .saved_mckr
 
 	/*
 	 * Set the Master clock source to slow clock
 	 */
 	bic	tmp1, tmp1, #AT91_PMC_CSS
-	str	tmp1, [pmc, #AT91_PMC_MCKR]
+	str	tmp1, [pmc, tmp2]
 
 	wait_mckrdy
 
@@ -355,8 +360,9 @@ ulp_exit:
 	/*
 	 * Restore master clock setting
 	 */
-	ldr	tmp1, .saved_mckr
-	str	tmp1, [pmc, #AT91_PMC_MCKR]
+	ldr	tmp1, .mckr_offset
+	ldr	tmp2, .saved_mckr
+	str	tmp2, [pmc, tmp1]
 
 	wait_mckrdy
 
@@ -502,6 +508,8 @@ ENDPROC(at91_sramc_self_refresh)
 	.word 0
 .pm_mode:
 	.word 0
+.mckr_offset:
+	.word 0
 .saved_mckr:
 	.word 0
 .saved_sam9_lpr:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

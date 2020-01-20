Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55468142A3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:11:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWUQf7bL8twIJzB+0p5E/aE8lcyiO/ZlIgQq+FxFBD0=; b=LvUWnSc4JCzsr/
	JVDNwzzd+XevYe3RpYQKu7ugaCa/rcyXVeDVtsK6uXyZFndDoK3r5Vx/35k166EC9EmzFj2uUUyvc
	N6SDE236MLEmAh17oSfaSv+N4UgisSfjH542D/8zAL8E6Dixp1tsMuES/v02LE51x3VHna71dCBej
	aJ8CwBc2IZhLYQn4iZ+Bi3agqL2uOSAGC07s+p2KLCDvS10ALrB+5cq5itEOGuoi84YNez5/AEZIV
	c0jeEqj9Zt0YNhYhbSKMYxT8CI3hyP2TYbplq2wAaJ+IncZVWSPrAr77IEvOMPAwmjq8LwFp/qbs5
	k6l7u+MAZV4RsX/KXxiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVuI-0005Cs-7c; Mon, 20 Jan 2020 12:11:50 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVsz-0004Go-BH
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:10:35 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 7uWZxqxXTzVOUckY5yUPHSL//1igAEY6svuwCf3BMtOSNvoc8FhBiEwOBc6S8k0zlxCt6/eSyh
 dlJmOI2NZIE/YogHGPlzWKtrk/y67u5hR/ZlEmUlxi+bUXXTCe6k8e5XkAhTkZAXYB6VfRogrS
 XkUqP5SqkRrmW0Oc9WnEbH63B7nKj037Hw0xKzqjvuDBqBrBzRtv4CrpbEATzUlUfpINcuhNlR
 r6Q25vpn566Q0kSlhvkLSgc4VS8GUxWiczyNkRUmg5AN4Ont8dWKeuBtD7hpvz88/dm/BqIvtg
 X7k=
X-IronPort-AV: E=Sophos;i="5.70,341,1574146800"; d="scan'208";a="61577370"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jan 2020 05:10:26 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jan 2020 05:10:26 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Jan 2020 05:10:23 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <linux@armlinux.org.uk>,
 <mturquette@baylibre.com>, <sboyd@kernel.org>
Subject: [PATCH 4/8] ARM: at91: pm: add pmc_version member to at91_pm_data
Date: Mon, 20 Jan 2020 14:10:04 +0200
Message-ID: <1579522208-19523-5-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
References: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_041029_492889_E5650ACF 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

This will be used to differentiate b/w different PLLs settings to be
applied in the final/first steps of the suspend/resume process by doing
PLL specific configurations.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/mach-at91/pm.c              | 7 +++++++
 arch/arm/mach-at91/pm.h              | 1 +
 arch/arm/mach-at91/pm_data-offsets.c | 2 ++
 arch/arm/mach-at91/pm_suspend.S      | 4 ++++
 include/linux/clk/at91_pmc.h         | 3 +++
 5 files changed, 17 insertions(+)

diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
index ae7b148febd9..074bde64064e 100644
--- a/arch/arm/mach-at91/pm.c
+++ b/arch/arm/mach-at91/pm.c
@@ -737,28 +737,34 @@ static void __init at91_pm_modes_init(void)
 struct pmc_info {
 	unsigned long uhp_udp_mask;
 	unsigned long mckr;
+	unsigned long version;
 };
 
 static const struct pmc_info pmc_infos[] __initconst = {
 	{
 		.uhp_udp_mask = AT91RM9200_PMC_UHP | AT91RM9200_PMC_UDP,
 		.mckr = 0x30,
+		.version = AT91_PMC_V1,
 	},
 
 	{
 		.uhp_udp_mask = AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP,
 		.mckr = 0x30,
+		.version = AT91_PMC_V1,
 	},
 	{
 		.uhp_udp_mask = AT91SAM926x_PMC_UHP,
 		.mckr = 0x30,
+		.version = AT91_PMC_V1,
 	},
 	{	.uhp_udp_mask = 0,
 		.mckr = 0x30,
+		.version = AT91_PMC_V1,
 	},
 	{
 		.uhp_udp_mask = AT91SAM926x_PMC_UHP | AT91SAM926x_PMC_UDP,
 		.mckr = 0x28,
+		.version = AT91_PMC_V2,
 	},
 };
 
@@ -797,6 +803,7 @@ static void __init at91_pm_init(void (*pm_idle)(void))
 	pmc = of_id->data;
 	soc_pm.data.uhp_udp_mask = pmc->uhp_udp_mask;
 	soc_pm.data.pmc_mckr_offset = pmc->mckr;
+	soc_pm.data.pmc_version = pmc->version;
 
 	if (pm_idle)
 		arm_pm_idle = pm_idle;
diff --git a/arch/arm/mach-at91/pm.h b/arch/arm/mach-at91/pm.h
index 6f7f4236865a..218e8d1a30fb 100644
--- a/arch/arm/mach-at91/pm.h
+++ b/arch/arm/mach-at91/pm.h
@@ -34,6 +34,7 @@ struct at91_pm_data {
 	unsigned int standby_mode;
 	unsigned int suspend_mode;
 	unsigned int pmc_mckr_offset;
+	unsigned int pmc_version;
 };
 #endif
 
diff --git a/arch/arm/mach-at91/pm_data-offsets.c b/arch/arm/mach-at91/pm_data-offsets.c
index dfcbe626865c..82089ff258c0 100644
--- a/arch/arm/mach-at91/pm_data-offsets.c
+++ b/arch/arm/mach-at91/pm_data-offsets.c
@@ -14,6 +14,8 @@ int main(void)
 	DEFINE(PM_DATA_SFRBU,		offsetof(struct at91_pm_data, sfrbu));
 	DEFINE(PM_DATA_PMC_MCKR_OFFSET,	offsetof(struct at91_pm_data,
 						 pmc_mckr_offset));
+	DEFINE(PM_DATA_PMC_VERSION,	offsetof(struct at91_pm_data,
+						 pmc_version));
 
 	return 0;
 }
diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
index 64460b4e0fc1..5fa0c2aa10f7 100644
--- a/arch/arm/mach-at91/pm_suspend.S
+++ b/arch/arm/mach-at91/pm_suspend.S
@@ -95,6 +95,8 @@ ENTRY(at91_pm_suspend_in_sram)
 	str	tmp1, .pm_mode
 	ldr	tmp1, [r0, #PM_DATA_PMC_MCKR_OFFSET]
 	str	tmp1, .mckr_offset
+	ldr	tmp1, [r0, #PM_DATA_PMC_VERSION]
+	str	tmp1, .pmc_version
 	/* Both ldrne below are here to preload their address in the TLB */
 	ldr	tmp1, [r0, #PM_DATA_SHDWC]
 	str	tmp1, .shdwc
@@ -542,6 +544,8 @@ ENDPROC(at91_sramc_self_refresh)
 	.word 0
 .mckr_offset:
 	.word 0
+.pmc_version:
+	.word 0
 .saved_mckr:
 	.word 0
 .saved_pllar:
diff --git a/include/linux/clk/at91_pmc.h b/include/linux/clk/at91_pmc.h
index 390437887b46..f3d691fc5f29 100644
--- a/include/linux/clk/at91_pmc.h
+++ b/include/linux/clk/at91_pmc.h
@@ -12,6 +12,9 @@
 #ifndef AT91_PMC_H
 #define AT91_PMC_H
 
+#define AT91_PMC_V1		(1)			/* PMC version 1 */
+#define AT91_PMC_V2		(2)			/* PMC version 2 [SAM9X60] */
+
 #define	AT91_PMC_SCER		0x00			/* System Clock Enable Register */
 #define	AT91_PMC_SCDR		0x04			/* System Clock Disable Register */
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

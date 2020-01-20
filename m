Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB05142A3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:12:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=paOHaKX9riy4nHAVn8KK7jIlgjPUhgVAMHqtyY7HKZk=; b=MdWIXdgmbePuTt
	7X/uuJT/y2WhXlxoo97CjZ+m2xQ53KbivG+uf+c10e+ZVCBWhPQ/nUQONlpKH6ucu1jE1gnNDaRI7
	stnRLFC2SaDoJUqfpV083Rg2xQTmzbYDPJ9xXw9/CYv2PUOxXOrgOdWuQBforIpkIgiIqpDyQekMc
	jC78o7JoU98tKtlv18lZZaMFs2FPkAvok4bR3MjDWlyfe/CCPVYe2qdwzZd5E75ccXSxr3jHIrt+5
	VilsaVtyp/hLcp0QzYeWoVsLp0c962xmqlbPYvUdVfLcMubMB4Ek0m9mekIBqXNSjz8hhMK1SWo1Y
	0TOJdh8ilioNhlma5W7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVuV-0005R5-5T; Mon, 20 Jan 2020 12:12:03 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVt6-0004Go-Oa
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:10:39 +0000
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
IronPort-SDR: wVsjwRgYxpoPCNjz6v3XOvB01tWs8LM3U99MWnquZPnbuZLqcyOXSinwP+kZeHPJp4dGOMI4Ri
 PI/uSZokNUu3RPbJ8uD9EFNh8IqClgHbljsGwVnGOIsycVt6m+qTXQnnSGnBIbFBqLZgW0+JR5
 3V3I/M16waWaRoFGzVXHdtRjVBGIzzJpzv66ehzF8bhD8JppW4PX9BzgzoGPK9AxsV8afiosAb
 LvTCAsqRoORfahdykU8L1mnIHIH+G/PZwJDfp2ulBbWyz9xl15YzregYQ/EsptDQYYoz6JuwZE
 Jb0=
X-IronPort-AV: E=Sophos;i="5.70,341,1574146800"; d="scan'208";a="61577379"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jan 2020 05:10:36 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jan 2020 05:10:36 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Jan 2020 05:10:33 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <linux@armlinux.org.uk>,
 <mturquette@baylibre.com>, <sboyd@kernel.org>
Subject: [PATCH 7/8] ARM: at91: pm: add plla disable/enable support for sam9x60
Date: Mon, 20 Jan 2020 14:10:07 +0200
Message-ID: <1579522208-19523-8-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
References: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_041036_940519_5CFAF7AA 
X-CRM114-Status: UNSURE (   7.27  )
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

Add PLLA enable/disable support for SAM9X60.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/mach-at91/pm_suspend.S | 117 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 113 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
index c898071e0c0b..4e9eb4f57f16 100644
--- a/arch/arm/mach-at91/pm_suspend.S
+++ b/arch/arm/mach-at91/pm_suspend.S
@@ -18,6 +18,7 @@
 pmc	.req	r0
 tmp1	.req	r4
 tmp2	.req	r5
+tmp3	.req	r6
 
 /*
  * Wait until master clock is ready (after switching master clock source)
@@ -331,6 +332,61 @@ ENDPROC(at91_backup_mode)
 
 .macro at91_plla_disable
 	/* Save PLLA setting and disable it */
+	ldr	tmp1, .pmc_version
+	cmp	tmp1, #AT91_PMC_V1
+	beq	1f
+
+#ifdef CONFIG_SOC_SAM9X60
+	/* Save PLLA settings. */
+	ldr	tmp2, [pmc, #AT91_PMC_PLL_UPDT]
+	bic	tmp2, tmp2, #AT91_PMC_PLL_UPDT_ID
+	str	tmp2, [pmc, #AT91_PMC_PLL_UPDT]
+
+	/* save div. */
+	mov	tmp1, #0
+	ldr	tmp2, [pmc, #AT91_PMC_PLL_CTRL0]
+	bic	tmp2, tmp2, #0xffffff00
+	orr	tmp1, tmp1, tmp2
+
+	/* save mul. */
+	ldr	tmp2, [pmc, #AT91_PMC_PLL_CTRL1]
+	bic	tmp2, tmp2, #0xffffff
+	orr	tmp1, tmp1, tmp2
+	str	tmp1, .saved_pllar
+
+	/* step 2. */
+	ldr	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+	bic	tmp1, tmp1, #AT91_PMC_PLL_UPDT_UPDATE
+	bic	tmp1, tmp1, #AT91_PMC_PLL_UPDT_ID
+	str	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+
+	/* step 3. */
+	ldr	tmp1, [pmc, #AT91_PMC_PLL_CTRL0]
+	bic	tmp1, tmp1, #AT91_PMC_PLL_CTRL0_ENPLLCK
+	orr	tmp1, tmp1, #AT91_PMC_PLL_CTRL0_ENPLL
+	str	tmp1, [pmc, #AT91_PMC_PLL_CTRL0]
+
+	/* step 4. */
+	ldr	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+	orr	tmp1, tmp1, #AT91_PMC_PLL_UPDT_UPDATE
+	bic	tmp1, tmp1, #AT91_PMC_PLL_UPDT_ID
+	str	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+
+	/* step 5. */
+	ldr	tmp1, [pmc, #AT91_PMC_PLL_CTRL0]
+	bic	tmp1, tmp1, #AT91_PMC_PLL_CTRL0_ENPLL
+	str	tmp1, [pmc, #AT91_PMC_PLL_CTRL0]
+
+	/* step 7. */
+	ldr	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+	orr	tmp1, tmp1, #AT91_PMC_PLL_UPDT_UPDATE
+	bic	tmp1, tmp1, #AT91_PMC_PLL_UPDT_ID
+	str	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+
+	b	2f
+#endif
+
+1:	/* Save PLLA setting and disable it */
 	ldr	tmp1, [pmc, #AT91_CKGR_PLLAR]
 	str	tmp1, .saved_pllar
 
@@ -338,17 +394,70 @@ ENDPROC(at91_backup_mode)
 	mov	tmp1, #AT91_PMC_PLLCOUNT
 	orr	tmp1, tmp1, #(1 << 29)		/* bit 29 always set */
 	str	tmp1, [pmc, #AT91_CKGR_PLLAR]
+2:
 .endm
 
 .macro at91_plla_enable
+	ldr	tmp2, .saved_pllar
+	ldr	tmp3, .pmc_version
+	cmp	tmp3, #AT91_PMC_V1
+	beq	4f
+
+#ifdef CONFIG_SOC_SAM9X60
+	/* step 1. */
+	ldr	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+	bic	tmp1, tmp1, #AT91_PMC_PLL_UPDT_ID
+	bic	tmp1, tmp1, #AT91_PMC_PLL_UPDT_UPDATE
+	str	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+
+	/* step 2. */
+	ldr	tmp1, =#AT91_PMC_PLL_ACR_DEFAULT_PLLA
+	str	tmp1, [pmc, #AT91_PMC_PLL_ACR]
+
+	/* step 3. */
+	ldr	tmp1, [pmc, #AT91_PMC_PLL_CTRL1]
+	mov	tmp3, tmp2
+	bic	tmp3, tmp3, #0xffffff
+	orr	tmp1, tmp1, tmp3
+	str	tmp1, [pmc, #AT91_PMC_PLL_CTRL1]
+
+	/* step 8. */
+	ldr	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+	bic	tmp1, tmp1, #AT91_PMC_PLL_UPDT_ID
+	orr	tmp1, tmp1, #AT91_PMC_PLL_UPDT_UPDATE
+	str	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+
+	/* step 9. */
+	ldr	tmp1, [pmc, #AT91_PMC_PLL_CTRL0]
+	orr	tmp1, tmp1, #AT91_PMC_PLL_CTRL0_ENLOCK
+	orr	tmp1, tmp1, #AT91_PMC_PLL_CTRL0_ENPLL
+	orr	tmp1, tmp1, #AT91_PMC_PLL_CTRL0_ENPLLCK
+	bic	tmp1, tmp1, #0xff
+	mov	tmp3, tmp2
+	bic	tmp3, tmp3, #0xffffff00
+	orr	tmp1, tmp1, tmp3
+	str	tmp1, [pmc, #AT91_PMC_PLL_CTRL0]
+
+	/* step 10. */
+	ldr	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+	orr	tmp1, tmp1, #AT91_PMC_PLL_UPDT_UPDATE
+	bic	tmp1, tmp1, #AT91_PMC_PLL_UPDT_ID
+	str	tmp1, [pmc, #AT91_PMC_PLL_UPDT]
+
+	/* step 11. */
+3:	ldr	tmp1, [pmc, #AT91_PMC_PLL_ISR0]
+	tst	tmp1, #0x1
+	beq	3b
+	b	2f
+#endif
+
 	/* Restore PLLA setting */
-	ldr	tmp1, .saved_pllar
-	str	tmp1, [pmc, #AT91_CKGR_PLLAR]
+4:	str	tmp2, [pmc, #AT91_CKGR_PLLAR]
 
 	/* Enable PLLA. */
-	tst	tmp1, #(AT91_PMC_MUL &  0xff0000)
+	tst	tmp2, #(AT91_PMC_MUL &  0xff0000)
 	bne	1f
-	tst	tmp1, #(AT91_PMC_MUL & ~0xff0000)
+	tst	tmp2, #(AT91_PMC_MUL & ~0xff0000)
 	beq	2f
 
 1:	ldr	tmp1, [pmc, #AT91_PMC_SR]
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

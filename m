Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E389F142A39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9T45qGtTmX1/LSZt/thDKhre+S5fnKQyWVel6R72j28=; b=BvgPDi8BDJS20Z
	MCRGFG/GnY+frSHHzmHC2pDOjOp8rjJ77D6NboI9OH6PFrOoNh/IbDRgulFmYvpwGefNJvGNLV8YX
	n1FilPYxnAKf/SI+4MPflYLK4lnyUQWVK/ZNXMuxxeyfc/KiVge5+J13Ikjg0NL4aDpaXEd5f9f+u
	BNlMdUe7AJ0Bf12tWErJiS4UVz94zZRafcr/1S/F22PJPxDqVBmEJumL9PkpHgnPk5jhQGWRNjlk8
	jvaHhhVDB//1Dlb5YBGPsj0TFTbxkKX9yA7IWESZySJIiKQhpZyyjo7TEdnxZCsuyMsXKQqaijcjp
	DKMI0enTv1UTuamL1Paw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVtj-0004gC-Jf; Mon, 20 Jan 2020 12:11:15 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVsu-0004BO-6E
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:10:28 +0000
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
IronPort-SDR: 1JP2byp9ZOjNoi2PwTaZR2//ebH86Bz1HlwhAzFWZJxsIAw6O9WgiXVP7Z/f3g1HtIVV6JR6Ke
 c/CTaSNl/qgfIDTRTVoFgBNLYaCKmtCP8UduBtdZVxuK9f7w8WI0RhEEHWRRuspIE9zykpYObG
 FZU92mEk6tQ8KDGkIgv4udboz+RqTwzwssCRe9fkKacjt1JkM9HxYDNsmhx+4WH3kP5GmYYThH
 ndL1RmP5MvSsEFOUBvYqHNRk0UxVStFmwrEXly2wt4gxn5fXzV9gElYhBKmimHb1A9fzKl9inG
 wN8=
X-IronPort-AV: E=Sophos;i="5.70,341,1574146800"; d="scan'208";a="63869240"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jan 2020 05:10:23 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jan 2020 05:10:23 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Jan 2020 05:10:20 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <linux@armlinux.org.uk>,
 <mturquette@baylibre.com>, <sboyd@kernel.org>
Subject: [PATCH 3/8] ARM: at91: pm: add macros for plla disable/enable
Date: Mon, 20 Jan 2020 14:10:03 +0200
Message-ID: <1579522208-19523-4-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
References: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_041024_242848_AA67663D 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
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

Add macros for PLLA disable and enable (in disable macro the PLLA
state will also be saved). This prepares the field for PLLA disable/enable
for suspend/resume on SAM9X60.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/mach-at91/pm_suspend.S | 57 ++++++++++++++++++++++-------------------
 1 file changed, 30 insertions(+), 27 deletions(-)

diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
index bfb3aab8859e..64460b4e0fc1 100644
--- a/arch/arm/mach-at91/pm_suspend.S
+++ b/arch/arm/mach-at91/pm_suspend.S
@@ -47,15 +47,6 @@ tmp2	.req	r5
 	.endm
 
 /*
- * Wait until PLLA has locked.
- */
-	.macro wait_pllalock
-1:	ldr	tmp1, [pmc, #AT91_PMC_SR]
-	tst	tmp1, #AT91_PMC_LOCKA
-	beq	1b
-	.endm
-
-/*
  * Put the processor to enter the idle state
  */
 	.macro at91_cpu_idle
@@ -336,6 +327,34 @@ ENDPROC(at91_backup_mode)
 3:
 .endm
 
+.macro at91_plla_disable
+	/* Save PLLA setting and disable it */
+	ldr	tmp1, [pmc, #AT91_CKGR_PLLAR]
+	str	tmp1, .saved_pllar
+
+	/* Disable PLLA. */
+	mov	tmp1, #AT91_PMC_PLLCOUNT
+	orr	tmp1, tmp1, #(1 << 29)		/* bit 29 always set */
+	str	tmp1, [pmc, #AT91_CKGR_PLLAR]
+.endm
+
+.macro at91_plla_enable
+	/* Restore PLLA setting */
+	ldr	tmp1, .saved_pllar
+	str	tmp1, [pmc, #AT91_CKGR_PLLAR]
+
+	/* Enable PLLA. */
+	tst	tmp1, #(AT91_PMC_MUL &  0xff0000)
+	bne	1f
+	tst	tmp1, #(AT91_PMC_MUL & ~0xff0000)
+	beq	2f
+
+1:	ldr	tmp1, [pmc, #AT91_PMC_SR]
+	tst	tmp1, #AT91_PMC_LOCKA
+	beq	1b
+2:
+.endm
+
 ENTRY(at91_ulp_mode)
 	ldr	pmc, .pmc_base
 	ldr	tmp2, .mckr_offset
@@ -352,13 +371,7 @@ ENTRY(at91_ulp_mode)
 
 	wait_mckrdy
 
-	/* Save PLLA setting and disable it */
-	ldr	tmp1, [pmc, #AT91_CKGR_PLLAR]
-	str	tmp1, .saved_pllar
-
-	mov	tmp1, #AT91_PMC_PLLCOUNT
-	orr	tmp1, tmp1, #(1 << 29)		/* bit 29 always set */
-	str	tmp1, [pmc, #AT91_CKGR_PLLAR]
+	at91_plla_disable
 
 	ldr	r0, .pm_mode
 	cmp	r0, #AT91_PM_ULP1
@@ -374,17 +387,7 @@ ulp1_mode:
 ulp_exit:
 	ldr	pmc, .pmc_base
 
-	/* Restore PLLA setting */
-	ldr	tmp1, .saved_pllar
-	str	tmp1, [pmc, #AT91_CKGR_PLLAR]
-
-	tst	tmp1, #(AT91_PMC_MUL &  0xff0000)
-	bne	3f
-	tst	tmp1, #(AT91_PMC_MUL & ~0xff0000)
-	beq	4f
-3:
-	wait_pllalock
-4:
+	at91_plla_enable
 
 	/*
 	 * Restore master clock setting
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

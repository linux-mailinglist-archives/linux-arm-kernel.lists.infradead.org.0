Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2D0142A3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 13:11:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wf8GBSkfIXNEaCdxCvOE709nR57luQyS7hz9agG0glg=; b=OnAfdwijVQHUfz
	gPM8JORoBdlLzqOalahSFSEBJh4KyhNsYpRUamDIt15FpqZfxCSgyxZr8njKZvfaZFvNaGsWSSh8E
	weDskPz8qdYy0QSAkbyw9pPGXBTr3WkoZlecfI6S7gD+8gkKxxhDYjMNsHZ1ileIX+g2sgn1v27I7
	KF9R+99otaiNtz0+YU8iWJlzXaUbiPmcTHjDvFBfyAEdR4QeB1UYWXU/kO2Je5w9Bck/M8Fo+S1ch
	tVaNSeb3PtZNfTvcnOE7gH+5PB9ELub5r2Wz+Wi/p+STCnpRv8hL+64FAoKwZOHQFryhYe0Q6L+pU
	fZO8gOE35D9azkyxDm8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVu3-0004yL-3K; Mon, 20 Jan 2020 12:11:35 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVsr-0004CT-Cs
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 12:10:29 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: z5Svyt4kryU+HvM3cYYLHgM64ZD5LyY8uzXwVJKsnPqWzm7wNX+zp8e3mTO178GmTWv28SDRsF
 wW+svgV3VJ0aYqrxsFAILV65iD1pali87MxCQQhrYep+ZrgNbwnDICHKU+SayuFWZeIzbHcwhL
 ZUNuPb7hrsAYzGFl1O3BI6JnNaPkJiX1m07oAWAekNgBiEazaVkP84emfA/bJUMgZYOdSOfHIk
 zQxki3bb9lsYtZC4x5kdEfao5XBjKQ9kf1PzLfwtcXha91D9xSIgj3pyBzfniamygyD9B0Ubtl
 0xY=
X-IronPort-AV: E=Sophos;i="5.70,341,1574146800"; d="scan'208";a="62468535"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Jan 2020 05:10:20 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jan 2020 05:10:20 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 20 Jan 2020 05:10:17 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <linux@armlinux.org.uk>,
 <mturquette@baylibre.com>, <sboyd@kernel.org>
Subject: [PATCH 2/8] Revert "ARM: at91: pm: do not disable/enable PLLA for ULP
 modes"
Date: Mon, 20 Jan 2020 14:10:02 +0200
Message-ID: <1579522208-19523-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
References: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_041021_441128_2101591C 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

This reverts commit 2725d70aa5138284ba2cebf0ef51dd23e0c9ea21
("ARM: at91: pm: do not disable/enable PLLA for ULP modes").
This is because PLLA is the clock source for CPU, PLLA should
be disabled/enabled in the final/first phase of suspend/resume
so that the power consumption in suspend/resume to be minimal
and suspend/resume time to be minimized.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/mach-at91/pm_suspend.S | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
index 52b262d56cfd..bfb3aab8859e 100644
--- a/arch/arm/mach-at91/pm_suspend.S
+++ b/arch/arm/mach-at91/pm_suspend.S
@@ -47,6 +47,15 @@ tmp2	.req	r5
 	.endm
 
 /*
+ * Wait until PLLA has locked.
+ */
+	.macro wait_pllalock
+1:	ldr	tmp1, [pmc, #AT91_PMC_SR]
+	tst	tmp1, #AT91_PMC_LOCKA
+	beq	1b
+	.endm
+
+/*
  * Put the processor to enter the idle state
  */
 	.macro at91_cpu_idle
@@ -343,6 +352,14 @@ ENTRY(at91_ulp_mode)
 
 	wait_mckrdy
 
+	/* Save PLLA setting and disable it */
+	ldr	tmp1, [pmc, #AT91_CKGR_PLLAR]
+	str	tmp1, .saved_pllar
+
+	mov	tmp1, #AT91_PMC_PLLCOUNT
+	orr	tmp1, tmp1, #(1 << 29)		/* bit 29 always set */
+	str	tmp1, [pmc, #AT91_CKGR_PLLAR]
+
 	ldr	r0, .pm_mode
 	cmp	r0, #AT91_PM_ULP1
 	beq	ulp1_mode
@@ -357,6 +374,18 @@ ulp1_mode:
 ulp_exit:
 	ldr	pmc, .pmc_base
 
+	/* Restore PLLA setting */
+	ldr	tmp1, .saved_pllar
+	str	tmp1, [pmc, #AT91_CKGR_PLLAR]
+
+	tst	tmp1, #(AT91_PMC_MUL &  0xff0000)
+	bne	3f
+	tst	tmp1, #(AT91_PMC_MUL & ~0xff0000)
+	beq	4f
+3:
+	wait_pllalock
+4:
+
 	/*
 	 * Restore master clock setting
 	 */
@@ -512,6 +541,8 @@ ENDPROC(at91_sramc_self_refresh)
 	.word 0
 .saved_mckr:
 	.word 0
+.saved_pllar:
+	.word 0
 .saved_sam9_lpr:
 	.word 0
 .saved_sam9_lpr1:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

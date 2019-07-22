Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15AF700E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/YqG2t9SU+Xm3W0df9XXcFLyZH7ky81TPbk7phGTzo=; b=pMi+/s8OZNOcLE
	RqFDVIrQZHymth6gwkL8F7EX6Fm9wLL5UD3UeiLVEmwtPTRW0pCiOts2xzUatlZkboGZserLKHEkD
	LR3mcAUpmQB7uZHrNCF1OEm8384J76RUdOGHtYWIbW7cYuyRIFVzeJFvRSl5nBgXmjjdvx/yrnxBT
	53uodTwE7xP3mfDq5tTYy7Ky955cUhnIqShrGMIDA5ymmzNB7KAZNQD3rx3B96LVDwmfkOJ2UXd3g
	AZoGm5IUJj73SRoVId37ufjhrcFVTxRlZJaT+XYnotjLh27g/yvI+GZCAlr3UU5VtA/24z6qbOY8z
	NU+5wbFbFolYKP7GAJMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYFV-0007al-Uj; Mon, 22 Jul 2019 13:21:06 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYCV-0004jY-9c
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:18:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id a15so35134907wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7QzkaTCV3I7NgoLWSlqzvltTcK62DUmr4R57ORffNTM=;
 b=mkotl6aKmS6IdISEAzL4effKL/yQ4f6Bflxe7dR33J3CkOqOXN/0ikxRpbq4KKx9W3
 /1mj4oIHUAzy52gQp4Zp+PzmgW0uZAS3wgBOZ2iL/HdgMOborcG8TouHXo166FX8K2OM
 yudmdMwNeMOfKrbPArt0B8WcxGvdTeEvBf/pqCjAviSWPCZiAMPFXOlX3QUF8hVeDpjL
 RzTgxAlNRTBum3vlSnwA7WzklbPJKUW5/o9yzmFBF1ZfmwK4suB0IU95C9bohcv5vzZx
 /KUPAaYzUzjWVaE6N5wDF5fzFlwCbnLW2o0ySguPGm3TnMu66TsKZrS5TdNwjS30RiBU
 584g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7QzkaTCV3I7NgoLWSlqzvltTcK62DUmr4R57ORffNTM=;
 b=ESZQdDwMsgoS2CU466ewG7ay+4r9LhStQXXB7+luVOOWvmc02dVcj12oAdCos6zpuV
 Ybtpc6o/L6BwOkeHHzYHZwBbK5nXSgknDDvflmfCVDi9iqWJuHz0YHxiEWZMBC3YdAhK
 5gJI8OaMia5zQ+50B0nBY2aKgBJr7iYdPY6ZXfVSruzkR/bWtNoM4N7i15fXroR4wPhD
 9H4VaZT4eDWiTa9qUHnbLwZFi0EorGSQmOHLQ7ZGesqJ7mxu2Q0pU9aw2UXAREH5OMgO
 nMrNnC0uHQIhhde4otzRTZ2onAlBcue2Hm3KomBH+32nQg0Drp5clk1Ej1+k1UwkzsHI
 zXBw==
X-Gm-Message-State: APjAAAV/2vsEjbCjd6EHQBVUHMW0P0j9ntOHrbk5R+o3KFCtSbuJXP8I
 qIE0f4LZMKJeaqViNVCp1Po=
X-Google-Smtp-Source: APXvYqxw087DX8W4z4K8oPGRqejCwotCKfuU4fP4ThXxJdSTKyrurerZBfN0BApuTQqtr0i1pjtIRg==
X-Received: by 2002:a7b:c247:: with SMTP id b7mr66573345wmj.13.1563801475995; 
 Mon, 22 Jul 2019 06:17:55 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z6sm34156657wrw.2.2019.07.22.06.17.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:17:55 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [RESEND PATCH 04/10] ARM: davinci: da830: switch to using the
 clocksource driver
Date: Mon, 22 Jul 2019 15:17:42 +0200
Message-Id: <20190722131748.30319-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722131748.30319-1-brgl@bgdev.pl>
References: <20190722131748.30319-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_061759_632127_3689FF55 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 David Lechner <david@lechnology.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

We now have a proper clocksource driver for davinci. Switch the da830
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/da830.c | 41 ++++++++++++-----------------------
 1 file changed, 14 insertions(+), 27 deletions(-)

diff --git a/arch/arm/mach-davinci/da830.c b/arch/arm/mach-davinci/da830.c
index 220e99438ae0..018ab4b549f1 100644
--- a/arch/arm/mach-davinci/da830.c
+++ b/arch/arm/mach-davinci/da830.c
@@ -21,7 +21,8 @@
 #include <mach/common.h>
 #include <mach/cputype.h>
 #include <mach/da8xx.h>
-#include <mach/time.h>
+
+#include <clocksource/timer-davinci.h>
 
 #include "irqs.h"
 #include "mux.h"
@@ -676,32 +677,17 @@ int __init da830_register_gpio(void)
 	return da8xx_register_gpio(&da830_gpio_platform_data);
 }
 
-static struct davinci_timer_instance da830_timer_instance[2] = {
-	{
-		.base		= DA8XX_TIMER64P0_BASE,
-		.bottom_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT12_0),
-		.top_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT34_0),
-		.cmp_off	= DA830_CMP12_0,
-		.cmp_irq	= DAVINCI_INTC_IRQ(IRQ_DA830_T12CMPINT0_0),
-	},
-	{
-		.base		= DA8XX_TIMER64P1_BASE,
-		.bottom_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT12_1),
-		.top_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT34_1),
-		.cmp_off	= DA830_CMP12_0,
-		.cmp_irq	= DAVINCI_INTC_IRQ(IRQ_DA830_T12CMPINT0_1),
-	},
-};
-
 /*
- * T0_BOT: Timer 0, bottom		: Used for clock_event & clocksource
- * T0_TOP: Timer 0, top			: Used by DSP
- * T1_BOT, T1_TOP: Timer 1, bottom & top: Used for watchdog timer
+ * Bottom half of timer0 is used both for clock even and clocksource.
+ * Top half is used by DSP.
  */
-static struct davinci_timer_info da830_timer_info = {
-	.timers		= da830_timer_instance,
-	.clockevent_id	= T0_BOT,
-	.clocksource_id	= T0_BOT,
+static const struct davinci_timer_cfg da830_timer_cfg = {
+	.reg = DEFINE_RES_IO(DA8XX_TIMER64P0_BASE, SZ_4K),
+	.irq = {
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_DA830_T12CMPINT0_0)),
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT12_0)),
+	},
+	.cmp_off = DA830_CMP12_0,
 };
 
 static const struct davinci_soc_info davinci_soc_info_da830 = {
@@ -713,7 +699,6 @@ static const struct davinci_soc_info davinci_soc_info_da830 = {
 	.pinmux_base		= DA8XX_SYSCFG0_BASE + 0x120,
 	.pinmux_pins		= da830_pins,
 	.pinmux_pins_num	= ARRAY_SIZE(da830_pins),
-	.timer_info		= &da830_timer_info,
 	.emac_pdata		= &da8xx_emac_pdata,
 };
 
@@ -743,6 +728,7 @@ void __init da830_init_time(void)
 {
 	void __iomem *pll;
 	struct clk *clk;
+	int rv;
 
 	clk_register_fixed_rate(NULL, "ref_clk", NULL, 0, DA830_REF_FREQ);
 
@@ -756,7 +742,8 @@ void __init da830_init_time(void)
 		return;
 	}
 
-	davinci_timer_init(clk);
+	rv = davinci_timer_register(clk, &da830_timer_cfg);
+	WARN(rv, "Unable to register the timer: %d\n", rv);
 }
 
 static struct resource da830_psc0_resources[] = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

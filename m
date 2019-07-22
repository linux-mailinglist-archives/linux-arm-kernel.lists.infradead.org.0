Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A27700F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:22:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkp/t7Utiyg0Edvn6tt8dWqEHZNpI/1kj4KrLyG3ZW0=; b=JqfZfButB4RO7H
	OKYVFDYXm1xMpWpZPf/gCCFGaUNtvdXrda9eO5+ThiYLb4ughINWvGUyAi+ybTXx6912HK2By8lTI
	YIjmM40BfMUCRtOQavSp26SVnfyZopKlOwHBUehotIorwZUx6YdqBLu3mzXaHl1Z1hNohEA83Aalv
	NZT+vo7I5r/hTH5o3jWXP67Pu+IMSODCtAXAL+27zUGC8xq0ig0RLSNrySkgUFe8AAfmYfjEbPdtR
	ziH8/aBjphliFAq82p8aGiUwyPoLn99O5eipOhLNBTuERdxERzOzwEObAtxNLeAfx29fSCxZChfqj
	eObHw8MA/aalTASX0Tvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYGx-0008Ig-Cv; Mon, 22 Jul 2019 13:22:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYCY-0004q0-3S
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:18:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id n9so39466091wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4D3o5SEJKsvVBksV7qKTIddf2rG+0VEDDDbyrl2Tbrs=;
 b=yGPiN2mvApoi3Tmm1BR9ii6bxGVu2gVZidX5Rhf9EF6Ra8xLEiReChUQpbJa/YNy89
 LlpaYNPoJWUZ860/PdyDvr9hA/0guKHAzs8puaHH9mSnCANpjoBP4ZwoCTMJrvjx6xd2
 xXfnXRR+mQIiP2f8OR8NTtHZZ4/VSNbbQ99V3sbC2fuY3Pd/ZahnnYxxst8DgYXCiInB
 vAByCJP+BsDSCso/uvMmd125+kmYV2pMSd6fqssjfS2dVt0al/c7x+G9ek8BNZUUAAlt
 tqksMV6DFPHeR/NlXKkzQTasWOCnQSjdSEyzLrds0S8i079xu2YH9h6bn31UGg/EzRPR
 rl3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4D3o5SEJKsvVBksV7qKTIddf2rG+0VEDDDbyrl2Tbrs=;
 b=mVDkmnw/76ERTIfM7GflwfS+NI8yYaYVp9GOvQbknmiWwrmr4Eo3Ispz3aocKTnhEN
 X+aMI3xx2GeOWibS/YG4sM4BgLMlkep1XHfwaR9DMyZIOWC/5MzmbPV9AN2XskvR6MR1
 u+sLsZFUXkOOUPyFTq83gln6a8Rkur9k7qe1/GL/vihZZx8b8hKm0jHcgMya5ArWD/oM
 +QFa+kKu0A6Q3Lp7D+hNA2iLd0fTGr9Obe9WFIen1X9I/qPk9RH5WCe94yFiSVBNa0kS
 Y+sLjElkKEmhcOyytwtSChMnOioDBrBsFt/o/v7+1zx83cmwQVXXnd6+xpTA5aElZ0ex
 6bRQ==
X-Gm-Message-State: APjAAAVw9rdvEunMmYJ8L/W1H+owHV455XdpYh/mZ51hibEURTNs7LQA
 32aZVI8JMQNu4YLe9lW9r+GKeo1+
X-Google-Smtp-Source: APXvYqxPkVnjlezscaNqpaFxgwBmw/ubpqan5rXFlB+uwyl+qnq0OQHnkDnthoFroLpDcGFM8bUjXQ==
X-Received: by 2002:adf:c594:: with SMTP id m20mr47191662wrg.126.1563801480886; 
 Mon, 22 Jul 2019 06:18:00 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z6sm34156657wrw.2.2019.07.22.06.17.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:18:00 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [RESEND PATCH 09/10] ARM: davinci: dm646x: switch to using the
 clocksource driver
Date: Mon, 22 Jul 2019 15:17:47 +0200
Message-Id: <20190722131748.30319-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722131748.30319-1-brgl@bgdev.pl>
References: <20190722131748.30319-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_061802_359327_46838B01 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

We now have a proper clocksource driver for davinci. Switch the dm646x
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/dm646x.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-davinci/dm646x.c b/arch/arm/mach-davinci/dm646x.c
index 97fe533726e9..2b628c31aef4 100644
--- a/arch/arm/mach-davinci/dm646x.c
+++ b/arch/arm/mach-davinci/dm646x.c
@@ -28,7 +28,8 @@
 #include <mach/cputype.h>
 #include <mach/mux.h>
 #include <mach/serial.h>
-#include <mach/time.h>
+
+#include <clocksource/timer-davinci.h>
 
 #include "asp.h"
 #include "davinci.h"
@@ -501,15 +502,15 @@ static struct davinci_id dm646x_ids[] = {
 };
 
 /*
- * T0_BOT: Timer 0, bottom:  clockevent source for hrtimers
- * T0_TOP: Timer 0, top   :  clocksource for generic timekeeping
- * T1_BOT: Timer 1, bottom:  (used by DSP in TI DSPLink code)
- * T1_TOP: Timer 1, top   :  <unused>
+ * Bottom half of timer0 is used for clockevent, top half is used for
+ * clocksource.
  */
-static struct davinci_timer_info dm646x_timer_info = {
-	.timers		= davinci_timer_instance,
-	.clockevent_id	= T0_BOT,
-	.clocksource_id	= T0_TOP,
+static const struct davinci_timer_cfg dm646x_timer_cfg = {
+	.reg = DEFINE_RES_IO(DAVINCI_TIMER0_BASE, SZ_4K),
+	.irq = {
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT12)),
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT34)),
+	},
 };
 
 static struct plat_serial8250_port dm646x_serial0_platform_data[] = {
@@ -587,7 +588,6 @@ static const struct davinci_soc_info davinci_soc_info_dm646x = {
 	.pinmux_base		= DAVINCI_SYSTEM_MODULE_BASE,
 	.pinmux_pins		= dm646x_pins,
 	.pinmux_pins_num	= ARRAY_SIZE(dm646x_pins),
-	.timer_info		= &dm646x_timer_info,
 	.emac_pdata		= &dm646x_emac_pdata,
 	.sram_dma		= 0x10010000,
 	.sram_len		= SZ_32K,
@@ -652,6 +652,7 @@ void __init dm646x_init_time(unsigned long ref_clk_rate,
 {
 	void __iomem *pll1, *psc;
 	struct clk *clk;
+	int rv;
 
 	clk_register_fixed_rate(NULL, "ref_clk", NULL, 0, ref_clk_rate);
 	clk_register_fixed_rate(NULL, "aux_clkin", NULL, 0, aux_clkin_rate);
@@ -668,7 +669,8 @@ void __init dm646x_init_time(unsigned long ref_clk_rate,
 		return;
 	}
 
-	davinci_timer_init(clk);
+	rv = davinci_timer_register(clk, &dm646x_timer_cfg);
+	WARN(rv, "Unable to register the timer: %d\n", rv);
 }
 
 static struct resource dm646x_pll2_resources[] = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

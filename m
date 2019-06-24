Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306D950BB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkp/t7Utiyg0Edvn6tt8dWqEHZNpI/1kj4KrLyG3ZW0=; b=DCFrIeVjFnWirr
	pwNRNRVvjZWU01XwhtiBq2RG9alJiPxzPxQLt0OHzWvReKE48eJEHg+0RisBKIZHetl8bYkL3Qel0
	cYsOF1rQ8Z/LYpFToyDhYN8JWXPR092W16ofAiVgPWXlPGntqz0pfrl/90KM/+uapY0tmhtHzDyYP
	PTi5yi1zDmVvDJ3tGZgdrEuWiEh/2B1lPzs0sWu3YxzIJo+BQI3EBK/rmZEZg/MSaQT1wlELX4rum
	fmcUXxISKmUXHHn6iwgK+mzJnWkPoRa0gp0jf6s7Vaq6v4N8W3MkHjET3R7BvnhwxtmTcE2uluKKr
	i0VbONqb6TItkEgaMaVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOsE-0003J7-CP; Mon, 24 Jun 2019 13:19:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnT-00085F-Qs
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id w9so14246567wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4D3o5SEJKsvVBksV7qKTIddf2rG+0VEDDDbyrl2Tbrs=;
 b=tctRPNjWrC2Vt84gqwVrLJlyUXsOUtGoAseuFGx4UAAS4tI2v37ZBitD/0A73cllC0
 HU1E+DYtpMe8p2E7KijS3JKjI7jMsjvzcB6EuRgaG0NrcNS2Yhzs/NXa5W7El3nJBwC/
 xC0OJcieyCLFNNtB36ffVb9NZxu0wOd34S39IZL1hs6B+IFlR98/oVeBbphjxDNPGguT
 j/s87zbGUN9E3zHokCDjT6mTXMw7w0zoST6/kCfpj6K0CMri9sLs5gwRdtYzh2UmsOmS
 vJhKkM6HD9/hQjhHXiiIyEeeup3cbREjdbNv+k5AVjKlHbRe0NfSTbuVZqYUi2dZuQnP
 jZ7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4D3o5SEJKsvVBksV7qKTIddf2rG+0VEDDDbyrl2Tbrs=;
 b=mziKx7QkzxXJauZgIrhRAreGDA0wMDZYxYeAEuCTyWvH1k7bXhqrZZSwH98OUBSslR
 6VWdeb1rkzdlaLoQoSaOFQmblJAthLJS2yiiowh8saYH91w41FAb1JS766/xiHuibjQw
 dVLuAtpvfzcTh0filBAHB4l7e8GmWSsqh8I1gXWQIV9mt0FmxUacr2sEwmZ3SRXiey0x
 p+ANrwiyWK3KCG9tzFUsUOcg8/jkXS6N8LoBaU74B6cugG6V3djjIYoC2vVAkcgvhe/e
 4Xv71f7uSvZKvabt8hiCm1sIZvbX5v1qTJ2mzLOWSIHmBgtNLhQVw+G052lSZRBQylqT
 supA==
X-Gm-Message-State: APjAAAVMO2XeyMO8BlgN5lLEJs6QDiaSS3EpGVN6VTOBJQxja75gTrob
 4MsKjG9Fk0wYmT2r/4oVVVawCQ==
X-Google-Smtp-Source: APXvYqwbRHzkbzEasV7zXLRLlOukqtmx2riVNvJZJOvWanztVmt5mbXS4yH2Y7UyFN3oIUMg2jYf5Q==
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr15926991wmc.159.1561382050517; 
 Mon, 24 Jun 2019 06:14:10 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y2sm9535526wrl.4.2019.06.24.06.14.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:14:10 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 09/10] ARM: davinci: dm646x: switch to using the clocksource
 driver
Date: Mon, 24 Jun 2019 15:13:50 +0200
Message-Id: <20190624131351.3732-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624131351.3732-1-brgl@bgdev.pl>
References: <20190624131351.3732-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061412_165966_ECDFC6C0 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

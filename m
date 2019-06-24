Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274B950BB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+zLgAG3opmkg+lxhlklrv7jlTqQDISmoLStCHFbAik=; b=R/phPIt6+qOyt5
	kajKGtp5+BQMIK8cQv29Z4I+A0dOeeGTd7g9xZycskJKE5AKWAW+JdVLWOD33rZcpt/7Yullfhzun
	X25PFUA1lvazogWIKymAsYc1MgnZxjha+xvbErVLVi977u7obSQ9MBNpKKhN4+VFz47IdMQP3KY7r
	VKmL30hiVopzb9EQFqmpszylEPw/lNtwR1oExtpXlP0Awdxb272hxqfCDTohrHqgLUYtFbquj/j3b
	UPaUaMxRwlL7Kq0B+l4kdvq5bP8li2gPLQ1F7Yyrlt68BFVBMBB/WXtDbasoV5hcaUFTInEoWJWZB
	dvdLPS6wm5xfjotaBCJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOru-000340-Jo; Mon, 24 Jun 2019 13:18:46 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnS-00084u-Sj
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id u8so13343466wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=550rdQvPEpXRICt57j9lxMM5hxSHkZtM5UQc6a6drbE=;
 b=MApm63Q5KkYtQWv/PSQalezO2BBDnpIijPrWRFHKBj7SA+98UuiveTqEwQtX429kTE
 Nf5ie8av3/38lXA6GiaCdQoqNn1nhPThbBpKeSbS0gJ9oKhj0TfcF3c73PhbniIu3iiL
 wSqHRqM90R7kZrCD3hMnkEt7pJt/C4kz7lLcogQApq6BssveU4OWFnMOvCKXttEx2aId
 a6oB6n+4nGRsC214G3Ew24iYriZRk9MJ6wteIrMfHEwlzsmUS++7I6I6Z0clRTAvb4Q3
 6MKkmgxi8rE+tRwcmRiGOzxjyTXuM/W/94DZWp30FHmjqs6ds0KGDEs7a8d3CUNILFt5
 KF4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=550rdQvPEpXRICt57j9lxMM5hxSHkZtM5UQc6a6drbE=;
 b=RIm3nTa9sia1rORl/HhmSSlVug/I/SzTYAq4iwGVL+r3KuFVD3Q9XkJbcufA9AE36s
 H6WF/lyMyIkifMaDCVa4D66YFSlV3OU+7ZGIhrpycFuqgKy+gyuq9emlTyBCBwOELS/B
 yn+p8acnuKpScIGuvvlnzCvxo669t+tJBf+K0CpfnJ4KIZI5XB5pg9WPEwHQtPUJWcFc
 vy2X+JKSxOhpctOCXVFrbAKBxnJyxiW1OgHoXFmwA26mQJI3iAacNhU6U9rK9u5DSvNS
 h9Fv+sQWNLKjNCxB2t6f84JPILQFRLn519Vf3/Jwv50syK9V3NNai31bnQnUH2y6qOI8
 TWZA==
X-Gm-Message-State: APjAAAX3aFoNcZ6D3zF9xMcgw1xwU0URKI6Pva66n6mYD4ZIokluljuT
 Wbu5eqw4rdj4lDa7KS3us+SiHg==
X-Google-Smtp-Source: APXvYqxMfoGiYVcKiwFRikncCa+qI0TnCVmdSIl2dnveLE/Y9e5L/NveSMlQa58p67RnT6Ou8Hsfsw==
X-Received: by 2002:a7b:c94a:: with SMTP id i10mr15519108wml.97.1561382049688; 
 Mon, 24 Jun 2019 06:14:09 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y2sm9535526wrl.4.2019.06.24.06.14.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:14:09 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 08/10] ARM: davinci: dm644x: switch to using the clocksource
 driver
Date: Mon, 24 Jun 2019 15:13:49 +0200
Message-Id: <20190624131351.3732-9-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624131351.3732-1-brgl@bgdev.pl>
References: <20190624131351.3732-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061411_167465_493DB9C8 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

We now have a proper clocksource driver for davinci. Switch the dm644x
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/dm644x.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-davinci/dm644x.c b/arch/arm/mach-davinci/dm644x.c
index 7a6b5a48cae5..24988939ae46 100644
--- a/arch/arm/mach-davinci/dm644x.c
+++ b/arch/arm/mach-davinci/dm644x.c
@@ -27,7 +27,8 @@
 #include <mach/cputype.h>
 #include <mach/mux.h>
 #include <mach/serial.h>
-#include <mach/time.h>
+
+#include <clocksource/timer-davinci.h>
 
 #include "asp.h"
 #include "davinci.h"
@@ -561,15 +562,15 @@ static struct davinci_id dm644x_ids[] = {
 };
 
 /*
- * T0_BOT: Timer 0, bottom:  clockevent source for hrtimers
- * T0_TOP: Timer 0, top   :  clocksource for generic timekeeping
- * T1_BOT: Timer 1, bottom:  (used by DSP in TI DSPLink code)
- * T1_TOP: Timer 1, top   :  <unused>
+ * Bottom half of timer0 is used for clockevent, top half is used for
+ * clocksource.
  */
-static struct davinci_timer_info dm644x_timer_info = {
-	.timers		= davinci_timer_instance,
-	.clockevent_id	= T0_BOT,
-	.clocksource_id	= T0_TOP,
+static const struct davinci_timer_cfg dm644x_timer_cfg = {
+	.reg = DEFINE_RES_IO(DAVINCI_TIMER0_BASE, SZ_4K),
+	.irq = {
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT12)),
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT34)),
+	},
 };
 
 static struct plat_serial8250_port dm644x_serial0_platform_data[] = {
@@ -647,7 +648,6 @@ static const struct davinci_soc_info davinci_soc_info_dm644x = {
 	.pinmux_base		= DAVINCI_SYSTEM_MODULE_BASE,
 	.pinmux_pins		= dm644x_pins,
 	.pinmux_pins_num	= ARRAY_SIZE(dm644x_pins),
-	.timer_info		= &dm644x_timer_info,
 	.emac_pdata		= &dm644x_emac_pdata,
 	.sram_dma		= 0x00008000,
 	.sram_len		= SZ_16K,
@@ -669,6 +669,7 @@ void __init dm644x_init_time(void)
 {
 	void __iomem *pll1, *psc;
 	struct clk *clk;
+	int rv;
 
 	clk_register_fixed_rate(NULL, "ref_clk", NULL, 0, DM644X_REF_FREQ);
 
@@ -684,7 +685,8 @@ void __init dm644x_init_time(void)
 		return;
 	}
 
-	davinci_timer_init(clk);
+	rv = davinci_timer_register(clk, &dm644x_timer_cfg);
+	WARN(rv, "Unable to register the timer: %d\n", rv);
 }
 
 static struct resource dm644x_pll2_resources[] = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C2D700EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sP+suA0o3I5Q2A4v5nZ0MnkytQdyI/PjP8DPuyj8qu8=; b=K2aJeT8GiR0EWG
	8mLDzk0/+2cJWS4s9d1hjOSgUw5PApzZdXQIK4iWbAv/05Q96J4Z9HEESe3V49tk8828rJGvfw3Vm
	UmWjPW5PecRx8FuoKLiQogp1OG3MlMIbZkWdLPD3lM43T5/JrtSVBavFx+CBcH+WRxZTBmTZFk3vS
	Hf4UGvgVcf2Ur6bk8hIEc/QP5AbwQUDPqGD7iZuIDNsQ7G8slaBlASshGAoJbEzj5B07WZAJxy8FU
	EkPHZbfXyj67V/FHUCiaVMtXDoHy0vgbeFXaGI4qXVr4RZrBDkF1JqgtXSvRgRVZJ2LTpqE/+flQB
	Itf0v7zdrquviUlfEqTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYG6-0007qB-HI; Mon, 22 Jul 2019 13:21:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYCW-0004nX-1q
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:18:01 +0000
Received: by mail-wr1-x442.google.com with SMTP id r1so39383952wrl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=19fYL7Z8mI6tfJg545F0VQ6RS/+NjmhdJgfi1UhO5UU=;
 b=DsDrdUquw3YNnBzyEWqWdI+Cnfy6Fuvtlxefcq7vLIqQu9bYaNFyXVPtdG0VhmtOt1
 jPjkrCH4S9jJwJIUfomAlL35Jg+buseKoulSgicwy7YtYH0aLc5gMNd5buv6y7ufo5fP
 /jM319NAu7NqGRg5qnv+LPCISXZ2vCD8SP5JNc/Gszn3x2SI0qBV2aQ4LdoM6GpHnybs
 Iy8jYLrMqWUDEOQ5miMz5tfL1PBoX9GCwLOozl9sqv7rRhgBS0BueM0N+t4lR0YqqXlo
 mbkfrhlSdzEW47X2cvAz20UX0YtCRcafjiQmVcUbseybZ7AU02C+j/4igUBBI/Gbmens
 HP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=19fYL7Z8mI6tfJg545F0VQ6RS/+NjmhdJgfi1UhO5UU=;
 b=dsQOGnIRQJxd6/jGE55L2ZjRbo2ntItsOCR0U8zk+qut3aKfZ/qidkUlvywVtd95K7
 4MPi0HdSBwE0eFDnW0Yku7wi04gpfZtwEcUG2ZCVZ92i6hio+waJZbmGmKYJkeRPOxzM
 xc1whVHemVBox6C/gpt3ji8pmjU0rbrDJXOyThkL4G1nUn4PI/57m02oxvRByO2CP6C8
 w+Wbynp9r13WQgB/NqLdrWo+lCcgAUtl6KspOTJuGFfHObrH/7cO4/inM+hHlD6HGDNN
 EdiECeA5wHPd3j7OlkR8t9PvHDbAprweCbAXsXYvGSYCSbZ5ce3jpR9PcyOfzowi11Jc
 q4GQ==
X-Gm-Message-State: APjAAAUKNrXJYrrggxvHgDZMzF9AG6+2z0MZMqjo/0LNrpdEFP2SqzqW
 IcCRVJ906HplmrXNu/uhN8VvR+SE
X-Google-Smtp-Source: APXvYqx03dcJEB7dW7BRLPq2VnDhGkGWV+spKrTYqsXZx5pmb7YimlWrjM6/E+UJDvKDOeIoVr/LYA==
X-Received: by 2002:adf:f348:: with SMTP id e8mr77592071wrp.76.1563801478939; 
 Mon, 22 Jul 2019 06:17:58 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z6sm34156657wrw.2.2019.07.22.06.17.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:17:58 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>,
	Kevin Hilman <khilman@kernel.org>
Subject: [RESEND PATCH 07/10] ARM: davinci: dm365: switch to using the
 clocksource driver
Date: Mon, 22 Jul 2019 15:17:45 +0200
Message-Id: <20190722131748.30319-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722131748.30319-1-brgl@bgdev.pl>
References: <20190722131748.30319-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_061800_566242_562C8074 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

We now have a proper clocksource driver for davinci. Switch the dm365
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/dm365.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-davinci/dm365.c b/arch/arm/mach-davinci/dm365.c
index 8062412be70f..2299ca445c0e 100644
--- a/arch/arm/mach-davinci/dm365.c
+++ b/arch/arm/mach-davinci/dm365.c
@@ -35,7 +35,8 @@
 #include <mach/cputype.h>
 #include <mach/mux.h>
 #include <mach/serial.h>
-#include <mach/time.h>
+
+#include <clocksource/timer-davinci.h>
 
 #include "asp.h"
 #include "davinci.h"
@@ -660,10 +661,16 @@ static struct davinci_id dm365_ids[] = {
 	},
 };
 
-static struct davinci_timer_info dm365_timer_info = {
-	.timers		= davinci_timer_instance,
-	.clockevent_id	= T0_BOT,
-	.clocksource_id	= T0_TOP,
+/*
+ * Bottom half of timer0 is used for clockevent, top half is used for
+ * clocksource.
+ */
+static const struct davinci_timer_cfg dm365_timer_cfg = {
+	.reg = DEFINE_RES_IO(DAVINCI_TIMER0_BASE, SZ_4K),
+	.irq = {
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT12)),
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT34)),
+	},
 };
 
 #define DM365_UART1_BASE	(IO_PHYS + 0x106000)
@@ -723,7 +730,6 @@ static const struct davinci_soc_info davinci_soc_info_dm365 = {
 	.pinmux_base		= DAVINCI_SYSTEM_MODULE_BASE,
 	.pinmux_pins		= dm365_pins,
 	.pinmux_pins_num	= ARRAY_SIZE(dm365_pins),
-	.timer_info		= &dm365_timer_info,
 	.emac_pdata		= &dm365_emac_pdata,
 	.sram_dma		= 0x00010000,
 	.sram_len		= SZ_32K,
@@ -771,6 +777,7 @@ void __init dm365_init_time(void)
 {
 	void __iomem *pll1, *pll2, *psc;
 	struct clk *clk;
+	int rv;
 
 	clk_register_fixed_rate(NULL, "ref_clk", NULL, 0, DM365_REF_FREQ);
 
@@ -789,7 +796,8 @@ void __init dm365_init_time(void)
 		return;
 	}
 
-	davinci_timer_init(clk);
+	rv = davinci_timer_register(clk, &dm365_timer_cfg);
+	WARN(rv, "Unable to register the timer: %d\n", rv);
 }
 
 void __init dm365_register_clocks(void)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

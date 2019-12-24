Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3345129FEE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 11:04:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22gDuc/qDi5TPqosHdrpKvKU++ynDjDPjL8DPJW0bxw=; b=W9uwAO01hkPrkN
	wsJS/g/XJ6Q9FXBxBWaKs80OTYXH+BTelw/LLYql/YiOq/2L16m63DbKXHN0JxmXNeSIDyVdjznjb
	L0o3c186jMJ+f8x8oOjXInENXkFSUlguQxE2ugksqiYfyFPTokTP17KsaJh8CvWIhwpHgCXw6DfDm
	CeDpn6Ap87YbaVIKrPNl/5CKWajmVvkmEbE1WTnKbhMj6FnTcWpP29FyqSENLiBtHWpu/aURVe258
	MjL79TigHXzsrcOSfCAsOesODQb7ot6cOCfcnNHSkaHAbnxYNMRp7HY6T4nyLPyia0/JZT8aTErmZ
	vxs4gEypJZLX4Yz2+OEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijh3I-0006Pc-Om; Tue, 24 Dec 2019 10:04:32 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijh2O-0005xd-DA
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 10:03:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so19363465wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 02:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eMvYdN33I4+9ymWnbNhZacsLszkk7sr06Cm5LeypaiE=;
 b=noTPY/cZF1plw/DYzl9uZPadW+jnt0b0HOcqRPd07Sq9VJcJako4Rq2FSlwSsuzNq1
 YGWqa7KDKDf294TAsP7Tgv6TnMW7KjDwd/VFA5EOYJ3gg0AsO5fdzgC2kfKWWA1bCcIO
 82zCWDwa4OkUcYubiSOCJyhzh9PG1nHVdjvkWJvLIP5jWiUxQm6KGCyrFkBsPr16EsOA
 CdGwgTEo0MccOuks4Wx7QmMjPJr3ozAv7fy/ZoUb07QdE28Z4fWtTtzRmXotNtvM8SLG
 72+I0uxRRomVySTndwfPz/l+L1l/bkSpYBdojZtYTbizbWhPCTqbVOrl41tyUAIc6iO3
 xEHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eMvYdN33I4+9ymWnbNhZacsLszkk7sr06Cm5LeypaiE=;
 b=SokjopRuQYoO6AgPMBh6cq7a+2NnpluhzOyoPI2tswmtEFthdN9uvZyR1qXL6udfrZ
 7xBBWeSIAPcLnuyAqySGlqlgYTjbpCoBI/v4whCSiDoLMupI0VXAxVKBVM4EHyGFfZtE
 4GAKNH9Srcrxp1XRqvip8ghZotQmLKnNdNyP6HbuFktFHxE/G8aGAvLFqq3XMU2GusYN
 aejTfK4akPYCuS+art5pbn0Qiiz8r6DkqYYxOTIu8mlsv1cLObGa8ArFn/Lix1ORfJhF
 Evim5L1GnnXfCk2FtjhvEPtPHYt0eD95cjTCpdats0f5T/0l7y7vr/JrqI7ipteu7HRJ
 ZcpQ==
X-Gm-Message-State: APjAAAX1bf7qIXPjSBiQBrYXBDNipGy0k3Y1XAX+ka3zGUM78hs3/9EY
 Q5QZJwNTy7dcf7aVrmPQXECYRg==
X-Google-Smtp-Source: APXvYqzE3QUnUZM2eeQO+YPO5KkGpArPsDMQy+Kv0ICdc5rnXHjbWygsqLQobKpdJQb1p8nnK5ORUQ==
X-Received: by 2002:a5d:4281:: with SMTP id k1mr35692885wrq.72.1577181814837; 
 Tue, 24 Dec 2019 02:03:34 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id a184sm2164048wmf.29.2019.12.24.02.03.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 02:03:34 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH v2 2/3] ARM: davinci: dm365: switch to using the clocksource
 driver
Date: Tue, 24 Dec 2019 11:03:27 +0100
Message-Id: <20191224100328.13608-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191224100328.13608-1-brgl@bgdev.pl>
References: <20191224100328.13608-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_020336_440668_C53A9B0E 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

We now have a proper clocksource driver for davinci. Switch the dm365
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/dm365.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-davinci/dm365.c b/arch/arm/mach-davinci/dm365.c
index 9fc5c73cc0be..c1e0d46996e4 100644
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
+	.reg = DEFINE_RES_IO(DAVINCI_TIMER0_BASE, SZ_128),
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

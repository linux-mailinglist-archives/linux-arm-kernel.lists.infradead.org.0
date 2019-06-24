Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9535550BB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sP+suA0o3I5Q2A4v5nZ0MnkytQdyI/PjP8DPuyj8qu8=; b=LCM5rNRQdstDRH
	40kR4Uiovn50HJ+s7lz2qfC22dyyz9DlYwGOMEnRTS8/VhEUN6LdWpC+y5tJ+N7sbxT9iLR77n1Qk
	B0clrSDcL6U90mI6W3AlHY9MtKQErAlBtcblz2FJdXXDwhO90TXTBYu/M34rbMuRanNdFf7gV8nD6
	ZDrISM/FXx8vaCypurwz/iu8Nu7DjCAmMLyEK1XwljgT/YZOvfg0KkNhdSDa8vdvps1igRd5z3wGQ
	eKmEZjPrltRNCmSmqfm5P8xcgBb+7ZWyC9YYoZd+7FhYATqsEW80fpXI0Kd1NLfLfoz6g6+EKYmOM
	uR6Ap/eGvCdC0/pexeMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOrb-0002pQ-2P; Mon, 24 Jun 2019 13:18:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnR-00084D-St
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id v14so13874833wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=19fYL7Z8mI6tfJg545F0VQ6RS/+NjmhdJgfi1UhO5UU=;
 b=jol/3H/jyd+n5+UmVJcFYxn4G6XLnGFk58Io6xBdo8IH1KMpFbEeamgPfqCKmX/bSK
 C45pQaBMAxpqQNY+G7gicp0SlMFb0+CbflH6zpD48LuGN1pgNdjG6hvQhSot3SDomYfr
 s2ukWKMW14+JD0j0bqWwZDlbSSrU9wpUwBKdw+KxOAnfoq7araQy1xlKbdiztQvcdvwa
 TRBRmgeANjaMFEsPAIhosDfZp77aeyhrEjfEdaYyVF5FXXUft0NyQSs9hA/sBEftWE1L
 f4MUjkjo4HMgTzFyDoTWfEKOjUC5rdlKwOr+KW00cT0tA2Zi93dJuTSFxRTvUMpiJFE0
 kxVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=19fYL7Z8mI6tfJg545F0VQ6RS/+NjmhdJgfi1UhO5UU=;
 b=bwqO/W1RGbTvWjwofCkFd2DQlDqHAP/e3fECI4rmigadhvdJ6a5mlyp5QJt9Mi+mmK
 UqfpjlEGvmo8dU8O0VNkMk/XMjvL43pUfjSqe2xKp+3VHLp4GOi3R4ik61l9OShweH59
 E/Q4GUVTBpSSnCE5zF8JGrVguw+pG1BLtYILEoxVMzVwbOb6VSt+gcKVhVxjHXRcdTU/
 bAPqWNkpJHduxVl8pPDrRKjPrveYreVUCNiSe1G0ZBBY9x5O0AE2X7WdtRUH7kBKYfKL
 Eeg83AhLCFJ0IbAqxmzc6Jh/Ch7Mo5nOcGYlg3vfJDGDbhgtseMsu+0aj7lwpOSUGNmc
 mqPQ==
X-Gm-Message-State: APjAAAUTrRilSO7ZyOId9fD7HPECKDWdxiijY0+eCmzCGKWEekl0VC3c
 DavQkKxjlEnCvbhMT2bHU8wH/Q==
X-Google-Smtp-Source: APXvYqywH596rG5HuH5Z1TME7LtvICvR2+wtjm0DznEwB3khuDIREmwbKdT3WYlktUIicc9QC/rmaQ==
X-Received: by 2002:adf:e910:: with SMTP id f16mr17523944wrm.183.1561382048709; 
 Mon, 24 Jun 2019 06:14:08 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y2sm9535526wrl.4.2019.06.24.06.14.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:14:08 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 07/10] ARM: davinci: dm365: switch to using the clocksource
 driver
Date: Mon, 24 Jun 2019 15:13:48 +0200
Message-Id: <20190624131351.3732-8-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624131351.3732-1-brgl@bgdev.pl>
References: <20190624131351.3732-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061410_009508_501BBFA1 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

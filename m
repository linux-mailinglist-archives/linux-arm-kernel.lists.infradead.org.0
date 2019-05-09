Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D711188B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 13:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TvarOjxQKctRaGrpuYXKFWe9dD+rv6RrzkkXFfGW210=; b=j4NM/YRzJDbITorWR3JkNL+7Bt
	TrhQQNAOxU268+6lSF/xZayJf5B5HJCrsTDqEK4xzESuLIq1g+eaeJbEpPbd6PHOT2VBQjUA0QkDu
	E7x67OP83hxS34rXQjWRnObxVRqpJGenvNdc9pOAbEd/vgjlbfoLUC/7LzUvMa0I74/5ULvlMm3R0
	jUoiQP7o5gC/uI6SyjFZEfg/YygMzCKTr2LWR5cn/2uash+P51DXrDQd9O5CgVbWvQ4yhVfuSe+Aj
	1siwym4d0W9lPUf1LmhfS/SKj80pzzOT3ICLO2Dc+tBI48iQCSb5AjKbjZozTLFHsSJea6hBgYElb
	wzD8YY4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgy6-0000Iu-Qq; Thu, 09 May 2019 11:12:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgxg-0008HO-83
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 11:11:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id l2so2444873wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 04:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uXE39cHm/ePcze6cpMzENlQKnSZwc2KOJnys2n77A3I=;
 b=fBGeZQwyL/GXofUWkHPptZvFcDgg6iRQ++N6BG24UZql7XkRmLSIX4wGmFMKMv4h3k
 4A2HvUQ0oG01QZkjGdkGZdsU8wVM0kW1i0xpcdINkL9OTkEysMjKwlfM2f2xjtVkJ5M1
 vyIL7PeHONfja5TfFdesuMUyT5Gf9aeKARGKfnkaCoN040fl1ZhlP57jcMFhfjU1lU8A
 8DOqB1GVLAYA02p2ACgceWtoWXflDkJ/sZTSCWrYUzESvuQDmtVOqvV5iH4SmGNIAhT2
 zpUUUrjdvSIH3exFamyAB5SdEg0+58LvjhYcCwdzvOZ5jOglUzEGuFNYeKHgZtAecmBj
 t3ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uXE39cHm/ePcze6cpMzENlQKnSZwc2KOJnys2n77A3I=;
 b=cppkU8VoHxx/xy2gEqz/RYnlaHXPeiHGFC3O3UrISLNnTzZi6evnqyNT3/FsVE679d
 2TJNoHZAbOaMBuYomPKm1U5XGO7AwlFRWnfHIpYu4Y4j9IVZ3se/YQi2EwY/CMTCSEJc
 nBidN4ufx7hZDE3lBtOSh1J7/ke8mAxmq6AqBGS0n52XUNNvFdGrkvl4op/IAuCn7z1W
 P5X9qFv/adX9A4HW0sbDe2YkWhMbXLTKS3jS+3ga9xzBEnT8RZzqbBD5Rv0WUvITK0dF
 yXf/iXsDRsV0be4jAUrI4XLyz3AoffrOwUNkL9BPIvFv9Z1aNxt22CCjioU3Isd591mN
 wj7A==
X-Gm-Message-State: APjAAAW6RRZAmQHhjuNzfc3+ZFlhCnPSOWX14voJR9JbQHA5xUO58S7u
 QeRD8kya26hvP1tZ/Jmv5FHyPQ==
X-Google-Smtp-Source: APXvYqzUngphJjXPgwCdPMD+HnCjgeFAhWbgsnM6xO7Dgm9TJSdwV6DIRiqVuLArj7eqjF8ScYtSYw==
X-Received: by 2002:a5d:518d:: with SMTP id k13mr889239wrv.285.1557400298313; 
 Thu, 09 May 2019 04:11:38 -0700 (PDT)
Received: from mai.irit.fr ([141.115.39.235])
 by smtp.gmail.com with ESMTPSA id z7sm2299778wme.26.2019.05.09.04.11.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 04:11:37 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 09/15] clocksource/drivers/tcb_clksrc: Use tcb as sched_clock
Date: Thu,  9 May 2019 13:10:42 +0200
Message-Id: <20190509111048.11151-9-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509111048.11151-1-daniel.lezcano@linaro.org>
References: <7e786ba3-a664-8fd9-dd17-6a5be996a712@linaro.org>
 <20190509111048.11151-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_041140_589921_6926D327 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org,
 "moderated list:MICROCHIP TIMER COUNTER TC AND CLOCKSOURCE DR..."
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Now that the driver is registered early enough, use the TCB as the
sched_clock which is much more accurate than the jiffies implementation.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/tcb_clksrc.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/clocksource/tcb_clksrc.c b/drivers/clocksource/tcb_clksrc.c
index bf68504da94a..9de8c10ab546 100644
--- a/drivers/clocksource/tcb_clksrc.c
+++ b/drivers/clocksource/tcb_clksrc.c
@@ -11,6 +11,7 @@
 #include <linux/io.h>
 #include <linux/of_address.h>
 #include <linux/of_irq.h>
+#include <linux/sched_clock.h>
 #include <linux/syscore_ops.h>
 #include <soc/at91/atmel_tcb.h>
 
@@ -114,6 +115,16 @@ static struct clocksource clksrc = {
 	.resume		= tc_clksrc_resume,
 };
 
+static u64 notrace tc_sched_clock_read(void)
+{
+	return tc_get_cycles(&clksrc);
+}
+
+static u64 notrace tc_sched_clock_read32(void)
+{
+	return tc_get_cycles32(&clksrc);
+}
+
 #ifdef CONFIG_GENERIC_CLOCKEVENTS
 
 struct tc_clkevt_device {
@@ -335,6 +346,7 @@ static int __init tcb_clksrc_init(struct device_node *node)
 	struct atmel_tc tc;
 	struct clk *t0_clk;
 	const struct of_device_id *match;
+	u64 (*tc_sched_clock)(void);
 	u32 rate, divided_rate = 0;
 	int best_divisor_idx = -1;
 	int clk32k_divisor_idx = -1;
@@ -419,6 +431,7 @@ static int __init tcb_clksrc_init(struct device_node *node)
 		clksrc.read = tc_get_cycles32;
 		/* setup ony channel 0 */
 		tcb_setup_single_chan(&tc, best_divisor_idx);
+		tc_sched_clock = tc_sched_clock_read32;
 	} else {
 		/* we have three clocks no matter what the
 		 * underlying platform supports.
@@ -430,6 +443,7 @@ static int __init tcb_clksrc_init(struct device_node *node)
 		}
 		/* setup both channel 0 & 1 */
 		tcb_setup_dual_chan(&tc, best_divisor_idx);
+		tc_sched_clock = tc_sched_clock_read;
 	}
 
 	/* and away we go! */
@@ -442,6 +456,8 @@ static int __init tcb_clksrc_init(struct device_node *node)
 	if (ret)
 		goto err_unregister_clksrc;
 
+	sched_clock_register(tc_sched_clock, 32, divided_rate);
+
 	return 0;
 
 err_unregister_clksrc:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

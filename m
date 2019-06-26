Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B29A356C99
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mX90aKrnNUK0yV0kQAgYFkXYpsmOpNGjvxFEb+w8rMI=; b=Rht8xA/jpsBiNaLTF1v10qPb4B
	rIg8hULRVIZzrmHIU2cyD4M8wFYyub7vr3f9d/v8M9JadohAuqmBF+J3nnnoIGK21S7PSmkWOp3p0
	hLtOWFvkOWCHzZS9uj0NcMXBYRVqWbl6YDG4jI6GlaiYbaYA0BS/fUxMvTFDLN57EeaTf0VEs98g6
	WpQD8uFvTVHTwDSxdnWzs91BPWH47pE9wuERM9f1IdLNWUDGb+8b2/NlWiu5rBCERkdgu8W9KCW4m
	Lbs8WpiK8bHSdD/RDlI2yTxV2T0D4MpXnIS0WVVcEaztotqopsedoMZFY5VzYPz2/5X/8P+gbtOJO
	XeYGD7Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9DK-0002NG-LP; Wed, 26 Jun 2019 14:47:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9Cf-00026e-0i
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:47:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so2408766wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WDX9H0FW6Px0pSdZdykt6dt3zN2IzeMqp5Ci6/xL3gc=;
 b=o/YR4KLnGSN3XUxQDXbXMNiN2apYzQh8iQpRdw2hWfZn6ibwTDytmy8ySv9X0XN8FU
 +LS8SiO/GwArWQ8izxACyxv2edQ7fsNFHq/3jMVw3a7/y4xXDuaqdGpw7y8+gJ6n/jcT
 +0qZqrHr2gBXh+GcBeOq9MA7CO1QMmbk1PE5hZ84ZVQ+GNQiGXjlAWZ4GRi+ZVlPp8z5
 acviqjJXy1lGHttwxdHqLJjOz6Cpkh0RsqsL3HYJnj/P7El4cFSDSFWXFSoZ1f4fUJx7
 lC6G2j/EYzugzUw3Yv+OPQxVbrELyk5B2zU/4L+l8PugvYFso3ffrf3OpGjp9cxXlTke
 e/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WDX9H0FW6Px0pSdZdykt6dt3zN2IzeMqp5Ci6/xL3gc=;
 b=FZoInHboU5vH8TwHmBxYUAGVcj3sHXhhGLtxNYlvzMPqbAs3bB6rkLIYLr8e5h5Nru
 9F5KJxyhcjg7pJvh+Jno8k6nYq5BNrYWDBRw2KuDcydvClfbRvpTs54BabEgQ+o8bvs1
 q/5wVaUbIxRHXQcJEQolXt0/OIJbmKmvAczALveuZl+ON6g2QiHacp6RT42vRhX0sLeh
 LEx/PXbYW51l5YLIrx9LRXDxdO29jDo6A/mKjD9h5FRx5ck9xW8BHF/T3PFgtY7lR2G1
 BwrsqW6LWDiLpOJf+vuZPVocot7qyEEE9wIVK+Ut/fn6Re7Tc6kbqmKiI8BZ0gvMYZP2
 taaQ==
X-Gm-Message-State: APjAAAWX1zAz/jCAlOhidgjOH7itw4N1tb7RE/v3AcJU3dvEwEfCuB4r
 +IUlPcO0xgk20TGtFvj5w33p1Q==
X-Google-Smtp-Source: APXvYqyr2ZM+AvozOpHLwYocqUFpcS89XTwzgRSRq5c60tOhxeGy5YHRwQyU8KfMMZ3h3QRq4y0oKQ==
X-Received: by 2002:a05:600c:1150:: with SMTP id
 z16mr2907355wmz.168.1561560433845; 
 Wed, 26 Jun 2019 07:47:13 -0700 (PDT)
Received: from mai.imgcgcw.net (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.gmail.com with ESMTPSA id h84sm2718557wmf.43.2019.06.26.07.47.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 07:47:13 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 02/25] clocksource/drivers/ixp4xx: Implement delay timer
Date: Wed, 26 Jun 2019 16:46:28 +0200
Message-Id: <20190626144651.16742-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190626144651.16742-1-daniel.lezcano@linaro.org>
References: <adba7d03-e9bd-9542-60bc-0f2d4874a40e@linaro.org>
 <20190626144651.16742-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_074717_064690_A83DE014 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Halasa <khalasa@piap.pl>, Imre Kaloz <kaloz@openwrt.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "moderated list:ARM/INTEL IXP4XX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Linus Walleij <linus.walleij@linaro.org>

This adds delay timer functionality to the IXP4xx
timer driver.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/timer-ixp4xx.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/clocksource/timer-ixp4xx.c b/drivers/clocksource/timer-ixp4xx.c
index 5c2190b654cd..9396745e1c17 100644
--- a/drivers/clocksource/timer-ixp4xx.c
+++ b/drivers/clocksource/timer-ixp4xx.c
@@ -75,14 +75,19 @@ to_ixp4xx_timer(struct clock_event_device *evt)
 	return container_of(evt, struct ixp4xx_timer, clkevt);
 }
 
-static u64 notrace ixp4xx_read_sched_clock(void)
+static unsigned long ixp4xx_read_timer(void)
 {
 	return __raw_readl(local_ixp4xx_timer->base + IXP4XX_OSTS_OFFSET);
 }
 
+static u64 notrace ixp4xx_read_sched_clock(void)
+{
+	return ixp4xx_read_timer();
+}
+
 static u64 ixp4xx_clocksource_read(struct clocksource *c)
 {
-	return __raw_readl(local_ixp4xx_timer->base + IXP4XX_OSTS_OFFSET);
+	return ixp4xx_read_timer();
 }
 
 static irqreturn_t ixp4xx_timer_interrupt(int irq, void *dev_id)
@@ -224,6 +229,13 @@ static __init int ixp4xx_timer_register(void __iomem *base,
 
 	sched_clock_register(ixp4xx_read_sched_clock, 32, timer_freq);
 
+#ifdef CONFIG_ARM
+	/* Also use this timer for delays */
+	tmr->delay_timer.read_current_timer = ixp4xx_read_timer;
+	tmr->delay_timer.freq = timer_freq;
+	register_current_timer_delay(&tmr->delay_timer);
+#endif
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311C318A1BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 18:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rtRUd4TAodc/7rm1Wu8fKi1KJ9BiJkVIP+NL8bL9OM0=; b=dhre7yLpcLblYIPTKSantNXsCW
	bqfKbJOsO4iHkAUtrzanrEtRzv+HK01wRA8pWEZlGxpBzLOtpM7ZTCOHrxcVSJRRnVYH4/X/su5RJ
	KOCKOsELC/6nRwIxsu3dl1bu+2RyTC9nnDbM658QN9qFiKMgl5Mq//1iLE9XyKUHv6E5uO0ju4Uyz
	etOjgjL6ouEkSt6uuOVvrwWr5vuropQzYDeZ++JW15HSFya0pVD7F7b9ucsx1XeRvUE2YhlGW8BcR
	IbWknkALdxJb3F29RUHg1NTT6+195g5xHohlf8LEB4KMwSR3ArKRnksu7GoEzdf6jM7OxCwPqAgax
	V0sjeP2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEciD-0005ga-W7; Wed, 18 Mar 2020 17:42:38 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEci6-0005f4-2D
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 17:42:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id y2so16026787wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 10:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3dcxJNCvC++SuuvRsSGVbNsf6w51bi547QQ/OjMqmLQ=;
 b=PDWQE6oY5WBarlJlgolHRHNcVadn+BJ5bNq1FobZqtoFTih5bWfATo41yfXUWURFyE
 0Bu7OarTd2fMRbnNzMpMTTkswSEGbTFMcPsi2EmfIv+8Hks/7IVVcAAz7nRwFM3Hn8sy
 BqHBW75GK2nzpEec1X0MTMB8/Bhi3m5ERxQpBs2wkn0dmSD6YrlR4dTXi/1PtYvo8f6S
 jSA0YhgCT3K/oV9A3bRRpGJIW0PLVdSKizPB5S+E+vI4A25Tp+7dGfVZzd4gs9LQtt9E
 qhkfm1PR3n3gn9tX5jiQHdGusg0oa/1wO4wCL5C9NmyRb74MHMevApUwyn5Ibn9BgueQ
 VPkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3dcxJNCvC++SuuvRsSGVbNsf6w51bi547QQ/OjMqmLQ=;
 b=mEGXOYAtyDaErlXAxJ38XEuBF5Z1eegN/yGRGQyyrlwEaXNi9R91Rf6WQWtsPXU6gN
 6RePLe+CrYAQV4pWZ7fS5wm6YSz/U6ROeIde11YMdYbflcY1s/AaVDiv2obbpItza8rb
 3L6HOu9XF70TkeQUyWIWT5bVQdJhx935jaEzp2r84lCV3IhSqTLXeMWwrZ+kXiV30Qwr
 Rklo37xDbm9dblvjyRTf9Fcu/SIxEOlwTH8UShiwxXnZkiPSpceX7dOkEfPRWEvRHrix
 1KobKoLznxh4WRVs4eWadznv97PrDOZCu8wGW3ZzAUPVphutD0OJq64bayWUlgQ54+a9
 IcsA==
X-Gm-Message-State: ANhLgQ3OYt6kQ0nKl/QRcWVu/v8rcQwS3OjXzlpJeDeg7d2ErfH5VVPU
 H1m1cka8Kuy0uwG/6dRLNj9i+A==
X-Google-Smtp-Source: ADFU+vvKyobOYlzcrnmmuxlddBFzyFgGMZdf/uTrpa+0uA75psnEe+wPZRx5MNPaCV1SNn1xB2ZedQ==
X-Received: by 2002:adf:f749:: with SMTP id z9mr6501875wrp.332.1584553347612; 
 Wed, 18 Mar 2020 10:42:27 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:5d64:ea6:49bd:69d7])
 by smtp.gmail.com with ESMTPSA id r3sm3787212wrm.35.2020.03.18.10.42.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 10:42:27 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 05/21] clocksource/drivers/owl: Improve owl_timer_init fail
 messages
Date: Wed, 18 Mar 2020 18:41:15 +0100
Message-Id: <20200318174131.20582-5-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318174131.20582-1-daniel.lezcano@linaro.org>
References: <e6cd8adf-60df-437a-003f-58e3403e4697@linaro.org>
 <20200318174131.20582-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_104230_109080_79570160 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "moderated list:ARM/ACTIONS SEMI ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Matheus Castello <matheus@castello.eng.br>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matheus Castello <matheus@castello.eng.br>

Check the return from clocksource_mmio_init, add messages in case of
an error and in case of not having a defined clock property.

Signed-off-by: Matheus Castello <matheus@castello.eng.br>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/20200219004810.411190-1-matheus@castello.eng.br
---
 drivers/clocksource/timer-owl.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/clocksource/timer-owl.c b/drivers/clocksource/timer-owl.c
index 900fe736145d..ac97420bfa7c 100644
--- a/drivers/clocksource/timer-owl.c
+++ b/drivers/clocksource/timer-owl.c
@@ -135,8 +135,11 @@ static int __init owl_timer_init(struct device_node *node)
 	}
 
 	clk = of_clk_get(node, 0);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		pr_err("Failed to get clock for clocksource (%d)\n", ret);
+		return ret;
+	}
 
 	rate = clk_get_rate(clk);
 
@@ -144,8 +147,12 @@ static int __init owl_timer_init(struct device_node *node)
 	owl_timer_set_enabled(owl_clksrc_base, true);
 
 	sched_clock_register(owl_timer_sched_read, 32, rate);
-	clocksource_mmio_init(owl_clksrc_base + OWL_Tx_VAL, node->name,
-			      rate, 200, 32, clocksource_mmio_readl_up);
+	ret = clocksource_mmio_init(owl_clksrc_base + OWL_Tx_VAL, node->name,
+				    rate, 200, 32, clocksource_mmio_readl_up);
+	if (ret) {
+		pr_err("Failed to register clocksource (%d)\n", ret);
+		return ret;
+	}
 
 	owl_timer_reset(owl_clkevt_base);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

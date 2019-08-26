Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E1C9D79E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 22:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kLtICralPD4HgMcY0x9Hqbflz6gbIkZd/SQxM37EumE=; b=tVbw6l1mxtkHfF5zLA6HL1wbDZ
	377rAcKSNYPtFOpGMOYp0fjxOcrCsbCzf6y4si4gfIz+3cGwazFRFXzXk25jqqr1B4AVZRT71Mx1G
	RgWObHYAGRG+d7demDeAr/o1Ngz4gGwwZzqrUOPnx/exVKq9uF28gzr/d3g8Ua1nGGuzitoFGuDpE
	dj8CedjUZQYK6Og87jiY7Yri0BdrLIyeUTzJOS3NFe7hEl113bNRHOp78nZU6MYWC9WdpLkH5WeJT
	gbdA5Dl+Eka20FKEVK9q2E1x8JaWBnXyyReM2dd9maSLbTk8YsEmpcAZU+W6SwBky7DQJ9SoAbiiz
	mFajyCMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2LsL-0004SW-EQ; Mon, 26 Aug 2019 20:46:05 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Lr5-0002iO-3M
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 20:44:48 +0000
Received: by mail-wr1-x442.google.com with SMTP id y8so16572200wrn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 13:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GWZ01Skh8cQcWVz+pcA6teJikvF4jln+3VYBxfBbkpc=;
 b=aaCTVJwleR8Zw8xXwUhKuTzGd3qAizfF2VBj/m0V6UyufC3CfXvN26JTI9Qrqgssr/
 MhbELD3m6GkHfHycRbKyOSLyJp1wxd8gM339k0zH0PrYKmvsziPSwDgx8OJQWIo6wrwZ
 yU7N3lGW+65+NSrVqjMTQIyBNrKfysn9IMIvmb6xeRY7xPFzJwXkU8xVO0ez8FjkkANm
 Nijts4qCeRVlCthLo6XSxPOVkh/3IaPj8g63mPvqx6G7z1P2cVY6jMWljaPU9hKc1R0R
 Z7kkWsD4ujQUzzh/Y0Rxv/O91hBecyfb02dbxrwgW8Tge+9m29v1crfF+7pvspowd1Ai
 DaeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GWZ01Skh8cQcWVz+pcA6teJikvF4jln+3VYBxfBbkpc=;
 b=PCd1/1GDG8NUeFRnscFCl07kGIhmQLEFwFmVucCUx35aoHQGZ6uCktjqJ710X5ZbSA
 BiyvlOmGpz9sUXKw+01tss2er738G8QWhILmxuAN4yBaj4M3XjVT76egl4DiH5zzMc+E
 nMG4KTBaooSTZ7v4Dw5hDPaWAr14oXyXjlz/1XvGAqciNHAryPjMCjuMm/sOGHR7raYM
 ZoqwsaSJWR/WpaqRgjNuki3saagXCTRzURjLjGXlfk7b4+1Ht6ifAe6lko/7YvSGKo/p
 3iqOMWbjMg9cwyN2J0Q6u7oyKmb0KcL/ZBlSIVCVIE/CN8Epy8Y2wsyD12ejgX/hy4pH
 btEA==
X-Gm-Message-State: APjAAAXLOs8vuHww/ofUZ0at/bDwIsPrGkipqwBc3MvoRG+roOffvFdA
 J2WmBopJdby4cyzUvwSkpK199g==
X-Google-Smtp-Source: APXvYqzPx683hISSMEiLSPegjxKr3ZnA/URrCNibdrFqGNOCuSaM5/nrVsE1EecmfWjLGocI32sTDg==
X-Received: by 2002:a5d:52cc:: with SMTP id r12mr23928260wrv.272.1566852285709; 
 Mon, 26 Aug 2019 13:44:45 -0700 (PDT)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:f881:f5ed:b15d:96ab])
 by smtp.gmail.com with ESMTPSA id 20sm549557wmk.34.2019.08.26.13.44.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 13:44:44 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 04/20] clocksource: sun4i: Add missing compatibles
Date: Mon, 26 Aug 2019 22:43:51 +0200
Message-Id: <20190826204407.17759-4-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826204407.17759-1-daniel.lezcano@linaro.org>
References: <df27caba-d9f8-e64d-0563-609f8785ecb3@linaro.org>
 <20190826204407.17759-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_134447_151655_EFCEDA42 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

Newer Allwinner SoCs have different number of interrupts, let's add
different compatibles for all of them to deal with this properly.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/clocksource/timer-sun4i.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clocksource/timer-sun4i.c b/drivers/clocksource/timer-sun4i.c
index 65f38f6ca714..0ba8155b8287 100644
--- a/drivers/clocksource/timer-sun4i.c
+++ b/drivers/clocksource/timer-sun4i.c
@@ -219,5 +219,9 @@ static int __init sun4i_timer_init(struct device_node *node)
 }
 TIMER_OF_DECLARE(sun4i, "allwinner,sun4i-a10-timer",
 		       sun4i_timer_init);
+TIMER_OF_DECLARE(sun8i_a23, "allwinner,sun8i-a23-timer",
+		 sun4i_timer_init);
+TIMER_OF_DECLARE(sun8i_v3s, "allwinner,sun8i-v3s-timer",
+		 sun4i_timer_init);
 TIMER_OF_DECLARE(suniv, "allwinner,suniv-f1c100s-timer",
 		       sun4i_timer_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

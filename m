Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E62B7678
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yprYzbsFTbRumX+PwTlQDmMn2xi+VqUsifhN7dP2Bw=; b=uyTT3ztW7urQgO
	D+au4tBmpSj84BoSVp/IMu7ik4AMjZfgPHAlXsOyHwZjoGLlZyM2+vdRiE3aMc5rNDFiaL7yIt6m+
	lCftQRpvdjX31Lt4Y0MTdyaRXv37FTYDDbPFJ4TBMkeKumPRto7DYL8lOtTMWkiiwjUwa1AOScUj4
	n9o/VeNDp9rbjfyK/abdJdrO1GrFWLnAi04GfIhxXWK+J9It4m746PZHblRRPtr+SSIr3L2lFSmLZ
	KvtGgElHIfQZO8x03GjiArqyQ1HmuoP2UpL7Wif9zbJC5XrbatovZ7Bk70cGRvZHtityhGm/UrTK8
	Tqzhd/QYfcRzRuSqVlww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAstR-00078Q-Oh; Thu, 19 Sep 2019 09:38:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAstD-00077c-Au
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:38:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id y19so2358033wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 02:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6nXme50vIoJjH0UMqXkc64d0qIp6gNTAIlH2LyUHGog=;
 b=DR+/dAJA+mXD4C0wvuRVF9pzBcCVjEtQwJPyj0zCVNJOEg401UobN787J4oOZpXKrQ
 +f+BOYs73Nv0gtvuItI0CcFXErrIwgD2tJK62f1i45wv9RCUbJmyu/eb7r2oltv8xoxs
 nkGKCv3Puy4/NxyG4dLBQeY4XnsgQ30JObE1PptvfkK6g34hPZXoNiPdoOJNj2H+SAqT
 6q0qi8f070u2KK0YPBra8fiv3oI+NdT7gqUlXmRETx79C5sYCfTTqOJ8bWKaOZNXTIYN
 bHzvNGiElGTzjKowEdl3Rl+vLF0xVSu+pqjb0xnqAyVEA9nXcnbgcV37IhBK19wOjXq1
 ku6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6nXme50vIoJjH0UMqXkc64d0qIp6gNTAIlH2LyUHGog=;
 b=h0JFBaWDQY4UuijQlbsqS+e4T/kC7I9e7/hQfPkp+B+9U/PdqCpMveAimyGl9S8wVi
 FJXItIAiGaEIz880NC6kpd4zBzYngzkUJzCZZUh9gJc8XejZsmAPexBcCKD1ikkGUtDl
 Rj7CBKDcZkFJ8bKjY/+rEEcHtrr8xIvihEQ6B8zY+LpNpQU7WSFhVv1wIGaeKUGFkV+X
 hWtd4WvIV3AHXhDdJ5fp9/2rVI7D6+RuGQCBV4CUYsgZYBbSrqvB4FeKDfTg6CW//XIO
 IVP0shMbP/fn0nBBro7hHKBwmqJGJc1Z69YyZf15yOgme2fYBCTwIrnpXt+VC4q9fnyw
 xB1w==
X-Gm-Message-State: APjAAAUYIx0LDxUWaDWQvG5ibS61dRpgRZt5ZPp/78e3t19xm45T26TK
 Xn+TwP83Pi/35imi7YkOyZ3mN/y1YVy9RQ==
X-Google-Smtp-Source: APXvYqzosaotPCD9Wry9JaxxWXkNUfADDM/jre6SiXpPoSFtALqDV+2F8/XxHOyItGVvmyF72/tECA==
X-Received: by 2002:adf:e443:: with SMTP id t3mr6338044wrm.181.1568885893871; 
 Thu, 19 Sep 2019 02:38:13 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id a10sm9997797wrv.64.2019.09.19.02.38.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 02:38:13 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com
Subject: [PATCH 3/3] clk: meson: clk-pll: always enable a critical PLL when
 setting the rate
Date: Thu, 19 Sep 2019 11:38:09 +0200
Message-Id: <20190919093809.21364-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190919093627.21245-1-narmstrong@baylibre.com>
References: <20190919093627.21245-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_023815_380375_3E0083D3 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure we always enable a PLL on a set_rate() when the PLL is
flagged as critical.

This fixes the case when the Amlogic G12A SYS_PLL gets disabled by the
PSCI firmware when resuming from suspend-to-memory, in the case
where the CPU was not clocked by the SYS_PLL, but by the fixed PLL
fixed divisors.
In this particular case, when changing the PLL rate, CCF doesn't handle
the fact the PLL could have been disabled in the meantime and set_rate()
only changes the rate and never enables it again.

Fixes: d6e81845b7d9 ("clk: meson: clk-pll: check if the clock is already enabled')
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/clk-pll.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
index ddb1e5634739..8c5adccb7959 100644
--- a/drivers/clk/meson/clk-pll.c
+++ b/drivers/clk/meson/clk-pll.c
@@ -379,7 +379,7 @@ static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 	}
 
 	/* If the pll is stopped, bail out now */
-	if (!enabled)
+	if (!(hw->init->flags & CLK_IS_CRITICAL) && !enabled)
 		return 0;
 
 	if (meson_clk_pll_enable(hw)) {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

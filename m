Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949A9CBBD7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yqdhE9X7ftZfD4O6dsFN8t8hlyDEgMKd1ufMmccOsY=; b=RdgUWRFEjZyKoo
	CBkDfztYphqjsaByrwlVslLsqfBLc93rzTcY6Eh5gEqPIeCBNOU1K8OtLbZCjf/gfq3/xm/ViaSUP
	v4MTz8JANdRtSY0vNllxpMPU5+Z+5J10TJjuzKEITL2sd/PdN10AEo+5PjdVBh1ibtRZFnlcCWTS9
	+q40Fv6jM8lTDHv+F6pKdwzHvydyDjJ8/WEMpUB8ojnaTRDtYW9kvnaIznjmU2K0d5WO+MTPJbxTE
	6pETjFQR9d0zTY3eK5I/HxDb3p+Glbr/ypLM9bDp7zVIg7NJqnpFwNZ8QMChmNpXWqZ1hN/b/iJGQ
	eYzQvYSO1IiCJVI+NUaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNiy-0006Qx-0t; Fri, 04 Oct 2019 13:34:24 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNhk-0005M1-C6
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:33:10 +0000
Received: by mail-lj1-x244.google.com with SMTP id m13so6499584ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 06:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=enjD7GinjPEmXbD794v1TL8qB8AXAn8TuqNGVlImRwo=;
 b=cVOCOZBfFV4/Q55ikZfbm3e6RfV3oQtgU+vNCBrhPnWHW0yMoE/YOhCTLpEuSkzPyt
 p/jSR/BxvhMiDKgCkwbGaaribeHJHsoJnVzAtd0w3FmfMc8fEw6xUkR16/spC40jUK7j
 aqmMH79uB6vD7zvJf5xhJIjmux8oZvPGm4juI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=enjD7GinjPEmXbD794v1TL8qB8AXAn8TuqNGVlImRwo=;
 b=epxQV2i+m0yvIQyo/Ay501aW/vmR70sr8q5BJpTYYJkRwWxok5aYSuY1OaJ8OoK/Ft
 o/nVm8r35VQCYigEa5BAfrzhItUvCmBuBN/GSgLmNJYv2+tJ5xKYuFxj8V/sb5u/Qd9Y
 aqTcipw6NOwbMKCXBqegUphhYNdAGTyf/9yR4wUZvrYjYQ/oOGQ17Tqf/QWUS4vE26iH
 jo3EzyRwGHziCr1+27eHL1sCkutO0TrzvarXuzRmuAG3lTtb2B2/GWEb5OE5NQEFRdM/
 r6djxXESzo1BAOAVu+lpY35DYmNREyToLuvNYBSuTc5wRoBKokCl/D6/SwCB6XqfKkP+
 hoGQ==
X-Gm-Message-State: APjAAAUv1ilrpzoPykmb9PmdMXq70uLVg1rEnlB8siZzkDew8mCFVu8a
 TushvJF4QY9MDIdKqkqd9pLUGQ==
X-Google-Smtp-Source: APXvYqzZiPqBZ6nH+PAoIMx4rztRtbFWWqjLzLXZv4d3HV/oeGtcTwju/gptKDUYmHusErUAOSz6bA==
X-Received: by 2002:a2e:9585:: with SMTP id w5mr3871975ljh.220.1570195985888; 
 Fri, 04 Oct 2019 06:33:05 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id y26sm1534991ljj.90.2019.10.04.06.33.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 06:33:05 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 5/6] pwm: mxs: avoid a division in mxs_pwm_apply()
Date: Fri,  4 Oct 2019 15:32:06 +0200
Message-Id: <20191004133207.6663-6-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
References: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_063308_493956_E4573249 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the divisor is not a compile-time constant (unless gcc somehow
decided to unroll the loop PERIOD_CDIV_MAX times), this does a
somewhat expensive 32/32 division. Replace that with a right shift.

We still have a 64/32 division just below, but at least in that
case the divisor is compile-time constant.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/pwm/pwm-mxs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 57562221c439..f2e57fcf8f8b 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -33,8 +33,8 @@
 #define  PERIOD_CDIV(div)	(((div) & 0x7) << 20)
 #define  PERIOD_CDIV_MAX	8
 
-static const unsigned int cdiv[PERIOD_CDIV_MAX] = {
-	1, 2, 4, 8, 16, 64, 256, 1024
+static const u8 cdiv_shift[PERIOD_CDIV_MAX] = {
+	0, 1, 2, 3, 4, 6, 8, 10
 };
 
 struct mxs_pwm_chip {
@@ -71,7 +71,7 @@ static int mxs_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 
 	rate = clk_get_rate(mxs->clk);
 	while (1) {
-		c = rate / cdiv[div];
+		c = rate >> cdiv_shift[div];
 		c = c * state->period;
 		do_div(c, 1000000000);
 		if (c < PERIOD_PERIOD_MAX)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

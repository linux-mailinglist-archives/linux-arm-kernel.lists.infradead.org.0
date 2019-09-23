Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4531FBAF1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:15:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMVabUy+IR547ut7TG1H71ungod6PpHOIfaOUWIpWhM=; b=Jk/kMHIVldqo61
	390/55q4JaTSJ4QpB7fxlaGzRokxtqnBOtM3gpjdywCkVsk+8O3H0fh+Vgqrllx3uFFORtVzuNbG/
	o8GjMzeKuGzITOFRDOhK3RrgU8vs6cXkJzhMvZWgo5h+fmNAC9mhHP2mInkHBU8X0oisBwcc12h1U
	2P0twn92+jAXo6uWUnk3P1UUfaLn+kXKw/cObUqEKmJvpLoX91J7fo2WVlWMP60jiwBAT6WDO6uwo
	AFZdWgYepdr9r8n+RH/0HgMlIwDAhsFYBBWYdkGKbWSvKaoU3zmZv4e3QLfBdxBv5/yszeO0dY/QM
	m1RzBq4/WqOHvgs1Tdmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJVd-0007SS-7M; Mon, 23 Sep 2019 08:15:49 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJTp-0005CO-Bo
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:13:59 +0000
Received: by mail-lf1-x141.google.com with SMTP id u3so9358283lfl.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VpSGZcyphX33tWCKZj2QOnhjatCzwqevQiSu1wJE2ec=;
 b=Dmz12yDsnTHknKDr1XIwQJzBNJZC5mwE32fKsldiBd0BPRnRCP/JDhpKbkpmTJ/YI0
 lWJ2pDKTAJpMq0DDGE3z6CdrSFhrHWthYPadNJwG9XE9mcYDMkus6zlYs25YCTTVepKO
 s0wT37trgWtLnZcKMzxVshRBGxB08/MIq/lfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VpSGZcyphX33tWCKZj2QOnhjatCzwqevQiSu1wJE2ec=;
 b=MvQQzBQOrS9OsxYydM9r2ZD3Ko/psV0FLUZYc+g3VR5jGc8E27+LhWcGc451eMShMp
 2SC7o/6zoY99UBONZOtSM0M1YgfaZAoun2mCsMq+vNiInNA+GNs4D+/mQOtvv2t8W3xN
 xaH8I2LEEobAD9Ye6BelBcFLulQYmW4mHowjqMbB7haLYhKOGsY8Z9vqmCZiCB91RP3m
 JMROaCL/SG9eRq0rr1iI+HUfFt4s5F2UZx8TQJcOn73+68/LzeICo9PV4JiFWw7pb7TU
 /F9mHsV8vl7qR4odHVOqzQ+QTO9cLzBJFxFXPwuCxHWy0xIHYR6dVrxMIFjWoSXq8TPJ
 hW8Q==
X-Gm-Message-State: APjAAAWVnWCIAgbYBqDSv1I0LdaKtKIudc6qq8suc7j99N3rFIb8ti4u
 MbE6cW+upz1Y5dyQZi2o3JRheA==
X-Google-Smtp-Source: APXvYqyRCHU11hssheYtvH+avbpnrQ3CA/+RFZKG1MN2UvDqgVLTYcR3tSNxmjLfxzRrao5PKLPLeQ==
X-Received: by 2002:ac2:51ce:: with SMTP id u14mr14611494lfm.72.1569226435700; 
 Mon, 23 Sep 2019 01:13:55 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id c21sm2054946lff.61.2019.09.23.01.13.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 01:13:55 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 3/4] pwm: mxs: add support for inverse polarity
Date: Mon, 23 Sep 2019 10:13:47 +0200
Message-Id: <20190923081348.6843-4-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
References: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011357_402868_004560A8 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If I'm reading of_pwm_xlate_with_flags() right, existing device trees
that set #pwm-cells = 2 will continue to work.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/pwm/pwm-mxs.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 284107784dad..c46697acaf11 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -25,8 +25,11 @@
 #define  PERIOD_PERIOD(p)	((p) & 0xffff)
 #define  PERIOD_PERIOD_MAX	0x10000
 #define  PERIOD_ACTIVE_HIGH	(3 << 16)
+#define  PERIOD_ACTIVE_LOW	(2 << 16)
+#define  PERIOD_INACTIVE_HIGH	(3 << 18)
 #define  PERIOD_INACTIVE_LOW	(2 << 18)
 #define  PERIOD_POLARITY_NORMAL	(PERIOD_ACTIVE_HIGH | PERIOD_INACTIVE_LOW)
+#define  PERIOD_POLARITY_INVERSE	(PERIOD_ACTIVE_LOW | PERIOD_INACTIVE_HIGH)
 #define  PERIOD_CDIV(div)	(((div) & 0x7) << 20)
 #define  PERIOD_CDIV_MAX	8
 
@@ -50,9 +53,7 @@ static int mxs_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	unsigned int period_cycles, duty_cycles;
 	unsigned long rate;
 	unsigned long long c;
-
-	if (state->polarity != PWM_POLARITY_NORMAL)
-		return -ENOTSUPP;
+	unsigned int pol_bits;
 
 	rate = clk_get_rate(mxs->clk);
 	while (1) {
@@ -81,9 +82,12 @@ static int mxs_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 			return ret;
 	}
 
+	pol_bits = state->polarity == PWM_POLARITY_NORMAL ?
+		PERIOD_POLARITY_NORMAL : PERIOD_POLARITY_INVERSE;
+
 	writel(duty_cycles << 16,
 	       mxs->base + PWM_ACTIVE0 + pwm->hwpwm * 0x20);
-	writel(PERIOD_PERIOD(period_cycles) | PERIOD_POLARITY_NORMAL | PERIOD_CDIV(div),
+	writel(PERIOD_PERIOD(period_cycles) | pol_bits | PERIOD_CDIV(div),
 	       mxs->base + PWM_PERIOD0 + pwm->hwpwm * 0x20);
 
 	if (state->enabled) {
@@ -129,6 +133,8 @@ static int mxs_pwm_probe(struct platform_device *pdev)
 
 	mxs->chip.dev = &pdev->dev;
 	mxs->chip.ops = &mxs_pwm_ops;
+	mxs->chip.of_xlate = of_pwm_xlate_with_flags;
+	mxs->chip.of_pwm_n_cells = 3;
 	mxs->chip.base = -1;
 
 	ret = of_property_read_u32(np, "fsl,pwm-number", &mxs->chip.npwm);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B18BAF12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8PBbiTFplkJtzhK+Zh2Zemabn3WlUOg8+YP/F6pcIWU=; b=bsKazjj+z9iPgc
	X36KlNfjPbpkhcjzeUEMlP/BiqeMhJ3dRNadQ/U04CspuQn+U4UuOPeEdQYhXpltTuTTnBbXx/fRA
	nmYNLbdCPmymmrJs1X4wRfTbN7av0M9cC2BCdiUQkXixBHzSw4ns9kibm5UdkWH9dA8yWYoiM9nrg
	CwW9Z6aZjsn5XandS80NyIOYpMmD9wv0CPGsHVOWGMZ0A04ZRbY7jvVQ6zADGpiTYI2NSbaYNMwDO
	1cNwGoFIy7yl4X67YyOc2HlZrk34hiSoelvbnWluhhwR3WmGKeXJ7l17KeQScflbnUrRKFK8282ib
	pmV8hS3cbqqQklwpUNiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJUX-0005Th-38; Mon, 23 Sep 2019 08:14:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJTo-0005CM-36
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:13:58 +0000
Received: by mail-lf1-x143.google.com with SMTP id r134so9354000lff.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lD0e8xFBv1AR2F4JhSacxWgoKrl7ntnXXGEiOwHJH74=;
 b=HgcQ1K4tr0a4wAHLWjvdmktJUM3BVu3dL17gzfeF3nAdsClcj6wJpQRG6DTVB1hHUz
 Ocxoxx1M7JSEGyy/x1h5RDBNGIkNUresJDZanlEHiG4f+3mLRDMjpRIMk4Ihi6/cdnfz
 LY3qlvifzD2By4oG01tO2WS6ZIhOkjr2PMAdk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lD0e8xFBv1AR2F4JhSacxWgoKrl7ntnXXGEiOwHJH74=;
 b=DqiHyjiTiQBUE78yJHpsHxHBAmHsqfRAxGUQZLQCTNzB//5jUVw67Mw3Gw837UdmFW
 3yADZSsp9UWakJCcupxHQ3z7c5Cg2U9cZwTyDIWKYFMPSSPFZTV38S3IuVQG15YVdHCP
 XuzjU7sM+yTIHoh+kD+Ky2ERO8BVRQq4fLuSan6n9M1WaDaxJ7J7w0P6D9QWfgj/NJ2n
 aXESKw70V0NklqaEJ/jBsiqJ99AqWpmAllGfFJBwLB5iAIndlrxH4Vi8104oixJdsjcZ
 RYsXLe0xY/i57V99idrxdo/n99bLk/SiJZw62LleVIRflI//8oQE6hnDulPTRCjJH8H1
 KASQ==
X-Gm-Message-State: APjAAAXgz6wN/fcmKEDAOUq9s82qfU83kjfGuJh8sqDv7aFGi5Xt+Pfu
 k2krUMzGwrlkz3ctsIG3poPyHQ==
X-Google-Smtp-Source: APXvYqw1MEjTQxg98Niosegmp9jqiu0UU9wKr4JajogIk6AZhpzsknKDrE5TkAC9EB5KWFhVZyxHSQ==
X-Received: by 2002:a19:6455:: with SMTP id b21mr16301336lfj.167.1569226434462; 
 Mon, 23 Sep 2019 01:13:54 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id c21sm2054946lff.61.2019.09.23.01.13.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 01:13:54 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 2/4] pwm: mxs: remove legacy methods
Date: Mon, 23 Sep 2019 10:13:46 +0200
Message-Id: <20190923081348.6843-3-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
References: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011356_724530_0EDE36CB 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

Since we now have ->apply, these are no longer relevant.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/pwm/pwm-mxs.c | 77 -------------------------------------------
 1 file changed, 77 deletions(-)

diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index c70c26a9ff68..284107784dad 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -102,85 +102,8 @@ static int mxs_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	return 0;
 }
 
-static int mxs_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
-			  int duty_ns, int period_ns)
-{
-	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
-	int ret, div = 0;
-	unsigned int period_cycles, duty_cycles;
-	unsigned long rate;
-	unsigned long long c;
-
-	rate = clk_get_rate(mxs->clk);
-	while (1) {
-		c = rate / cdiv[div];
-		c = c * period_ns;
-		do_div(c, 1000000000);
-		if (c < PERIOD_PERIOD_MAX)
-			break;
-		div++;
-		if (div >= PERIOD_CDIV_MAX)
-			return -EINVAL;
-	}
-
-	period_cycles = c;
-	c *= duty_ns;
-	do_div(c, period_ns);
-	duty_cycles = c;
-
-	/*
-	 * If the PWM channel is disabled, make sure to turn on the clock
-	 * before writing the register. Otherwise, keep it enabled.
-	 */
-	if (!pwm_is_enabled(pwm)) {
-		ret = clk_prepare_enable(mxs->clk);
-		if (ret)
-			return ret;
-	}
-
-	writel(duty_cycles << 16,
-			mxs->base + PWM_ACTIVE0 + pwm->hwpwm * 0x20);
-	writel(PERIOD_PERIOD(period_cycles) | PERIOD_ACTIVE_HIGH |
-	       PERIOD_INACTIVE_LOW | PERIOD_CDIV(div),
-			mxs->base + PWM_PERIOD0 + pwm->hwpwm * 0x20);
-
-	/*
-	 * If the PWM is not enabled, turn the clock off again to save power.
-	 */
-	if (!pwm_is_enabled(pwm))
-		clk_disable_unprepare(mxs->clk);
-
-	return 0;
-}
-
-static int mxs_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
-{
-	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
-	int ret;
-
-	ret = clk_prepare_enable(mxs->clk);
-	if (ret)
-		return ret;
-
-	writel(1 << pwm->hwpwm, mxs->base + PWM_CTRL + SET);
-
-	return 0;
-}
-
-static void mxs_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
-{
-	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
-
-	writel(1 << pwm->hwpwm, mxs->base + PWM_CTRL + CLR);
-
-	clk_disable_unprepare(mxs->clk);
-}
-
 static const struct pwm_ops mxs_pwm_ops = {
 	.apply = mxs_pwm_apply,
-	.config = mxs_pwm_config,
-	.enable = mxs_pwm_enable,
-	.disable = mxs_pwm_disable,
 	.owner = THIS_MODULE,
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CFACBBD3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Iy/cUb8orqWjZXwlrnrP7pgtvfsUhp/tc81QbwKB+g=; b=VpArQkWlyO4cxk
	1PpHuQHtf8+bC3WS1f2YY0bPXoLsiEEX+BNBEKQnomc2NGOJWbNFcBbdigDWtx/MQWgbDDDd39MpI
	OOd4O3TaGEDKcJ4RqKTsvUoRskzAmjpQilRfNkVk1bT/j/96ilCf4E56IbgDdf3plsQY/E3Y34chd
	xm1X1x4ORrp/DkMfOXLgHL/IERUWGjn3xDob4Y0Dissdg39eosBlZm6dTY1udH1LWbNFLEOmp+1Hs
	a2S9p71RFlDHJtb3b+QaQaZRLzD4QwmS86pZZ+fMonzsLhVXCRMGFSf0brsPphdsz1TBGn9a8G47b
	FArll2D8izGP7A//IzLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNiX-0005vn-L8; Fri, 04 Oct 2019 13:33:57 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNhg-0005Hj-BM
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:33:05 +0000
Received: by mail-lf1-x142.google.com with SMTP id w6so4510379lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 06:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X6Db+RHzUjtZcLjspCPiiVLnQJwYqeZzGLFvIcIslUs=;
 b=EGVRYZjk/WuzVKJ889bp0hqc2OMOmT3XYKoBXPdA1Vo8S9tycus3E4uyFwntaQNmPZ
 ah6F1kEyygcpepYCQED3SNi4fnY76jnic5yumvljF37O+sFQp84qgT9FeUWGnGJiOnf9
 2MQ+vNE9bqr9v/kHpqcszX8Vk4g2WdcXlhoek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X6Db+RHzUjtZcLjspCPiiVLnQJwYqeZzGLFvIcIslUs=;
 b=LkkMAycDHGE/4Bx3Hed+26Mwi2o8Ub6wAXKL0Tg0WiN4n4JnEoelu2qcREZgFAEBQs
 3CK6kV9BfpZtm0kUDJ28atIRz0pv7JokngCR9IfGnF/jA4hOp6izJRpdOABZupVqoO1G
 WMvDa/MJ34Wgl0zmHOuym0IQ0tXtuVJPdRMGotFldBnB2hP+cRaLkLjEg05g3e6QH0Z+
 r/vbbYFDvS3GvrJy6XwNgNOmvC76mvirUqge8oEG4ZoVRPA1TCJTx5IySTITkLXCVmlS
 VeTLjHzFz1KY+pBaAAlP4U1tUEJW5ZN6fQe9thx7VC4VtOm2PWqQ0vcAv9wAYmGiybbK
 LOkw==
X-Gm-Message-State: APjAAAUOu7PTzHZEz9/0z4howqEAHmug3gDLHbH1/cyI+ghqLqG2jKei
 IV/47DCkd0tZWYlO+azsLezp7Q==
X-Google-Smtp-Source: APXvYqxC7Pv+rYmTFcsC0EBbRnbvycMrvO0qfUVmimBCi9QF+HY4ZUy2HsXLv8RHkV6gnQAKZZ9s1w==
X-Received: by 2002:ac2:4424:: with SMTP id w4mr8804306lfl.65.1570195982562;
 Fri, 04 Oct 2019 06:33:02 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id y26sm1534991ljj.90.2019.10.04.06.33.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 06:33:01 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 3/6] pwm: mxs: add support for inverse polarity
Date: Fri,  4 Oct 2019 15:32:04 +0200
Message-Id: <20191004133207.6663-4-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
References: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_063304_399267_13D5AD5A 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

If I'm reading of_pwm_xlate_with_flags() right, existing device trees
that set #pwm-cells = 2 will continue to work.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/pwm/pwm-mxs.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 5a6835e18fc6..57562221c439 100644
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
 
 	/*
 	 * If the PWM channel is disabled, make sure to turn on the
@@ -91,9 +92,12 @@ static int mxs_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	 * only take effect at the beginning of a new period, avoiding
 	 * glitches.
 	 */
+
+	pol_bits = state->polarity == PWM_POLARITY_NORMAL ?
+		PERIOD_POLARITY_NORMAL : PERIOD_POLARITY_INVERSE;
 	writel(duty_cycles << 16,
 	       mxs->base + PWM_ACTIVE0 + pwm->hwpwm * 0x20);
-	writel(PERIOD_PERIOD(period_cycles) | PERIOD_POLARITY_NORMAL | PERIOD_CDIV(div),
+	writel(PERIOD_PERIOD(period_cycles) | pol_bits | PERIOD_CDIV(div),
 	       mxs->base + PWM_PERIOD0 + pwm->hwpwm * 0x20);
 
 	if (state->enabled) {
@@ -135,6 +139,8 @@ static int mxs_pwm_probe(struct platform_device *pdev)
 
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

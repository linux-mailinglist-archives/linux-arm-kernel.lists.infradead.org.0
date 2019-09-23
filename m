Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C568BBAF19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 10:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3lksixH8DwkH4j5j5ohf5NTDlV0ZXkHhttCZc32+88=; b=fY4GMFcr2KLBa6
	a3kLsTFxYKCYMar3iIxxFVtV3V3qt3NSUQd+dKd+VWIHpR16QI8+SZsjcSiY97CoGqRCoprgIHKgQ
	wKyiH74BrtzFDoc54diSjdpDtjd9CARWzst/14FMpMSOnzlEJnNC0K3DutM6wIrAMNV3gqqySmgJY
	W97dYcwEFcYmo2ZI7OU+LND3aBYlDMUT9bXQZZfB14j0daLqSU/Ta8r70tFS6z1TQE6MBBjH7UwhR
	94fNHmo8vvZ16Mk7xRw2M6nc/Aun6M7grUR4ytnc5Zfz3FSs7ONjg+XrtTrLut8kySpgSjin/cw5k
	ANe+/r8gWKSP4ZY1zLmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJV3-0005kz-RJ; Mon, 23 Sep 2019 08:15:14 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJTn-0005CH-U4
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 08:13:59 +0000
Received: by mail-lf1-x144.google.com with SMTP id 72so9376827lfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 01:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y0u2P7pamoOhyJrqwJt38ESkhZ0sdWB5inGNjp2B0iE=;
 b=hQS6oY/JaqwIwiWR3QGBGTrvnZ0Ox9Tp21cnMGLGOBTSqAv6Pxu1Uo7aVpspDOwoKs
 ICEjPp6uhe0tKO00gdZLNcWvQ1ZE1Fx63MnumVq1Xw7e18d7WTJ8a4/ZgU/UEQqPFM9q
 aS6UZDZ/Vv1kDFZtq8xRAmhcKq+JziDPGf8Kg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y0u2P7pamoOhyJrqwJt38ESkhZ0sdWB5inGNjp2B0iE=;
 b=cW+byfH/x6GLz7MKCPCw1Q+iBsmTi3ZnqYzzYaG8vVI9JHJzrUbmqASdDDDYJ/4ySJ
 eOWcK/1OpxgkfchJsC7rbEeUENMwP11XKERoRm4RNNiuj+9AKoxTHPZjUEb6VmIunNci
 hw9QlgI4XZFcM8u87RX2JMzearnDjvtOEati2Zf9zlCG4wN/a7nyiKu6KW0i927Exz1P
 gQiGDkQgNI6OlP6Smo5pI2U/IOV8jHBhLvBC8CgffsVMFlLzOMvIwL5eL5gsK5xgqK6o
 Q2aPQDIxO020WFNB5BG7pUBXMk5reaB6KxzjFfiZBnWjuQ/3AT6jW0DEnOdF3cHOtrnN
 /sKg==
X-Gm-Message-State: APjAAAV3n4Jc3VRddEaUMP1lfnBiTmPqjclddzm1eSKxyqw3TNSJgtxu
 TV+yfDMZFKhYNlRq/yQCT8q2mA==
X-Google-Smtp-Source: APXvYqyXbJD3jcPtkfunH7p5W/yiqrLQ0jizMCztCXox/YlwFtfX/7WaU2GXsONN3ApveQi4vG9rwg==
X-Received: by 2002:a19:22cd:: with SMTP id
 i196mr15644550lfi.160.1569226433180; 
 Mon, 23 Sep 2019 01:13:53 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id c21sm2054946lff.61.2019.09.23.01.13.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 01:13:52 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 1/4] pwm: mxs: implement ->apply
Date: Mon, 23 Sep 2019 10:13:45 +0200
Message-Id: <20190923081348.6843-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
References: <20190923081348.6843-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011356_727990_76676666 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

In preparation for supporting setting the polarity, switch the driver
to support the ->apply method.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/pwm/pwm-mxs.c | 62 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 04c0f6b95c1a..c70c26a9ff68 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -26,6 +26,7 @@
 #define  PERIOD_PERIOD_MAX	0x10000
 #define  PERIOD_ACTIVE_HIGH	(3 << 16)
 #define  PERIOD_INACTIVE_LOW	(2 << 18)
+#define  PERIOD_POLARITY_NORMAL	(PERIOD_ACTIVE_HIGH | PERIOD_INACTIVE_LOW)
 #define  PERIOD_CDIV(div)	(((div) & 0x7) << 20)
 #define  PERIOD_CDIV_MAX	8
 
@@ -41,6 +42,66 @@ struct mxs_pwm_chip {
 
 #define to_mxs_pwm_chip(_chip) container_of(_chip, struct mxs_pwm_chip, chip)
 
+static int mxs_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
+			 struct pwm_state *state)
+{
+	struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
+	int ret, div = 0;
+	unsigned int period_cycles, duty_cycles;
+	unsigned long rate;
+	unsigned long long c;
+
+	if (state->polarity != PWM_POLARITY_NORMAL)
+		return -ENOTSUPP;
+
+	rate = clk_get_rate(mxs->clk);
+	while (1) {
+		c = rate / cdiv[div];
+		c = c * state->period;
+		do_div(c, 1000000000);
+		if (c < PERIOD_PERIOD_MAX)
+			break;
+		div++;
+		if (div >= PERIOD_CDIV_MAX)
+			return -EINVAL;
+	}
+
+	period_cycles = c;
+	c *= state->duty_cycle;
+	do_div(c, state->period);
+	duty_cycles = c;
+
+	/*
+	 * If the PWM channel is disabled, make sure to turn on the clock
+	 * before writing the register. Otherwise, keep it enabled.
+	 */
+	if (!pwm_is_enabled(pwm)) {
+		ret = clk_prepare_enable(mxs->clk);
+		if (ret)
+			return ret;
+	}
+
+	writel(duty_cycles << 16,
+	       mxs->base + PWM_ACTIVE0 + pwm->hwpwm * 0x20);
+	writel(PERIOD_PERIOD(period_cycles) | PERIOD_POLARITY_NORMAL | PERIOD_CDIV(div),
+	       mxs->base + PWM_PERIOD0 + pwm->hwpwm * 0x20);
+
+	if (state->enabled) {
+		if (!pwm_is_enabled(pwm)) {
+			/*
+			 * The clock was enabled above. Just enable
+			 * the channel in the control register.
+			 */
+			writel(1 << pwm->hwpwm, mxs->base + PWM_CTRL + SET);
+		}
+	} else {
+		if (pwm_is_enabled(pwm))
+			writel(1 << pwm->hwpwm, mxs->base + PWM_CTRL + CLR);
+		clk_disable_unprepare(mxs->clk);
+	}
+	return 0;
+}
+
 static int mxs_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 			  int duty_ns, int period_ns)
 {
@@ -116,6 +177,7 @@ static void mxs_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
 }
 
 static const struct pwm_ops mxs_pwm_ops = {
+	.apply = mxs_pwm_apply,
 	.config = mxs_pwm_config,
 	.enable = mxs_pwm_enable,
 	.disable = mxs_pwm_disable,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

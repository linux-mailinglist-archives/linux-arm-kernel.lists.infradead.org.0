Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF7ACBBCF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yN47nZq6PlIDp7JHLiP3++oEJiG/4gWD6aS/u2AQL28=; b=Vr7VBJF4778FdQ
	Olsbl9Wb3TF6glh6hC8LiZI3EGbodFmKJO7+aSFIN4UEnZMLuiyh2WbxKZ4r1UT452GES8Vztym1s
	AO59vjaBPa2a5qgpxnotZAZ9gJDRR3YfpK74anT8Bc4hAhrftzkrF1xQk7Fgr/x1EEDK7Dp88++F2
	IWlkoYqoDZlKSHkgAGzAfi0jXaPweEa8Dfga2GdgFReZrItgxKdmcP9D0kSxOhaGsyeNkS16jJpwT
	BwcNzMM2NZ6LJ2dTsGxgOzvvXQ1BrIfha4vFim76z8xhaJ/7uflnkIaqGVk5ogVafKVSIMHHBQsf7
	EolzEt9Op1OphDkIB+ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNi4-0005UF-9p; Fri, 04 Oct 2019 13:33:28 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNhc-0005FJ-QH
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:33:02 +0000
Received: by mail-lf1-x144.google.com with SMTP id t8so4462117lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 06:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=84d/4Z+Ct38UY+63PRtlhnBYnsxa6bKE+yT9EoLxBQ8=;
 b=K86FwHSTa8imnI9kd9BEczCcJ4FljqrcPnSq74CItPMRqe8R6vfy70DGfXffz1/7UZ
 TODX6szyElyk+mI/cd/cryh1cWqSMz12FRwMKfpiXnWC0M4ETDbYLC7NyJj+MiXKKcls
 niGe1in8ylcyKNdPXYsk+8eMs1lSfo8FUHpbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=84d/4Z+Ct38UY+63PRtlhnBYnsxa6bKE+yT9EoLxBQ8=;
 b=ancoOhbQckg4f8wV+Sqp+kyvZTD6RR4+BLh1UEnMfi7E/3WvEqbAPSQH9Jix/oJsUW
 Wp27ncfSB6GbxAtc5/wuVqeYXCLRgmGhzA5Akvawy7NiSr1YxoWD6weo+U1scoqcLQYu
 8AvM22HYnsjyRSVu+VHc9jAxrW3FiDGgLwoESHIBQrAPUwcWbU9yuFswf9cXOSecpv44
 xrtWhekQ2w7zDOkCwbtwftDQwRE+/M1+w0rqAyhWC0uGBdXVlNElPIFqFWX6/BuMWBFJ
 DYp98f0FkQuYnP3tyKMQ2YE/Ch4BQ2eQHUv2DiQYIbEiU3xi3BA2fxf2vBjUzCBuGlcl
 gnZg==
X-Gm-Message-State: APjAAAVyadTIcqp85xI11G1sC5z2jfi+HCaiQi9UT6pVxX+pUDgga8A/
 0p57vXJqYIxPQKvU9zQAWoCV8A==
X-Google-Smtp-Source: APXvYqzs5zFXhqdDNu2+43b758ZHk0CgecW26AuZBrDWWj+4OulMZAKBuWb/lzr0T//DOGSJ1OjAdA==
X-Received: by 2002:a19:3805:: with SMTP id f5mr6004869lfa.173.1570195979142; 
 Fri, 04 Oct 2019 06:32:59 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id y26sm1534991ljj.90.2019.10.04.06.32.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 06:32:58 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 1/6] pwm: mxs: implement ->apply
Date: Fri,  4 Oct 2019 15:32:02 +0200
Message-Id: <20191004133207.6663-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
References: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_063300_847755_02EEFC14 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

In preparation for supporting setting the polarity, switch the driver
to support the ->apply method.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/pwm/pwm-mxs.c | 70 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index b14376b47ac8..10efd3de0bb3 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -26,6 +26,7 @@
 #define  PERIOD_PERIOD_MAX	0x10000
 #define  PERIOD_ACTIVE_HIGH	(3 << 16)
 #define  PERIOD_INACTIVE_LOW	(2 << 18)
+#define  PERIOD_POLARITY_NORMAL	(PERIOD_ACTIVE_HIGH | PERIOD_INACTIVE_LOW)
 #define  PERIOD_CDIV(div)	(((div) & 0x7) << 20)
 #define  PERIOD_CDIV_MAX	8
 
@@ -41,6 +42,74 @@ struct mxs_pwm_chip {
 
 #define to_mxs_pwm_chip(_chip) container_of(_chip, struct mxs_pwm_chip, chip)
 
+static int mxs_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
+			 const struct pwm_state *state)
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
+	/*
+	 * If the PWM channel is disabled, make sure to turn on the
+	 * clock before calling clk_get_rate() and writing to the
+	 * registers. Otherwise, just keep it enabled.
+	 */
+	if (!pwm_is_enabled(pwm)) {
+		ret = clk_prepare_enable(mxs->clk);
+		if (ret)
+			return ret;
+	}
+
+	if (!state->enabled && pwm_is_enabled(pwm))
+		writel(1 << pwm->hwpwm, mxs->base + PWM_CTRL + CLR);
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
+	 * The data sheet the says registers must be written to in
+	 * this order (ACTIVEn, then PERIODn). Also, the new settings
+	 * only take effect at the beginning of a new period, avoiding
+	 * glitches.
+	 */
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
+		clk_disable_unprepare(mxs->clk);
+	}
+	return 0;
+}
+
 static int mxs_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 			  int duty_ns, int period_ns)
 {
@@ -116,6 +185,7 @@ static void mxs_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
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

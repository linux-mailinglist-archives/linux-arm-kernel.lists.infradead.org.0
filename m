Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D122B3A132
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 20:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kq0+Rjofdk26Ft5XubyW/Da+j11l7SMctA3f7/cjFxk=; b=Xa+jVAfw6HXTvh
	AeCKfOMhNJHYOvOvFibImueqd/OABlJfEIHpcN8+WIrQydd47QtL6OxiFhhMXRQHaORvTR3LQC8M8
	6Cf1Xo/UucVHRKmveb1vaUkw5hy7j4xkpzDHT8t/BwUW869BZfhEwlzZELOFwMU/JJhN74L3TwpXG
	7QFR+p6gZjwC/RRU24mTnHQ2iASu0u8wLM2lX5dQKFKgS3nMRgXIaGxF8oli4jmR0XO51rvtEcXKX
	3oBslQoj9uaMfdjftrCFsTwbAszDXclkePuTDNCGppQ/iZ1PX3QgNtGYYV2PLWA5VQfK/vQ0riMsC
	t0ovAWYYkNi0eDzE1jRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZfoB-00061E-Oo; Sat, 08 Jun 2019 18:11:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZfjt-0000uT-Dw; Sat, 08 Jun 2019 18:06:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id s15so2233017wmj.3;
 Sat, 08 Jun 2019 11:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gus9EVUSXiif9myhzplFWmWxo5iVjcg4L/R7PzfQr/4=;
 b=aC3QJv4yV2M2NgE+T6iUkKFAXQ4b82UbBPPWeG20gvtlZaDZHm3hTWpaeGbwCRPmnh
 tCrc1f60ZSqkOlQ7wiEvVW5FMKplDfQM6TJRDMM7fMvvbIBfRyf+Vq/Z0jQLJubciKMt
 kqTMk5ZpTVpEDBPQnRlznSLsUQ6wHGBe8LfcF6sWel+B/tfcmJlrXabelYHCkfjqpJmq
 sPFobFtjwwPwPpbw7ss0q3uaMjBfUFuGxp9gN33lDkGl+oJ7QRB0S+51GZQl4clO46vF
 EOtSTUEgT089LkWHdq5C0jFy1quBzOWByO2XO/EU0FcYpXn3kLcdyQlWRx8IiBIKs22z
 CLCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gus9EVUSXiif9myhzplFWmWxo5iVjcg4L/R7PzfQr/4=;
 b=lR+wA2s3cTdu3qweYByLJGMF3PgMJTzYfzI7vgSmEs+q7LUqdUcmdj8xtNqNJvzA1p
 tzpNC9xTNXrVSR48Uj4nL/5WFqGdje/AZEppG9Xd6qQ024SliLN+cN8+6ZDe4/z7H/2S
 2RrHxIIljF5C4iauBNY0L2ISzsndLU29osDmS1ox+TSvYwT3T23qgHV4mPEqcB07c9Al
 aay+0JSN7v4a0fQZWDXoUbbZCIbIugg+AIyd/0DJDWyhySji75xY5pJhdRlOzTEqoDpf
 QBkLhr2RPkLd7k7ZuVTMVi8MRCNKtD1io0/u6+6JtauQp4Or6YasiHF/ghQJg2PNZRBj
 2pKQ==
X-Gm-Message-State: APjAAAUIh39+JiPjZZnjiCyw1tDXAvL7hLQcHFfUE3wzInYe8fPlYrBn
 ip8ChkEAcpFIXkN6Nqy773PN7P22
X-Google-Smtp-Source: APXvYqzRGcVvHTQ7ACECA1v/MRk4nF9YNeywKueh0QL3/1P6th9zfIq6Kc07vu6eLxFOilV6x/wiNw==
X-Received: by 2002:a1c:a019:: with SMTP id j25mr7924649wme.95.1560017207452; 
 Sat, 08 Jun 2019 11:06:47 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400D12EFF43FED1E981.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:d12e:ff43:fed1:e981])
 by smtp.googlemail.com with ESMTPSA id c7sm5143345wrp.57.2019.06.08.11.06.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 11:06:46 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v2 13/14] pwm: meson: add support PWM_POLARITY_INVERSED when
 disabling
Date: Sat,  8 Jun 2019 20:06:25 +0200
Message-Id: <20190608180626.30589-14-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
References: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110649_558232_BC34E160 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

meson_pwm_apply() has to consider the PWM polarity when disabling the
output.
With enabled=false and polarity=PWM_POLARITY_NORMAL the output needs to
be LOW. The driver already supports this.
With enabled=false and polarity=PWM_POLARITY_INVERSED the output needs
to be HIGH. Implement this in the driver by internally enabling the
output with the same settings that we already use for "period == duty".

This fixes a PWM API violation which expects that the driver honors the
polarity also for enabled=false. Due to the IP block not supporting this
natively we only get "an as close as possible" to 100% HIGH signal (in
my test setup with input clock of 24MHz and measuring the output with a
logic analyzer at 24MHz sampling rate I got a duty cycle of 99.998475%
on a Khadas VIM).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/pwm/pwm-meson.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index 900d362ec3c9..bb48ba85f756 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -245,6 +245,7 @@ static void meson_pwm_disable(struct meson_pwm *meson, struct pwm_device *pwm)
 static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 			   struct pwm_state *state)
 {
+	struct meson_pwm_channel *channel = pwm_get_chip_data(pwm);
 	struct meson_pwm *meson = to_meson_pwm(chip);
 	int err = 0;
 
@@ -252,7 +253,27 @@ static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 		return -EINVAL;
 
 	if (!state->enabled) {
-		meson_pwm_disable(meson, pwm);
+		if (state->polarity == PWM_POLARITY_INVERSED) {
+			/*
+			 * This IP block revision doesn't have an "always high"
+			 * setting which we can use for "inverted disabled".
+			 * Instead we achieve this using the same settings
+			 * that we use a pre_div of 0 (to get the shortest
+			 * possible duration for one "count") and
+			 * "period == duty_cycle". This results in a signal
+			 * which is LOW for one "count", while being HIGH for
+			 * the rest of the (so the signal is HIGH for slightly
+			 * less than 100% of the period, but this is the best
+			 * we can achieve).
+			 */
+			channel->pre_div = 0;
+			channel->hi = ~0;
+			channel->lo = 0;
+
+			meson_pwm_enable(meson, pwm);
+		} else {
+			meson_pwm_disable(meson, pwm);
+		}
 	} else {
 		err = meson_pwm_calc(meson, pwm, state);
 		if (err < 0)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

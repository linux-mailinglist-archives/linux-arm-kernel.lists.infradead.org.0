Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCE22A65A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnrw/33+HosiVVCGW5DusumLpy63v5n7lZow2zSrEOw=; b=pgbw+A/Kpk9kOV
	rFXLeBiVSxVIGiX5zqqnm0doJbZhgVzSk/WrfKx4wk85swXbBjLqCHNDIkBxMw7OPBw3rRknvuGjp
	mx6kY5jheXGJnZ8ucD1Jm8XzhCN7EmY5G7a2aKsxbRALKYwJemgx3ow1/v6ja47U19XgvJyQiGXLW
	iYDH9IUhEZg7ppmNDApT97YQ21Zq8LbNmHE5mzM+8w4iy8bOZFerkag4MnqFUZl80euCAYfAF3wUu
	KIWiXvlUgkOuneVwsPJQFRdJ9yBufTLfm+KSMdNSWsM4TN2w1B+/YK0BYnHVqj8vtKJ81GRiIrNDg
	iXXu9yESXrNCPBoDPf2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbBZ-00053s-7m; Sat, 25 May 2019 18:14:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb9B-0002PR-5f; Sat, 25 May 2019 18:12:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id m3so12960984wrv.2;
 Sat, 25 May 2019 11:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sl7WM07hR08H8EVlL8BEDz+//aYuTyGwlSt+xVLLPA4=;
 b=O9vmAF+kUMYIvRHKCOfkAeLiseR0j9hjltBcchi7dPoB1PdjYN/fh4BGKbMFqWJ4fq
 e9hoZDAqwcd2LSGT2Jc/wze2oAt7dwfuAFkmI97eCraeCt3P4VNt5oOTE9P1tSPaKzr/
 zDG7D/Cgur2Xzbpe5HDWRAKdJkF0adTJbSjiLMJZPrIxlHLn+1xtLcVelB23HCcDA2pa
 cXNVEGslH5NPNCl2kjZG9k93tbyRYibtycc90au0J73llwos3miKLJNkfZ+2f258CI1k
 HkbXBRucsaazWpeFmzpVLs99R7G9/7ncEaUSiLczsOAq9sSuVXP+yPrxVFXmCrqsbyyJ
 JPoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sl7WM07hR08H8EVlL8BEDz+//aYuTyGwlSt+xVLLPA4=;
 b=pmFvyXOdmL5u2zACuNJcTuxrrtK0YQ8Y/P1dGapbjtRA/0Oyjt+FnL7lRUTgNnVJYY
 0kvqzgERqsD4ol7P2oU0x8pNoXnAzHzdLrvyekzW7VE60o8VNskXMSwhRAoRdArmFQaN
 GPg51s8SlVQrKwn1QnUTkhW/ac8phT9w7pa971LCIWSdW6W3jU0H2Q8K3n94ezsxIAYu
 1vFBdflt00DfERdvnRPkAg7x10qtPS3gsr7UZ0ZZjD1pIHPqD/4WqcSuR6k1JdqTUVZ2
 9uc+UhfivI0e7ZXfIDyn5qt1+s38G/xQw9FV/EzOwWIvTY/SPBIKXAnMm9izrjqpuF28
 XjEQ==
X-Gm-Message-State: APjAAAXFRSFf96ubJOysUBqhyx4nggvyVc9sMLDKvgoY2z7Sy4c50KfZ
 aAy/IJCfP+jU9p7pZY9QA42ykdzf
X-Google-Smtp-Source: APXvYqwz71MupkKANwKXksSJkIrXoMmQ+E9SpGbvVw8Rc58UkwUoghdumGcrzpipFiQqlugZA/dc5g==
X-Received: by 2002:adf:f6cb:: with SMTP id y11mr9814990wrp.67.1558807914809; 
 Sat, 25 May 2019 11:11:54 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:54 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 09/14] pwm: meson: move pwm_set_chip_data() to
 meson_pwm_request()
Date: Sat, 25 May 2019 20:11:28 +0200
Message-Id: <20190525181133.4875-10-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111157_214291_A7D50E50 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All existing PWM drivers (except pwm-meson and two other ones) call
pwm_set_chip_data() from their pwm_ops.request() callback. Now that we
can access the struct meson_pwm_channel from struct meson_pwm we can do
the same.

Move the call to pwm_set_chip_data() to meson_pwm_request() and drop the
custom meson_pwm_add_channels(). This makes the implementation
consistent with other drivers and makes it slightly more obvious
thatpwm_get_chip_data() cannot be used from pwm_ops.get_state() (because
that's called by the PWM core before pwm_ops.request()).

No functional changes intended.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pwm/pwm-meson.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index ac7e188155fd..27915d6475e3 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -98,12 +98,16 @@ static inline struct meson_pwm *to_meson_pwm(struct pwm_chip *chip)
 
 static int meson_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
 {
-	struct meson_pwm_channel *channel = pwm_get_chip_data(pwm);
+	struct meson_pwm *meson = to_meson_pwm(chip);
+	struct meson_pwm_channel *channel;
 	struct device *dev = chip->dev;
 	int err;
 
-	if (!channel)
-		return -ENODEV;
+	channel = pwm_get_chip_data(pwm);
+	if (channel)
+		return 0;
+
+	channel = &meson->channels[pwm->hwpwm];
 
 	if (channel->clk_parent) {
 		err = clk_set_parent(channel->clk, channel->clk_parent);
@@ -124,7 +128,7 @@ static int meson_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
 
 	chip->ops->get_state(chip, pwm, &channel->state);
 
-	return 0;
+	return pwm_set_chip_data(pwm, channel);
 }
 
 static void meson_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
@@ -460,14 +464,6 @@ static int meson_pwm_init_channels(struct meson_pwm *meson)
 	return 0;
 }
 
-static void meson_pwm_add_channels(struct meson_pwm *meson)
-{
-	unsigned int i;
-
-	for (i = 0; i < meson->chip.npwm; i++)
-		pwm_set_chip_data(&meson->chip.pwms[i], &meson->channels[i]);
-}
-
 static int meson_pwm_probe(struct platform_device *pdev)
 {
 	struct meson_pwm *meson;
@@ -503,8 +499,6 @@ static int meson_pwm_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	meson_pwm_add_channels(meson);
-
 	platform_set_drvdata(pdev, meson);
 
 	return 0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

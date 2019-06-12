Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A812E430BC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjWPuQ40JMx7MjA79Xnqux4MQFVHlJ3jLtAPJLbHWYs=; b=tUlku2KsYV0BMO
	cfIuRyj0xeRZGOQ/uaBEC5T98HtE/NZmPpo/ZFtB120po3xbm6arjrDc8pOztvp7/DtDMSzsun846
	Cwi+KoirckjnK9LqL1Q0ToKFmz/loNvPExHxDtGoHhd6SXRd223XIW3/BeWWDIfU0ClGIyn6um+oE
	9KZG9HeA1rhaHn0G+mynMzUrH6kI6QZBHVS6UilI/cbvlVBNcEIV6/rLmBZooLgifRg1qc9iICYNZ
	w9JONacEQOuH2B7lRRONACFLCJ1QQ4UCecZlAZqsyG8xYspeM6vd2EvPFOvSU9uNfDy+u/SEJxPKf
	LpNlZ81qrvfgMPYBpfZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9Ss-0000wK-R0; Wed, 12 Jun 2019 20:03:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9PK-0005LX-CY; Wed, 12 Jun 2019 19:59:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id d18so18220908wrs.5;
 Wed, 12 Jun 2019 12:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZO2I0nc2ZuC8lo4fZqPZLu1ILdKFupecX1fpt0vJbX8=;
 b=s2k7UPtXJrKmRqewFzECaggm0X0f1LVk4ve6wyxIHpM/+aaRLVzCL0oIPaATv+7icK
 giRfO3MeaQ9+0n7NZZKRcmKvneynm/p6mx4DFiVUi1qWjWuddVUJwW+DdtgQX38MAcTf
 ofWXa05BtJwNhTgJF3NYhy7Mkh2RdMIo1OizJgCep9waUpq80XvJrIrb5EDYSlDSERzh
 /+8VRIOvbTxqBexLHe9TC2QuBcvlwywgIZYYG+Uh9u0OKbQv+qpvIotcFOD3g7ngDbeZ
 slhUjjFhv5pebPc/uYry4PoYjy9qhGo5Q18RvGAxVRpRbaHbkQclZi00i2RvbaM/9xmt
 a/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZO2I0nc2ZuC8lo4fZqPZLu1ILdKFupecX1fpt0vJbX8=;
 b=FHeKXB8KyQ8Ut31tb/qy01Z65CG1c3byCQMPRuqvhAVyiJMO1GG2MIMndj28sf14OL
 V47/o3mPokAcp6nBbEYSqxQwt54kR+vTSOH424x8pd7ftWVzKN4EuyDAexCbsBTAQ1PF
 ZyCSomjm4wnHVo+8iug0rBaucv6vG8v7GbwGD6l6kKpYfFbH37HcLHpitPMUByGeUy9g
 Sx/A9QFykQ/EGXD+ksAYTFodqk5wq+mdO/g1EYa+nN6WRUx9sTS0EvzWTmRdJxc20N0r
 FXvBAY6p0Xf8NoUItevomSgQP2DyXy6U52l4tyLnPkSWIIyPh0WcQqp9FprK/P8VxFdl
 rbqQ==
X-Gm-Message-State: APjAAAUU/xHfWtaUKBP9qi3SIRupG5KK8H/P+h9k9YHDunfzSx0f2n35
 VEc3Eza9eUJx91a2OVO1GmDWq77V
X-Google-Smtp-Source: APXvYqwsZeC2xWn46wSwc6F1FRQQkyg4g9mdYUrvu06Wn8TkkSHFCVkYpWEmZcaG6bt4PqKqBTkDYQ==
X-Received: by 2002:a5d:6312:: with SMTP id i18mr16038992wru.203.1560369580608; 
 Wed, 12 Jun 2019 12:59:40 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f10sm1026745wrg.24.2019.06.12.12.59.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:59:39 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v3 09/14] pwm: meson: move pwm_set_chip_data() to
 meson_pwm_request()
Date: Wed, 12 Jun 2019 21:59:06 +0200
Message-Id: <20190612195911.4442-10-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
References: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_125942_595884_5CDE1F3F 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
 narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
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

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

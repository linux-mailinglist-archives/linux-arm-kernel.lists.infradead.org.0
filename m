Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311E32A630
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hNiTEl7yivlBitaUeRKu1+BOgO5XyVKI4CCr1R3UQhY=; b=tgO6iMJN9RwYcv
	VACPiQJ3r18nZBAEkQDRCHnlwiJHih3BVE55S67SdIqwaAlipmM/edRWMq4xb1mS/UmAOCe6u5msM
	T97JWdf2X5zPH7MDdWqcaVazKl3IluveMXSU5n4mm3+TMM3Q+eBgF9Ra58srb9SuK7AgmNIQS7+Kr
	xq4LWS8WiXqHDlVO16fp/MarYF5F7pRn6fANZPQFbT9XN8M+b//SuRl3pJIIg7sIVztlC40dGF82c
	2JKyURxGaMI3PEq/ASP3+dXaamHEsZSvvuKI4OONMRRPiNnVQEtL+wDo7xrgeqhmukJqm37W86U5r
	YauQzbzNFTzNIBDTPu4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbA0-0003PU-Iq; Sat, 25 May 2019 18:12:48 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb97-0002OF-F7; Sat, 25 May 2019 18:11:59 +0000
Received: by mail-wm1-f67.google.com with SMTP id w9so5955622wmi.0;
 Sat, 25 May 2019 11:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vh14UlgAUkIljLzMtiNlC8F9kkg89y0/Qk0nPY9Q0wE=;
 b=OjPmG7u32W9bxtU+VPzPQ2qz0WmWIeBCLlAPE1sPJKMDIcVNrBXNHO8lsnVIdo9y45
 h6F8//QMAxceKMyJKGFM9RRrKYieWqB7w3GLxVrX0EvdS26Gg7eWJXpax4v8lqNKr1FA
 KjRZpJpET0Xxy+cqpkr5+ggty2RCtjYF/ctI4KryecNx+wtznDh7jGF6XdYApiUT9pLP
 DfxsTTfB2Nczb7CW7GdDKV1zVu9C9Rm3KsA7V21//c4pfMVUyPfKGSNI76lptF49iBYr
 AS+gKKFj6HSUB05ukiH7B/yF9mYO6ttVAMaYBidN9uw4bvh2MyR5/j/yudLjq+Pd7yTb
 NMKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vh14UlgAUkIljLzMtiNlC8F9kkg89y0/Qk0nPY9Q0wE=;
 b=psbPSCZnaCWZISepOxEkhLyMmNNpx9gqgjqy1iFLx+ojUsxSLSCk8XPdIihUlYVN3C
 VbsYC/4PO6CDwtaIboTFtCtlJK281jKiodsu876yEBFs7zWGzokT3XDviMZq0mCjrzNb
 +AhBJy892+i2BcUA+KG2tlxIeFN0wWZuauQyfa6OVPm6ztJSTRHsIhviwU340kn/HHh3
 tMC2CsM4zeMEuLIzFqljR6aQA/atOkEfj9vVictrXKFj0jGIqzsJBB+c/UP5CBAuD8mb
 3TLHILloSFED8sG2nyNTOnLk0dQmkW1yKaleGOefW6iSUL4VhKt5hCwQTu5stUF1MJ/V
 DE6g==
X-Gm-Message-State: APjAAAUaFYSK1RjtCutCPn3GSYXdI5VebTvXNRepF5bpPabqqX3qA0po
 L4+q/1q7046a8lfe5XSZ5SaXteYH
X-Google-Smtp-Source: APXvYqxA7x6dY6V0ULEhoWOYWuPm0XWiLfS7y9OgJaQ+D2//vYFJ/epu6mol03rolVLlg+EqXN3MIw==
X-Received: by 2002:a1c:b789:: with SMTP id h131mr4004748wmf.71.1558807911278; 
 Sat, 25 May 2019 11:11:51 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:50 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 07/14] pwm: meson: add the meson_pwm_channel data to struct
 meson_pwm
Date: Sat, 25 May 2019 20:11:26 +0200
Message-Id: <20190525181133.4875-8-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111153_524125_3AB88D79 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
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

Make struct meson_pwm_channel accessible from struct meson_pwm.

PWM core has a limitation: per-channel data can only be set after
pwmchip_add() is called. However, pwmchip_add() internally calls
pwm_ops.get_state(). If pwm_ops.get_state() needs access to the
per-channel data it has to obtain it from struct pwm_chip and struct
pwm_device's hwpwm information.

Add a struct meson_pwm_channel for each PWM channel to struct meson_pwm
so the pwm_ops.get_state() callback can be implemented as it needs
access to the clock from struct meson_pwm_channel.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pwm/pwm-meson.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index d6eb4d04d5c9..d1718f54ecec 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -37,6 +37,8 @@
 #define MISC_B_EN		BIT(1)
 #define MISC_A_EN		BIT(0)
 
+#define MESON_NUM_PWMS		2
+
 static const unsigned int mux_reg_shifts[] = {
 	MISC_A_CLK_SEL_SHIFT,
 	MISC_B_CLK_SEL_SHIFT
@@ -62,6 +64,7 @@ struct meson_pwm_data {
 struct meson_pwm {
 	struct pwm_chip chip;
 	const struct meson_pwm_data *data;
+	struct meson_pwm_channel channels[MESON_NUM_PWMS];
 	void __iomem *base;
 	/*
 	 * Protects register (write) access to the REG_MISC_AB register
@@ -435,8 +438,7 @@ static const struct of_device_id meson_pwm_matches[] = {
 };
 MODULE_DEVICE_TABLE(of, meson_pwm_matches);
 
-static int meson_pwm_init_channels(struct meson_pwm *meson,
-				   struct meson_pwm_channel *channels)
+static int meson_pwm_init_channels(struct meson_pwm *meson)
 {
 	struct device *dev = meson->chip.dev;
 	struct clk_init_data init;
@@ -445,7 +447,7 @@ static int meson_pwm_init_channels(struct meson_pwm *meson,
 	int err;
 
 	for (i = 0; i < meson->chip.npwm; i++) {
-		struct meson_pwm_channel *channel = &channels[i];
+		struct meson_pwm_channel *channel = &meson->channels[i];
 
 		snprintf(name, sizeof(name), "%s#mux%u", dev_name(dev), i);
 
@@ -480,18 +482,16 @@ static int meson_pwm_init_channels(struct meson_pwm *meson,
 	return 0;
 }
 
-static void meson_pwm_add_channels(struct meson_pwm *meson,
-				   struct meson_pwm_channel *channels)
+static void meson_pwm_add_channels(struct meson_pwm *meson)
 {
 	unsigned int i;
 
 	for (i = 0; i < meson->chip.npwm; i++)
-		pwm_set_chip_data(&meson->chip.pwms[i], &channels[i]);
+		pwm_set_chip_data(&meson->chip.pwms[i], &meson->channels[i]);
 }
 
 static int meson_pwm_probe(struct platform_device *pdev)
 {
-	struct meson_pwm_channel *channels;
 	struct meson_pwm *meson;
 	struct resource *regs;
 	int err;
@@ -509,18 +509,13 @@ static int meson_pwm_probe(struct platform_device *pdev)
 	meson->chip.dev = &pdev->dev;
 	meson->chip.ops = &meson_pwm_ops;
 	meson->chip.base = -1;
-	meson->chip.npwm = 2;
+	meson->chip.npwm = MESON_NUM_PWM;
 	meson->chip.of_xlate = of_pwm_xlate_with_flags;
 	meson->chip.of_pwm_n_cells = 3;
 
 	meson->data = of_device_get_match_data(&pdev->dev);
 
-	channels = devm_kcalloc(&pdev->dev, meson->chip.npwm,
-				sizeof(*channels), GFP_KERNEL);
-	if (!channels)
-		return -ENOMEM;
-
-	err = meson_pwm_init_channels(meson, channels);
+	err = meson_pwm_init_channels(meson);
 	if (err < 0)
 		return err;
 
@@ -530,7 +525,7 @@ static int meson_pwm_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	meson_pwm_add_channels(meson, channels);
+	meson_pwm_add_channels(meson);
 
 	platform_set_drvdata(pdev, meson);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD402A644
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIzUWlQTS8ZGyRJ0nnNcybtIOuKyDBKs4sqNqeZH6jA=; b=FaeGz3jclKydMe
	l9XoN/UR6++znQ+Z750t/SuP7hEXrNpSkI63IZrp+TEBGBaiCjdDzNh/DfPErM4FSW399tobfordw
	l5SrdqosC8GhvCIHqaBFios2ZB/CO8RWfRUz1QyA7OZzFb1t2EsueRhZ6m3WeLeilSkMU+sF4gj8c
	S9AUWFTaF0PjlBw7Jr88kIHfbGUYqgYuuyOczs+9MJoxZ/oltv7Ovw+cij7dXsGgfrRjRAUmbCUaf
	6aUVNJvyncamdoXpJIwMYp98dWuE5S46Og2bMqzUm/bCTwrRQqS5PdPiK7qJy/xXhNVcFy0qxyOoi
	znzAvXrFz6ckLUY8202A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbAE-0003ht-6c; Sat, 25 May 2019 18:13:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb99-0002P0-HL; Sat, 25 May 2019 18:12:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id e15so12964732wrs.4;
 Sat, 25 May 2019 11:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CyBCl9uJwWt7AOB0uEXJnfkxqm8+ZxkuNoLVczPbksU=;
 b=kn503yMbuHx1wxsfWJIIN6JXq8oS3QFiw9BnhvEFjXWRxOiGHGPRRqBOng51g0BEqx
 WfRTnH9zN3cVH2DsjOHlwdh99SAc1pS99E0WwOraaD/iVyu9/XEQrILX0Bh+31yM7cBf
 r6MTEQUR45SpKg/A6Ec5vs4KeyXOH4pPAQY+7xjnpXJ+9wzzoMEznIwobLzau+jObssn
 YrRBLPMrjVNqpwk9iQKTNVnYwQ9+kAa2whx3Wj8HHRDUJuRUDlHw49ukL+KYNmVTLnzB
 v19FRLFC1Za5u43a+OKAr8n4UoTG46yX8PWiSdg3lrcSSlCd3jFTfTugd7z1b5NMsMsW
 DUvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CyBCl9uJwWt7AOB0uEXJnfkxqm8+ZxkuNoLVczPbksU=;
 b=tMexlf5oVl/7GvJ9BAz5AvEELmhSUDTO/UvBVVdBuOtcLg/HrcCMxBUttWWv4i6bae
 o83g/oUgpQ8+auEb5rR6L35bQFGeJGpYSRUkH5VhEltDUF4SmADFvBdDmcLV5N+ZOdxw
 wTiwI+NjAYsCpNRIIZYgbPnzmQaq4pxEGO4jQOrVQ8vDftUqsLyaO7Gb5BZtO/hPxg7M
 OlnGU0pmVuMThc4PRJv6mC7CZz0fn8Dve4vHjX0bdJdLuf92c26hMXxFavB3pI+B1esN
 khQiw2H/ymLfYdcARoWBwe68fQQQzmXV6+z+y6ca8qb/nLMN2vLhEjASFveYrUjtJ7j/
 XNgQ==
X-Gm-Message-State: APjAAAW+P9Uub+p5W3nVSBSDk9oGLNvWeGeUKiy7W9f3dZUxnGSm7VCC
 rIKy17DnkWphnDTpJPKzKczw0jCK
X-Google-Smtp-Source: APXvYqwMf6MQWMh2QCNyAFBt1iEO1oomE5pIjoqBQPxPKCDgzSwR5+L7xOXWFnXFRLijnUKxosY5/A==
X-Received: by 2002:adf:f78d:: with SMTP id q13mr20309064wrp.220.1558807913721; 
 Sat, 25 May 2019 11:11:53 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:52 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 08/14] pwm: meson: add the per-channel register offsets and
 bits in a struct
Date: Sat, 25 May 2019 20:11:27 +0200
Message-Id: <20190525181133.4875-9-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111155_817996_A5D49BB9 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Introduce struct meson_pwm_channel_data which contains the per-channel
offsets for the PWM register and REG_MISC_AB bits. Replace the existing
switch (pwm->hwpwm) statements with an access to the new struct.

This simplifies the code and will make it easier to implement
pwm_ops.get_state() because the switch-case which all per-channel
registers and offsets (as previously implemented in meson_pwm_enable())
doesn't have to be duplicated.

No functional changes intended.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pwm/pwm-meson.c | 92 ++++++++++++++++-------------------------
 1 file changed, 35 insertions(+), 57 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index d1718f54ecec..ac7e188155fd 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -39,9 +39,27 @@
 
 #define MESON_NUM_PWMS		2
 
-static const unsigned int mux_reg_shifts[] = {
-	MISC_A_CLK_SEL_SHIFT,
-	MISC_B_CLK_SEL_SHIFT
+static struct meson_pwm_channel_data {
+	u8		reg_offset;
+	u8		clk_sel_shift;
+	u8		clk_div_shift;
+	u32		clk_en_mask;
+	u32		pwm_en_mask;
+} meson_pwm_per_channel_data[MESON_NUM_PWMS] = {
+	{
+		.reg_offset	= REG_PWM_A,
+		.clk_sel_shift	= MISC_A_CLK_SEL_SHIFT,
+		.clk_div_shift	= MISC_A_CLK_DIV_SHIFT,
+		.clk_en_mask	= MISC_A_CLK_EN,
+		.pwm_en_mask	= MISC_A_EN,
+	},
+	{
+		.reg_offset	= REG_PWM_B,
+		.clk_sel_shift	= MISC_B_CLK_SEL_SHIFT,
+		.clk_div_shift	= MISC_B_CLK_DIV_SHIFT,
+		.clk_en_mask	= MISC_B_CLK_EN,
+		.pwm_en_mask	= MISC_B_EN,
+	}
 };
 
 struct meson_pwm_channel {
@@ -194,43 +212,26 @@ static int meson_pwm_calc(struct meson_pwm *meson, struct pwm_device *pwm,
 static void meson_pwm_enable(struct meson_pwm *meson, struct pwm_device *pwm)
 {
 	struct meson_pwm_channel *channel = pwm_get_chip_data(pwm);
-	u32 value, clk_shift, clk_enable, enable;
-	unsigned int offset;
+	struct meson_pwm_channel_data *channel_data;
 	unsigned long flags;
+	u32 value;
 
-	switch (pwm->hwpwm) {
-	case 0:
-		clk_shift = MISC_A_CLK_DIV_SHIFT;
-		clk_enable = MISC_A_CLK_EN;
-		enable = MISC_A_EN;
-		offset = REG_PWM_A;
-		break;
-
-	case 1:
-		clk_shift = MISC_B_CLK_DIV_SHIFT;
-		clk_enable = MISC_B_CLK_EN;
-		enable = MISC_B_EN;
-		offset = REG_PWM_B;
-		break;
-
-	default:
-		return;
-	}
+	channel_data = &meson_pwm_per_channel_data[pwm->hwpwm];
 
 	spin_lock_irqsave(&meson->lock, flags);
 
 	value = readl(meson->base + REG_MISC_AB);
-	value &= ~(MISC_CLK_DIV_MASK << clk_shift);
-	value |= channel->pre_div << clk_shift;
-	value |= clk_enable;
+	value &= ~(MISC_CLK_DIV_MASK << channel_data->clk_div_shift);
+	value |= channel->pre_div << channel_data->clk_div_shift;
+	value |= channel_data->clk_en_mask;
 	writel(value, meson->base + REG_MISC_AB);
 
 	value = FIELD_PREP(PWM_HIGH_MASK, channel->hi) |
 		FIELD_PREP(PWM_LOW_MASK, channel->lo);
-	writel(value, meson->base + offset);
+	writel(value, meson->base + channel_data->reg_offset);
 
 	value = readl(meson->base + REG_MISC_AB);
-	value |= enable;
+	value |= channel_data->pwm_en_mask;
 	writel(value, meson->base + REG_MISC_AB);
 
 	spin_unlock_irqrestore(&meson->lock, flags);
@@ -238,26 +239,13 @@ static void meson_pwm_enable(struct meson_pwm *meson, struct pwm_device *pwm)
 
 static void meson_pwm_disable(struct meson_pwm *meson, struct pwm_device *pwm)
 {
-	u32 value, enable;
 	unsigned long flags;
-
-	switch (pwm->hwpwm) {
-	case 0:
-		enable = MISC_A_EN;
-		break;
-
-	case 1:
-		enable = MISC_B_EN;
-		break;
-
-	default:
-		return;
-	}
+	u32 value;
 
 	spin_lock_irqsave(&meson->lock, flags);
 
 	value = readl(meson->base + REG_MISC_AB);
-	value &= ~enable;
+	value &= ~meson_pwm_per_channel_data[pwm->hwpwm].pwm_en_mask;
 	writel(value, meson->base + REG_MISC_AB);
 
 	spin_unlock_irqrestore(&meson->lock, flags);
@@ -309,18 +297,7 @@ static void meson_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 	if (!state)
 		return;
 
-	switch (pwm->hwpwm) {
-	case 0:
-		mask = MISC_A_EN;
-		break;
-
-	case 1:
-		mask = MISC_B_EN;
-		break;
-
-	default:
-		return;
-	}
+	mask = meson_pwm_per_channel_data[pwm->hwpwm].pwm_en_mask;
 
 	value = readl(meson->base + REG_MISC_AB);
 	state->enabled = (value & mask) != 0;
@@ -458,7 +435,8 @@ static int meson_pwm_init_channels(struct meson_pwm *meson)
 		init.num_parents = meson->data->num_parents;
 
 		channel->mux.reg = meson->base + REG_MISC_AB;
-		channel->mux.shift = mux_reg_shifts[i];
+		channel->mux.shift =
+				meson_pwm_per_channel_data[i].clk_sel_shift;
 		channel->mux.mask = MISC_CLK_SEL_MASK;
 		channel->mux.flags = 0;
 		channel->mux.lock = &meson->lock;
@@ -509,7 +487,7 @@ static int meson_pwm_probe(struct platform_device *pdev)
 	meson->chip.dev = &pdev->dev;
 	meson->chip.ops = &meson_pwm_ops;
 	meson->chip.base = -1;
-	meson->chip.npwm = MESON_NUM_PWM;
+	meson->chip.npwm = MESON_NUM_PWMS;
 	meson->chip.of_xlate = of_pwm_xlate_with_flags;
 	meson->chip.of_pwm_n_cells = 3;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

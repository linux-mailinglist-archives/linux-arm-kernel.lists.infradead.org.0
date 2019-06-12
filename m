Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FBE430AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WoKeGscx1pwsLP7Bt5n7IFjO+FCydnYTrQmE6WJdpT8=; b=tc6sSznB3ljVjI
	ptD9ZOnSjNQ+yKMy/vEtNeYRLVifB1kz8D9aQrokiyZ04OjAC4m5/AR4PDuIMad4i9iq6Iv4Dgb4T
	KsFssmFJb/MiaLImc6Py1wZeSXok72ZJo/wtylfNriWJlKFXoXdnn+/hMaaclJmsteBx6S78ho9mK
	edwIcISgHWufKc51TusBGn5oLx6fSjr6yuQN67r5Pec1m8Ly7xBsXlUpOiW6R4bqJyG5w4Cy9hZQj
	bFCymDTOY3cvfYsrJ9/LOcrX019tBXQZQz6M1u+N+SwvZWe6rZFJ1mqLK59o4RBeF2DjI+GI6j9OC
	tla1ItUURp3OI3yV31VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9RQ-00081J-5C; Wed, 12 Jun 2019 20:01:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9PG-0005HM-1p; Wed, 12 Jun 2019 19:59:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id p13so8125571wru.10;
 Wed, 12 Jun 2019 12:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n89sS2IF6oy/dSMTJYTuwbKIYEQibFNtMkr3Jdh00VI=;
 b=jqdfuaGKGVBJDHLqJloPap7ddlkc++Vw86n/G9Cqyth3C/JiT4bp7/TUYhV8kA3DZW
 9VmJOVKhZyIYoVp1ShT9znjTjRAywfH5dI8FzdwqBfBrdwBSlRHHY+PV5QLuV/gqtiYa
 sw0W4lu3jshnIGbAA1VGd9bbl7/EixEghlG/mC8s+3yj+h7XhEyKKn88/d+FzY7l78e6
 emsXdYiElYRTMxlcvj/KwqOhcAMRIJgldcvPIdsB3zvNGADkAVXx0zJ/DnDQEJcCf/hw
 K39ILIJWYx2B3Mx0tQoWFJzOD5Zt1QLQ9M+wHb6oBL0EV6HX0nBEpFJ8GjC07ZYt88FP
 HcsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n89sS2IF6oy/dSMTJYTuwbKIYEQibFNtMkr3Jdh00VI=;
 b=Y3RzcfjD6dcMaM7Rq2/jSNuc9kGfDK35MJHDnsRzcxXvaTPnFAgXkbA91vgiYYOo0f
 pUZVLgEYcMlIVul3D1oqApB6vpNJE4EHt3Br0RoqvitB63lCCe1HVamDsXKZBYS50cWM
 Z8P1tVuxZvxlYzzeHUsrAPISfsJWlpwN8/Lc9lAr8oe44X8z+cnv90ONXD/wiuXDyDAQ
 Aet3AcZ9k2zKknIEhJWow5oGbjeTa1vb5Y5uFfxECBamvyvz/jY5+OUO5GXq8eCuSQ9I
 v73TFB1nwV0r4X4IAbQxdSh/FzfLc5DJ8Qcks6aBV0JdYlj8cCxFWlfZof4Qvf2n60V2
 7V/A==
X-Gm-Message-State: APjAAAWlaqIJgcdghGXddsryy95t5KICGsU1gmwe9iVlBY4tVI+z95EM
 nDRgbxGM+QgQnADUqzcW4T225zl1
X-Google-Smtp-Source: APXvYqyF127E/x6ADQ6vNMivZrB0ELAdxN4kdSdQGkVwcCebnCsQXj6HYABRETo8h+cHEk9hOcFpWw==
X-Received: by 2002:adf:df91:: with SMTP id z17mr50155625wrl.336.1560369575951; 
 Wed, 12 Jun 2019 12:59:35 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f10sm1026745wrg.24.2019.06.12.12.59.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:59:35 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v3 05/14] pwm: meson: don't duplicate the polarity internally
Date: Wed, 12 Jun 2019 21:59:02 +0200
Message-Id: <20190612195911.4442-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
References: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_125938_305035_BD5D3B30 
X-CRM114-Status: GOOD (  13.74  )
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

Let meson_pwm_calc() use the polarity from struct pwm_state directly.
This removes a level of indirection where meson_pwm_apply() first had to
set a driver-internal inverter mask which was then only used by
meson_pwm_calc().

Instead of adding the polarity as parameter to meson_pwm_calc() switch
to struct pwm_state directly to make it easier to see where the
parameters are actually coming from.

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pwm/pwm-meson.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index 84b28ba0f903..39ea119add7b 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -63,7 +63,6 @@ struct meson_pwm {
 	struct pwm_chip chip;
 	const struct meson_pwm_data *data;
 	void __iomem *base;
-	u8 inverter_mask;
 	/*
 	 * Protects register (write) access to the REG_MISC_AB register
 	 * that is shared between the two PWMs.
@@ -116,14 +115,17 @@ static void meson_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
 }
 
 static int meson_pwm_calc(struct meson_pwm *meson,
-			  struct meson_pwm_channel *channel, unsigned int id,
-			  unsigned int duty, unsigned int period)
+			  struct meson_pwm_channel *channel,
+			  struct pwm_state *state)
 {
-	unsigned int pre_div, cnt, duty_cnt;
+	unsigned int duty, period, pre_div, cnt, duty_cnt;
 	unsigned long fin_freq = -1;
 	u64 fin_ps;
 
-	if (~(meson->inverter_mask >> id) & 0x1)
+	duty = state->duty_cycle;
+	period = state->period;
+
+	if (state->polarity == PWM_POLARITY_INVERSED)
 		duty = period - duty;
 
 	if (period == channel->state.period &&
@@ -278,15 +280,7 @@ static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	if (state->period != channel->state.period ||
 	    state->duty_cycle != channel->state.duty_cycle ||
 	    state->polarity != channel->state.polarity) {
-		if (state->polarity != channel->state.polarity) {
-			if (state->polarity == PWM_POLARITY_NORMAL)
-				meson->inverter_mask |= BIT(pwm->hwpwm);
-			else
-				meson->inverter_mask &= ~BIT(pwm->hwpwm);
-		}
-
-		err = meson_pwm_calc(meson, channel, pwm->hwpwm,
-				     state->duty_cycle, state->period);
+		err = meson_pwm_calc(meson, channel, state);
 		if (err < 0)
 			return err;
 
@@ -520,7 +514,6 @@ static int meson_pwm_probe(struct platform_device *pdev)
 	meson->chip.of_pwm_n_cells = 3;
 
 	meson->data = of_device_get_match_data(&pdev->dev);
-	meson->inverter_mask = BIT(meson->chip.npwm) - 1;
 
 	channels = devm_kcalloc(&pdev->dev, meson->chip.npwm,
 				sizeof(*channels), GFP_KERNEL);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

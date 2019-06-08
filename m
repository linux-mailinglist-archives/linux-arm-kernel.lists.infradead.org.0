Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7673A133
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 20:11:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlqxzRnruiYZPY7vgIOYy0NhniuuVAFP83idv+CbT08=; b=QfZvAY/Vgv0Agu
	ikLFV7NQGuWrY80kNMLvH9o3oj5bff0+keSx8ycugoYefjFmTmxNkBqmSIfH5gDWAeNobVf7SbEVg
	tHkYNSzqUMkYF8kDHw1P+h35iXpCRl3RbD71vLev31rMSPddLr2UU41u+cQvUbXby16zzaJUeWFHY
	XRpsNa9HNPzPFHmN8y+c/qnxuW6+DOXYxw2WLIh+jyI2fJ/Hqyw/tuWkXvfhL2qhS7MSbWFY+UHcP
	tgRiPNEh/rmB5LOFBtGKd4nYsR3GQpBA900aB6W0+pkLuUxkv13IxXOZNs1rhq9tzOCm0y3hByqqr
	wCF8s22wwy+oJz0cMG6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZfoO-0006IF-F0; Sat, 08 Jun 2019 18:11:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZfjt-0000tO-09; Sat, 08 Jun 2019 18:06:50 +0000
Received: by mail-wm1-x344.google.com with SMTP id w9so6231937wmd.1;
 Sat, 08 Jun 2019 11:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=r2ToPp43IDqJY9ruWYlbIAIk8rREDtHiEg0Zr2a3p3U=;
 b=eywnowT3FV8czlQzFI8M3KB61zx8ksV40JxyuUI2r0EVZJvHfST15EcsA3sliMrZqt
 MftDg+tCTBg1Ttq9RgZaQLBOYrdZC+h7/KpBFeHy+i4NpfluFC4NW7p2e7SaJ4aRcFw2
 CoOuaBKztBKR+/tFZdOsg1+V6AejWVG40dLV5QUvJiAad/ZL/jUauFyabADWZzPeSA6I
 Z1/oZCilwF9bkCEl4k2ywVy1KGL2x3IAUET8gmZDKZ0Eh8w8NT/JHQBnF+Rp7AkAcm5r
 Sd1BnAwBQQJW+pDMvHxGOASFKKBJDhzJPSYIkTx9kdVYKq0D162b64xeaih0ssDBJqoX
 kGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=r2ToPp43IDqJY9ruWYlbIAIk8rREDtHiEg0Zr2a3p3U=;
 b=JOYZHTqkUKWuA+nMSa7enKVuyZZ3YkJRffZ/HricHIn557j3EOc0BxLFUBKZBILq5s
 klc+ufNWSafHLza7kap+TPRKbhC684gGC3OdOkAf5HAp0VbivR2BmqpvtIVLihuIfDF3
 XbtktwC0mQsV78o14K6iQxXDsVlPh0Zp69+l/7a4SbhT/dNSj3mvS8L8iODxl11OricK
 Ty1Np/6knbySznHE5vCrH8/vBOmMeQ4zar8Pv9UR+kMlCl/WW2IHstW/mAi0+cfltiBS
 CqXzSBf/PRdDP+7Wlb080We/XUYHbZ53GyMxfPmTsBuOuw2wm1EzwhJ7lAmqSbP9Qv6H
 XOIA==
X-Gm-Message-State: APjAAAVwemHsgorPiTLh12vyEwIWV6gVFUSWI1YAxPE49AB1wqS2ECkg
 3NgbcNb380VqM5YFJu42okF9iFWr
X-Google-Smtp-Source: APXvYqzKbhVwCuFbTgMQsfzH5DhqyH4Vq7yYLlluv4xdq4kBEVhrp4ppQhvp/iNKP8GbfnN5So4iEQ==
X-Received: by 2002:a1c:8049:: with SMTP id b70mr7436969wmd.33.1560017206430; 
 Sat, 08 Jun 2019 11:06:46 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400D12EFF43FED1E981.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:d12e:ff43:fed1:e981])
 by smtp.googlemail.com with ESMTPSA id c7sm5143345wrp.57.2019.06.08.11.06.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 11:06:45 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v2 12/14] pwm: meson: don't cache struct pwm_state internally
Date: Sat,  8 Jun 2019 20:06:24 +0200
Message-Id: <20190608180626.30589-13-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
References: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110649_067267_9C44AD25 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

The PWM core already caches the "current struct pwm_state" as the
"current state of the hardware registers" inside struct pwm_device.

Drop the struct pwm_state from struct meson_pwm_channel in favour of the
struct pwm_state in struct pwm_device. While here also drop any checks
based on the pwm_state because the PWM core already takes care of this.

No functional changes intended.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/pwm/pwm-meson.c | 25 +------------------------
 1 file changed, 1 insertion(+), 24 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index 010212166d5d..900d362ec3c9 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -68,8 +68,6 @@ struct meson_pwm_channel {
 	unsigned int lo;
 	u8 pre_div;
 
-	struct pwm_state state;
-
 	struct clk *clk_parent;
 	struct clk_mux mux;
 	struct clk *clk;
@@ -127,8 +125,6 @@ static int meson_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
 		return err;
 	}
 
-	chip->ops->get_state(chip, pwm, &channel->state);
-
 	return pwm_set_chip_data(pwm, channel);
 }
 
@@ -153,10 +149,6 @@ static int meson_pwm_calc(struct meson_pwm *meson, struct pwm_device *pwm,
 	if (state->polarity == PWM_POLARITY_INVERSED)
 		duty = period - duty;
 
-	if (period == channel->state.period &&
-	    duty == channel->state.duty_cycle)
-		return 0;
-
 	fin_freq = clk_get_rate(channel->clk);
 	if (fin_freq == 0) {
 		dev_err(meson->chip.dev, "invalid source clock frequency\n");
@@ -253,7 +245,6 @@ static void meson_pwm_disable(struct meson_pwm *meson, struct pwm_device *pwm)
 static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 			   struct pwm_state *state)
 {
-	struct meson_pwm_channel *channel = pwm_get_chip_data(pwm);
 	struct meson_pwm *meson = to_meson_pwm(chip);
 	int err = 0;
 
@@ -262,26 +253,12 @@ static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 
 	if (!state->enabled) {
 		meson_pwm_disable(meson, pwm);
-		channel->state.enabled = false;
-
-		return 0;
-	}
-
-	if (state->period != channel->state.period ||
-	    state->duty_cycle != channel->state.duty_cycle ||
-	    state->polarity != channel->state.polarity) {
+	} else {
 		err = meson_pwm_calc(meson, pwm, state);
 		if (err < 0)
 			return err;
 
-		channel->state.polarity = state->polarity;
-		channel->state.period = state->period;
-		channel->state.duty_cycle = state->duty_cycle;
-	}
-
-	if (state->enabled && !channel->state.enabled) {
 		meson_pwm_enable(meson, pwm);
-		channel->state.enabled = true;
 	}
 
 	return 0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

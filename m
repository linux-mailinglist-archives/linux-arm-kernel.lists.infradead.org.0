Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA532A655
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6g0m60Hb1+RLewOmN4Txap1HlmIKCLfyrME1VYsfQI=; b=l2gGlIb7wolBlP
	XI8s8D2/HwboJzR/8puqPnzWHuLmThdT/RIbHDdT3VoAfRoWdX+7KEw3OnnPoJGq4qz2x+fWf0fwM
	ZokahrLltNV2tCxK0ERuTMW5WlNUCuHbyOHcJewJ8+YTtSPCfj+3ooHU4Uzvb+rpo1MhUpevUYoYW
	Fp/aXVRYr/8U02bJyfBKACbc8srcwQVWAqUaC/IyCYDWVwsifs2ohNv24iIKTcJ7Z+5SMlcaFqp/D
	MAcNA7N0Z/T2DwZd7vRU8b2Ex66DV26riN0fAQmnuEwOB8WC4MrIJqbdus91p9GVV6NrmIymqdWpO
	Xt0hiTl1ZQHXEQrYee/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbAi-0004BN-7K; Sat, 25 May 2019 18:13:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb9D-0002Qx-La; Sat, 25 May 2019 18:12:02 +0000
Received: by mail-wm1-x342.google.com with SMTP id y3so12354106wmm.2;
 Sat, 25 May 2019 11:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZZBrfkl16mJlGiWrnZRe//jeJtUZhnRCrg3oI0vNyFI=;
 b=MgUAmTL4yQFGoNbP7rExFDhLyToEDMu/d0vkne8q//dsS1wVYTc5RZ943WOgq3Wu3D
 7C0kJswseNQVZJ10l7h2RMOJqFNusWEqF8YRh94m+J4618+oOsjp0NdVDk7u2auMCgtN
 KFxgTNGAFTpmEvvvrrGbdZF2B1dnsdByx48ZB3UeKE/okpT5KHo6Lb+BKTAwjkcXbNlj
 lsXY2Y/aLWsfE0hD0bJ4VdcLwj1GuIvZR+Ap34vgH1GQUXZrWZhQ3pN9RIp4Ad/ziwQQ
 YcJXBItvX19JiDrTBcOyvStOwsIkpVNbj9PYJqyKUE1FcmWvVo7Ffy/rs0zRN+vqkmEi
 t/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZZBrfkl16mJlGiWrnZRe//jeJtUZhnRCrg3oI0vNyFI=;
 b=f3LlOIn+6jLRsnXU3gIIZ7iojUjg7r3WsNUTvPwb5IFmWH9Vb8DbXggushxBUP7HRm
 usAPFCBcM4fVcflQ0ng4K5BJCq6mPu3WutONG+ouvPXg0MUb/j5IYU79Tc1XOc9XHUWz
 +vlzS5ZCH2ksRBBDNXhagEMaQSml9890P7NOf019wex/90+41haX1ELrOFd2K9VPAs0P
 mv6zXYcO70J3FfviPWGxx6kQ8VP3QwYYIR3zspeJ3mCy9DtCI6wd7YPmRKGQ2hNC0Aa3
 GOIVX+L8oXRgOKMll4jVx1HYyS9X19mg25ue1YL77tlFtH9MvwstowxYBOLNiZkp66tX
 FpiA==
X-Gm-Message-State: APjAAAXtel6a6NkXthY7XPdPpezd+r5+tKP6ZbhPvX2PAM4ofBgBrk1J
 LVTRZc9rszreD0S7dUbEyc4q9/oj
X-Google-Smtp-Source: APXvYqx7WEtmO5tBGD+Qk0uLxms3RRFGsn/SwE+f+++pGxOUKsvbHBDc+QgOZvlVI410mS9pcBvgSA==
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr21216802wmk.78.1558807917837; 
 Sat, 25 May 2019 11:11:57 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:57 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 12/14] pwm: meson: don't cache struct pwm_state internally
Date: Sat, 25 May 2019 20:11:31 +0200
Message-Id: <20190525181133.4875-13-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111159_848317_D6C42E43 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

The PWM core already caches the "current struct pwm_state" as the
"current state of the hardware registers" inside struct pwm_device.

Drop the struct pwm_state from struct meson_pwm_channel in favour of the
struct pwm_state in struct pwm_device. While here also drop any checks
based on the pwm_state because the PWM core already takes care of this.

No functional changes intended.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
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

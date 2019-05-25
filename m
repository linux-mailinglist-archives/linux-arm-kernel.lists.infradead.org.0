Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D125B2A659
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Si0kRBxl2jLgXL9bkYEBrKjWPYBxexazh9eqK/qWoQw=; b=BxEw1eRjpnGKIX
	ZKK9cLinfDFtKHx/BtkrL1N2m2YdrgCwmZ5NsjglH1EbWp8fBr2/+w1tC7gVHPwF2S0y8BOO03Hug
	GEyGU5I7b+rDzbHlSWh+cDr4ywSYJkpqj7swwME8qPxWijC2MZDBpbfZUxXWv/gfOWhzYrmhJk6Nb
	BgNlgDw9ys8sZHU+5nSfLqzmOQRW0RHPYSwZr3b4bvr6lVxOwTHyvKPRdCUNe8oC3Cl0f/UwA8fym
	zKZbiczEPBbTzvVLbF+BnA7OE1uTQ6YKoIkbLEqDP3WGsEqUpKgG3CgtrGAFnxdpucx/Nn1R13X3+
	W3L9lpn2EZJqB4GEGrng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbB9-0004cV-IU; Sat, 25 May 2019 18:13:59 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb95-0002N4-UN; Sat, 25 May 2019 18:11:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id 198so12328489wme.3;
 Sat, 25 May 2019 11:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kfVYlUJeQCHL5cSID78tPPaL8HnCS71jyLT/qQfWE0Y=;
 b=VptW1X7hURBN1YVC+q/LsurDbH+RmvNxxvli4gffs5StELw6dPFuEs3zWZrY11MakN
 CCRB5f63eRtJyiOYYObTObWvoPpRsHUO9rg1bROPf/+zVY7z2Pwd2qBAM4Gc0n1GaXWl
 vo4pUu86XALwiBqJG6WLQgHjHxljWQ61BOuO7cMOE90lJXPXZbulRkD0enpBM/BqwKL8
 w+IF3LMyeHS+AkS4l8UP0lLB3JYXH3k795MWzp/t88hYUQ1eTj+rf/9Ox8TUXnbHmDch
 xEWedKpQ3/pLpso5MK7QqSSmLMLirFzT7SSXiDi/axfVhFrZvou3DWEaiyLVEgZ/EvxI
 c+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kfVYlUJeQCHL5cSID78tPPaL8HnCS71jyLT/qQfWE0Y=;
 b=Y7aOW2+ArCicYSZUy0/RbPLsE9pA81iJUgt8v37LFKZVxrfgsL/wQ2J5cYI4q42LZL
 qhsn+s77aTSrpcY53q+T6zTLrPp+SqxHWccWcVIlYYFPHhmT1XSg0OAshxVo1kZFWsqO
 mC/ZkJ4bMFRRZOSk5B5Ywttza9Dp4naisFeTOBg34rkGQXE95DJFFkSDRLPnq9KSo5Vm
 xNIiPkojnZ+UV9EdgLNxgIlJBuf9P2U9g0SXfAh/3V55q0pbSXqeNfFrvI6XaLFCK1uH
 jsoEf3ktyXH/FfB43m6PmOEHjJXIu+ogMgHpcwcTP48CUyQTIatXApeDVgFna56Ralhe
 u3Rw==
X-Gm-Message-State: APjAAAXliLLtlp0fRbAyiYTYX93sTq9SuSc3hAzno0+ylsVtdeIYwTNW
 TDrXwYkgDBwBWZ6HkMrQXeh8d7dH
X-Google-Smtp-Source: APXvYqznM6UHLbHru14wH4QS6FkAKOANEzuRiTO0Lt36ObeG66JwdGsGb35NNstOPe7Tshf+VUKKWQ==
X-Received: by 2002:a1c:be03:: with SMTP id o3mr3208464wmf.139.1558807910263; 
 Sat, 25 May 2019 11:11:50 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:49 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 06/14] pwm: meson: pass struct pwm_device to meson_pwm_calc()
Date: Sat, 25 May 2019 20:11:25 +0200
Message-Id: <20190525181133.4875-7-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111152_077617_2D74A226 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

meson_pwm_calc() is the last function that accepts a struct
meson_pwm_channel. meson_pwm_enable(), meson_pwm_disable() and
meson_pwm_apply() for example are all taking a struct pwm_device as
parameter. When they need the struct meson_pwm_channel these functions
simply call pwm_get_chip_data() internally.

Make meson_pwm_calc() consistent with the other functions in the
meson-pwm driver by passing struct pwm_device to it as well. The value
of the "id" parameter is actually pwm->hwpwm, but the driver never read
the "id" parameter, which is why there's no replacement for it in the
new code.

No functional changes.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pwm/pwm-meson.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index 39ea119add7b..d6eb4d04d5c9 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -114,10 +114,10 @@ static void meson_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
 		clk_disable_unprepare(channel->clk);
 }
 
-static int meson_pwm_calc(struct meson_pwm *meson,
-			  struct meson_pwm_channel *channel,
+static int meson_pwm_calc(struct meson_pwm *meson, struct pwm_device *pwm,
 			  struct pwm_state *state)
 {
+	struct meson_pwm_channel *channel = pwm_get_chip_data(pwm);
 	unsigned int duty, period, pre_div, cnt, duty_cnt;
 	unsigned long fin_freq = -1;
 	u64 fin_ps;
@@ -280,7 +280,7 @@ static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	if (state->period != channel->state.period ||
 	    state->duty_cycle != channel->state.duty_cycle ||
 	    state->polarity != channel->state.polarity) {
-		err = meson_pwm_calc(meson, channel, state);
+		err = meson_pwm_calc(meson, pwm, state);
 		if (err < 0)
 			return err;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

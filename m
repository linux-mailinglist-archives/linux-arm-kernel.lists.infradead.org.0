Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 854B3430C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbs+oGiIbnCfZVoZ3v93m6M+uGO+v39dGHvkerAclvk=; b=Jb3rDqOuPbkBx8
	dVi9xZGi61O0bmLSY0zzR775ngAoo0j8LHNIDGfCctIc20HY9WPkvvRvFKg4jhjvLCBsKTlU18sUC
	IPf0/KOWalSCLr7KHT14QY153jNhlzAxt++BQqjHzJG6XT3G49+J32+oozH8fQ41ZCbe2w4otsRVH
	j5s79/sz8rd6UiGjboj+U6p1EfFw10QIPdZM97V79/daFdxgdPqf9itONIR5/OUxOFJdb5uJCf52Y
	XLzz7yVUOAtupEMdszJZnOj74gSQ2WergN0HoZHFjyTWxzhbmAz+IURzU1863VTYlIr24OroyZUiW
	qRyoGWJYnN/trX+2aYig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9TF-0001MB-0g; Wed, 12 Jun 2019 20:03:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9PM-0005NC-OA; Wed, 12 Jun 2019 19:59:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id x15so7801739wmj.3;
 Wed, 12 Jun 2019 12:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RV+OLObvzmYIBVmEezNfCuTw9H3cY6vNxRlWZtxojAU=;
 b=DlhpIRTJ4MdcQchNiyAt/oB5rLRGKiZHbqyN3SwrK0qIm+7uLb9uVPkOuxnyX7dN/a
 2fuu2FenVNwgYZbkbojWBw8tPpuwDjyvMHzbw6CTOF7fYep6VxeZWmtqWtehYuUtG0Rq
 ruFbBS4CmXLY4hKpwu7HH28kfrqGz21IaQUXV4DkVXCp6P87jgHfAJ1gyU+6AnPuIs8g
 fW/YwIulCT9AX3Ph4OEqbe9oC3xrTba6UViLwePqmBBOIMnKXa5rj9SHFgWtLJQoTMZ5
 Scpm3w3GveBKhLsc9fnSs2s2EAUWRBYXhP4VQjPnSInl+BiZCiuqX7lGa9C9WskJsg7I
 WYeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RV+OLObvzmYIBVmEezNfCuTw9H3cY6vNxRlWZtxojAU=;
 b=aOoKNmdh2oadUmdF/WcAcybNKa+wFryWrRExT7T9RgypLeYA8BoqbVS9N/0iBlFrNC
 4h9D4IzQO9GldPWRSIZzc0OyAcAg9awflaGuHOqhtzlQvHiCWcbEWXE/Y4//oqs3HsTG
 qrVhz9S5ZYGZyscC7qwa/AL8FDzjPNScHu4FYPpaDyrOxaqDj+Elw+3lYOUSXkxqpuge
 SBaV6AYapi4x114NdvDj40/wQk6DqkMyOng88Gbia6ym0AfsUYZHJQtU8YyBVrbutZMc
 QxWTRd5DZEwkuZFkXfHWIWoKyJ9XeRTxpzJDuWPLNBcgDUOMtczG1KBh0SvteGLDNgXR
 mjrg==
X-Gm-Message-State: APjAAAVxiTDxkAhl23iSj+R7lRx8QJAqjdYY3k/l4TuU0VCRflvEjJJy
 2DUGTCZrgGDWKsA+x5dD0cu0DRFB
X-Google-Smtp-Source: APXvYqw0FeAFhC+xg04qzQEZj95492ycLUOllcqQJRybPLbEwc0eA1L6Lx+qvhOOeKWQk3rpbn7+aQ==
X-Received: by 2002:a1c:808b:: with SMTP id b133mr581640wmd.160.1560369582613; 
 Wed, 12 Jun 2019 12:59:42 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f10sm1026745wrg.24.2019.06.12.12.59.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:59:42 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v3 11/14] pwm: meson: read the full hardware state in
 meson_pwm_get_state()
Date: Wed, 12 Jun 2019 21:59:08 +0200
Message-Id: <20190612195911.4442-12-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
References: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_125944_806728_C027F981 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

Update the meson_pwm_get_state() implementation to take care of all
information in the registers instead of only reading the "enabled"
state.

The PWM output is only enabled if two conditions are met:
1. the per-channel clock is enabled
2. the PWM output is enabled

Calculate the PWM period and duty cycle using the reverse formula which
we already have in meson_pwm_calc() and update struct pwm_state with the
results.

As result of this /sys/kernel/debug/pwm now shows the PWM state set by
the bootloader (or firmware) after booting Linux.

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/pwm/pwm-meson.c | 52 ++++++++++++++++++++++++++++++++++++++---
 1 file changed, 49 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index 9afa1e5aaebf..010212166d5d 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -287,19 +287,65 @@ static int meson_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 	return 0;
 }
 
+static unsigned int meson_pwm_cnt_to_ns(struct pwm_chip *chip,
+					struct pwm_device *pwm, u32 cnt)
+{
+	struct meson_pwm *meson = to_meson_pwm(chip);
+	struct meson_pwm_channel *channel;
+	unsigned long fin_freq;
+	u32 fin_ns;
+
+	/* to_meson_pwm() can only be used after .get_state() is called */
+	channel = &meson->channels[pwm->hwpwm];
+
+	fin_freq = clk_get_rate(channel->clk);
+	if (fin_freq == 0)
+		return 0;
+
+	fin_ns = div_u64(NSEC_PER_SEC, fin_freq);
+
+	return cnt * fin_ns * (channel->pre_div + 1);
+}
+
 static void meson_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
 				struct pwm_state *state)
 {
 	struct meson_pwm *meson = to_meson_pwm(chip);
-	u32 value, mask;
+	struct meson_pwm_channel_data *channel_data;
+	struct meson_pwm_channel *channel;
+	u32 value, tmp;
 
 	if (!state)
 		return;
 
-	mask = meson_pwm_per_channel_data[pwm->hwpwm].pwm_en_mask;
+	channel = &meson->channels[pwm->hwpwm];
+	channel_data = &meson_pwm_per_channel_data[pwm->hwpwm];
 
 	value = readl(meson->base + REG_MISC_AB);
-	state->enabled = (value & mask) != 0;
+
+	tmp = channel_data->pwm_en_mask | channel_data->clk_en_mask;
+	state->enabled = (value & tmp) == tmp;
+
+	tmp = value >> channel_data->clk_div_shift;
+	channel->pre_div = FIELD_GET(MISC_CLK_DIV_MASK, tmp);
+
+	value = readl(meson->base + channel_data->reg_offset);
+
+	channel->lo = FIELD_GET(PWM_LOW_MASK, value);
+	channel->hi = FIELD_GET(PWM_HIGH_MASK, value);
+
+	if (channel->lo == 0) {
+		state->period = meson_pwm_cnt_to_ns(chip, pwm, channel->hi);
+		state->duty_cycle = state->period;
+	} else if (channel->lo >= channel->hi) {
+		state->period = meson_pwm_cnt_to_ns(chip, pwm,
+						    channel->lo + channel->hi);
+		state->duty_cycle = meson_pwm_cnt_to_ns(chip, pwm,
+							channel->hi);
+	} else {
+		state->period = 0;
+		state->duty_cycle = 0;
+	}
 }
 
 static const struct pwm_ops meson_pwm_ops = {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

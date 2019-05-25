Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E95E2A675
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLpbx4eyYRlYwdBgj0741n5OOZ72x6x0UplzapD8Mkk=; b=LP+OUfaM1L3MeG
	pDBFIlq1BJr494ZqsA4/q2PstIUzeBPZnMJkvYcTs4NEEcoWnuv0LBUjjQr67kgEffNwAI5cKRIK5
	1/NM1A+4P6dKTZ3Czmm5xIkgR6bE6VCCt7jDe6WJ3XsY7i6LfOPxohnN/msa/w/cULV0ft+2Cde0Y
	Mkh70bu+JHE6msrYzxVzE+LWHP6kqhJsgxdM1Kye3gJv04VRQjgz2gwtK6ew3rjeTL+hXQA0kVTm/
	jsx+sbRlbS0diAsVo2g1e3qEN9ev8RN3jSsPkBVjwnzhl8YyT/Smqdu0FBvhUP2uf5Ru1o+Z8KMl6
	cyJtR6c00KwB+dH91+nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbBk-0005C3-1y; Sat, 25 May 2019 18:14:36 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb9F-0002S1-IN; Sat, 25 May 2019 18:12:03 +0000
Received: by mail-wm1-x344.google.com with SMTP id 15so12046051wmg.5;
 Sat, 25 May 2019 11:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P6S6JiWbeadjUYysdt7Ty07UEhlqvmUYPEJBP3QF3hM=;
 b=lx8XVhGvLDMQjYEVrJPEmnwBBTQehcGtinH8oHdm/4miWFMb8wceXX8jL1uQYSvHcn
 WuKaflyXnEtIhg2pb3HvjEHGZrBrUpSa2yhsxgjaKiWKSgL5Rw0/Jk7rIb4u0KkSjdcM
 VfaXAwToMcOK6e3zFaqaC9ZoZN9tcQocVlAruqFfiZfiyrfxekfd5H6SW3c4tZbU55ku
 +jDmmH5/3loeJ50a/RXvt6ZtHzsnVS875Y5NwvkRZlDSg6Asum8PIcjEq3JhMVx1Btik
 OPE7MyUPTE4MmRiwg21SEH7/i3MZ+oxxLJCsH1z4wZs+8adtDUihlT2hCcPL4ownOz60
 pK9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P6S6JiWbeadjUYysdt7Ty07UEhlqvmUYPEJBP3QF3hM=;
 b=fBVsEr0eMYE4z7GoJbtNNi+dSrsvXLyDlYV2X8qMixTZz6jJpcOWAlS9kN0lVNuyvr
 YXJTXodLtk3axY/W6trDEtzttECv04RgA/KSUUCv2ieya5vpBt58xfd7LrDENzSypTUY
 Te15uePx2AK1cyGkuNiuEuDTVWEZTakLhGpj4aqjLyp/iO5DG/U+iDAXlqmj5NgsNIP2
 Ujl4u+oew5lw7s6eRVIOag3Sux/sxPZuJ7mLW5m2uZjlKQKHx5JgpboY49h30Vr4bZ13
 tSEuOHHSqsMf7dOiRcXM1TimSs7YknznlTsB4j9IbPRqGYtTKmDS8izMc4h4tYmB+ESQ
 86LQ==
X-Gm-Message-State: APjAAAUBLqSGY56tfkajSmbYj6iRZj20dQjrCxBQ1FuRE2fc6sPGQIPx
 aFT+pvCZi8pnlLDo+BB0fsPWul9p
X-Google-Smtp-Source: APXvYqx6kFreg3BLEOIWbXJYIuM1mGpx/LBYClCrw3+XYYRGohma4/peBmcQ0YcSmgi2Lq7OJuGEiQ==
X-Received: by 2002:a1c:7001:: with SMTP id l1mr7127484wmc.40.1558807919098;
 Sat, 25 May 2019 11:11:59 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id o8sm12794540wra.4.2019.05.25.11.11.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:11:58 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de
Subject: [PATCH 13/14] pwm: meson: add support PWM_POLARITY_INVERSED when
 disabling
Date: Sat, 25 May 2019 20:11:32 +0200
Message-Id: <20190525181133.4875-14-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
References: <20190525181133.4875-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111201_671394_DA32D8B5 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

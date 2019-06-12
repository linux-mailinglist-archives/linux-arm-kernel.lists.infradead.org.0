Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1D0430C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqZwHBnHFYEp1eDO59LyerKYxVg+rPR8Q1HuXFu2YVE=; b=V2LZ/tCavN1TCj
	poJCuV+a2ymW/buQyOFsaXDBIAE7TI6yXVTBvNNdCp3HuXoBUK+ecAgjJQmSnnQwBAHOL25f5Dl5Z
	eW0JafoseRI1jyMMLYM0O9vvnaV1nZnABXJZRnYlHWUs6uzRyAkwr8fEZtDtowywIUGdq7iI6X2Gj
	DspEhXtQYmdFeFjSHxX1dgMyP+Iqma44yWL3xzHLNUMNwdde/5ksH0YaicMtww9mWgc89yb9ekuns
	gbX13MMxMNSVaM+sZS+TfOXQAm8Lx5dLWJXMydxxPxbsQrNnPNpqj2jUhhDEst84qUQEFTxtp+AEI
	e1fmXbvJt15VDC737Psg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9UH-0002pw-DF; Wed, 12 Jun 2019 20:04:49 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9PO-0005Pb-Mn; Wed, 12 Jun 2019 19:59:48 +0000
Received: by mail-wr1-x444.google.com with SMTP id m3so18265432wrv.2;
 Wed, 12 Jun 2019 12:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1ozFqFrdOls/tbyfpKPSUD8IXeIqprLYFvxWmhrpcf0=;
 b=hJezs/mhpUzuwKDYnDTkffQSPj1qlqYWTxHyZZCyJGmz9yMf9DCeczOxzmFpD6p02W
 MQ1+rm+WsLeepWr2BiRIvZBMLF4USVKGFSr11rnqEs9XAA6/sdkbic8gz+bSvLuFYkvG
 +eIF+Ta7P+wDId7ny7OtptjJYPXgdVDTzAp7NvYx/o+4id+3a9qlRB09XwADiEWSBmoP
 ZpKVkZumu8yg/mdo5k/swfiCD7e+dMkmGIb51cJAVAVxSJKLnlv65x2rkqVQKFhzEdfF
 Yuyo1AKdxn0C8JFSg31K4H/ZeJn2+6665p5jWIn+3PKlEgzaMLnS0CxLDDuIe4RoRsYp
 HW/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1ozFqFrdOls/tbyfpKPSUD8IXeIqprLYFvxWmhrpcf0=;
 b=LcvaoPGdgXEJLK05ZgAP12aLoBFfiaGbK/smDtn0E7f3wkdlkBE89cAebJd5Ui9o+/
 HXbIjOzDMJ1VB7TFoKNnsArPeX5nKdaFUeiwcRCaWAfCrLCrsLY0xswve2XxyDn/lHnc
 WVrZbPrwCfe4GBZYf0ZNt6Kjo5xUkPJCPqtK2KD5/H8byxAtmNh+kQ6C3hxg6eQcE5PK
 h31HuJpgfwljwSNnuMprIR/4ZzDx1RuYCKwNexY/Iy/05PmE1S7zAWfH/nCefRJ18qzU
 nCi11mL5Rm9i6iaffzInsxwN0MxmNgv16OdVt5opkQqEYd3emEcYWGFylpn2q4hDUeqG
 1mTA==
X-Gm-Message-State: APjAAAXRQCgcg/1K542HZNfMyeVmKvGVgbbbXVl22WvJOsslAaXvINK/
 hlxS9LtVJL7hII8Hj6dPlEKv75uV
X-Google-Smtp-Source: APXvYqx+I2z01ZACLWNFwKG9uP3GcaI25PwRYsbOfOhifupPiCs73U78vFKZDu77frhlBoTC9raCUg==
X-Received: by 2002:adf:eb4e:: with SMTP id u14mr9218749wrn.168.1560369584977; 
 Wed, 12 Jun 2019 12:59:44 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f10sm1026745wrg.24.2019.06.12.12.59.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:59:44 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v3 13/14] pwm: meson: add support PWM_POLARITY_INVERSED when
 disabling
Date: Wed, 12 Jun 2019 21:59:10 +0200
Message-Id: <20190612195911.4442-14-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
References: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_125946_820155_ACB94D9F 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

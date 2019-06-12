Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6CA430B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 22:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HncJG4Nb8GTwtpgS5BHrKW8O3IllXnF9OUHo2kWjxJ0=; b=dpkiRu4S+irtk5
	aA6VW3I+wJnh9cOPCnp+3c7WDzVy19MculHAviwZI2ZQVGKtEaBzYvrm1jBogMjS/JrlFvkcLTi78
	69xxIEU7lAwlj9/hax9bRby+qPn6f1xV45cCsQ79/JMoDtx7V85c3NoO88Oru3NhjLw+dS+azG7qF
	MI9FzaZK3yO3z0s/v6LEsKmCWTeNV9hlRdtNQc/eShZFmJZr4pDWZizXF1arWFjPUw2hCbwmThqAs
	iuh+/MLzztvBnX1QnKBMfc9o7vlvBDZrM1+QXZiorsuSZqFYaw/uTmNXEgExRMuIONd+H9ah2TAXC
	BUIb9ysnnl+FvuSyr0Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb9Rl-0008N0-IB; Wed, 12 Jun 2019 20:02:13 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb9PG-0005IN-Tg; Wed, 12 Jun 2019 19:59:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so15577104wrt.6;
 Wed, 12 Jun 2019 12:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DwDAaDmWDruDWFqHwKhJ34WL6+B33C4drQYm+h+tPEA=;
 b=RZYiqh+GbVSPxundT8VUdR0zNFJSvJT/M2ArtDuVPSzRF0cxtCfjtRf2FKON/uGJZ1
 zrBA6HsLwHfYopWt7vlmuUMC+f8YJuaqcpQPrKYJrypTNFoEhgjzHvEWXSqwz+wMa5Hn
 8tOxuwh1HHR8qhtLCt5BjFul0w+ZDIGREbxbn3oP6gcpaahP24QHtJCwyfjR8F0+ToVV
 dpSS8mPqZarkQKjyTNnCBRigcEo5aD83vvFKY3OSnBtmlly4tq8Q/cUOqwleT4QpVh+q
 kj2mES5D978Z/LJezWyr4F+2PNz5IHiYLyNODDEn8RMfoES4nQKq4LG+mypLCw53vZR8
 xJ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DwDAaDmWDruDWFqHwKhJ34WL6+B33C4drQYm+h+tPEA=;
 b=JWNSSUcioyHrymJ2gj0UdJCx34JaSi58rR8xqxhpBVkMZ1rEsx9IrvrPH8FO9jMQn7
 uPupU4sJqeS7KDQQoy3zvqGRlF9Y/GMiStuWYf8G7hDnTfHn3mG3rnOkoH6NJyVRABde
 o1wFhm+nuHrWUWaTOCk0MhoHev8TQt3yxgW1ndfJh+rhkTuMcqlNoNaOu4FP9Vdu/sL7
 CoHceo2R8BgIktIX4iemaoiPhBm+wkhbAyzuslmhMQCUQ61qzGcFGfvRG19D9VaXZva9
 9J8viIsW3h8o0fcbsbNZa0ctTHlJFCQNXDtvu3xaWpXY1h69yXZW9O6DSMxTt2249XcO
 Er6A==
X-Gm-Message-State: APjAAAVA4QFuIl6Mb5u6ikPT3716b8gOxOhSA3HrIoH1HNeqqHSSBqtZ
 68pkvrTXAQRcNFV5nT2ON3xNVjI/
X-Google-Smtp-Source: APXvYqyRd9iRBgrT+ppvjw2zSNFBzwCbz5lZMd8Rs46/h3SHdhCglQoaHGh97NTkcGKWTFWLWStV/w==
X-Received: by 2002:a5d:4e50:: with SMTP id r16mr4218144wrt.227.1560369577258; 
 Wed, 12 Jun 2019 12:59:37 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f10sm1026745wrg.24.2019.06.12.12.59.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 12:59:36 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v3 06/14] pwm: meson: pass struct pwm_device to
 meson_pwm_calc()
Date: Wed, 12 Jun 2019 21:59:03 +0200
Message-Id: <20190612195911.4442-7-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
References: <20190612195911.4442-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_125939_076817_9E385576 
X-CRM114-Status: GOOD (  13.97  )
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

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

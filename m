Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858223A12F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 20:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ka7hOcLa0SbJYDW3HQzA8JKEzHpHokC62eVHiAjJKBs=; b=juSvKr7UsYgM4R
	hFga0be4OOFOOo9Fe+xaRSZbUUjWeWqxMblbH1RdToSV0ONG2mwl7oLhsyjp4csr9JRPZeBv0dkPH
	g7SCeWYfgjM2rsQ6vpp3mENGPV23BQKVPOgOxFeGEkT2NHtKLQ0/gPi5qPZRxXRMS6kEaGhHN8pQH
	k1m+9LYvb9+b/TouvcfVVpOzX5lSsrbHvoXwGxEzo5LSUvbpMI0C4xMMU53gi2dmW6UtHY6RWSgWg
	pxMSCig7oz5hjlROOhiS42gRSmmRiDhhS2COxu6qk0cKOF1XI2W2bLpm79RT/ezHxlZ/+j0ev3NZ+
	Hx6TANWyARNYd6mlPRYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZfnR-0005Le-Gc; Sat, 08 Jun 2019 18:10:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZfjp-0000qU-Cw; Sat, 08 Jun 2019 18:06:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id w9so6231871wmd.1;
 Sat, 08 Jun 2019 11:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AZO7qivBo434TSsVVa4YbzWhWwMZ6z2njZ7atSZyZUE=;
 b=HYY27Tka+Zve8oOw3M3LuURDsY4EXX8qUIvDs9nN77A6hMV7RdCJiqmMLzVYd24D9J
 NZ8KEuhugImjFpMm7IKgsJss/+2YogqQ42dMk1K5h+cxpN+5BjKguyQjRRdTnj1ywhnj
 x7wWEg0obaSdlV2gdVABueOS6ybEMlzo0clHpc+g7ePBVyE6/1Z3b67B7pHgvH8+EM3Y
 EzmvgWJuyTW02VMwmV19skNhqBH+K6mAW17IGIK0PuCQZVH8UobD84u5oEt2ypzgUoE/
 g0i+CfD3HBjY9u0FgqOJDWHlfS2GqDIWKD/m/IpXYxEApSvMYhGUekx+G6x7rb+jNK6/
 7/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AZO7qivBo434TSsVVa4YbzWhWwMZ6z2njZ7atSZyZUE=;
 b=XPmm8H7uCfWRzkfmz+D6qX36HmSA93zLFTROMIf54jgrexn6vDj3M+iH/uKfdqorB1
 Qmn3hQpcIvmlh8Yt9fRJ4DWgN+7iVrEuEkhqstMJvrVh/4as8KIN51yDeWPqlX4PV5sW
 z4sHyb5MU2hJt2m9RJ7JYT1P5yXMR4OttPlUQGBJ2KUum1B95o3ppvCWCZ0RIdfmvhmh
 LSf+R7GLBU7a/aGUahCCll/Cs+mdZvj/BdW4EW/787rNNehShUq1yWsb89Nokq9khNSR
 4NZZ4kORBD2fGNjd0LEvwyS3Xe6KemUaT4NPNIlo+HOm1mc8v8XNCLDXsAmBmuc0Mm+p
 QgfQ==
X-Gm-Message-State: APjAAAV780yyIePTft84s/Qkzg2glhhw5tWwFV11sX51yN7nu8SG1VZ7
 iARxvRu0KaYdld0mEYngvXjUQrZD
X-Google-Smtp-Source: APXvYqy5gBo0+pcOVgy3Rvl4MUPwN7blfDUL7OIOL3mmZBtcEZnBu9vQTKJGfmXPerM5g/iu3ZkI5Q==
X-Received: by 2002:a1c:3b45:: with SMTP id i66mr6173542wma.48.1560017203368; 
 Sat, 08 Jun 2019 11:06:43 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA400D12EFF43FED1E981.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:d12e:ff43:fed1:e981])
 by smtp.googlemail.com with ESMTPSA id c7sm5143345wrp.57.2019.06.08.11.06.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 11:06:42 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-pwm@vger.kernel.org,
 thierry.reding@gmail.com
Subject: [PATCH v2 09/14] pwm: meson: move pwm_set_chip_data() to
 meson_pwm_request()
Date: Sat,  8 Jun 2019 20:06:21 +0200
Message-Id: <20190608180626.30589-10-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
References: <20190608180626.30589-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_110645_481254_64B9F852 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

All existing PWM drivers (except pwm-meson and two other ones) call
pwm_set_chip_data() from their pwm_ops.request() callback. Now that we
can access the struct meson_pwm_channel from struct meson_pwm we can do
the same.

Move the call to pwm_set_chip_data() to meson_pwm_request() and drop the
custom meson_pwm_add_channels(). This makes the implementation
consistent with other drivers and makes it slightly more obvious
thatpwm_get_chip_data() cannot be used from pwm_ops.get_state() (because
that's called by the PWM core before pwm_ops.request()).

No functional changes intended.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/pwm/pwm-meson.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
index ac7e188155fd..27915d6475e3 100644
--- a/drivers/pwm/pwm-meson.c
+++ b/drivers/pwm/pwm-meson.c
@@ -98,12 +98,16 @@ static inline struct meson_pwm *to_meson_pwm(struct pwm_chip *chip)
 
 static int meson_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
 {
-	struct meson_pwm_channel *channel = pwm_get_chip_data(pwm);
+	struct meson_pwm *meson = to_meson_pwm(chip);
+	struct meson_pwm_channel *channel;
 	struct device *dev = chip->dev;
 	int err;
 
-	if (!channel)
-		return -ENODEV;
+	channel = pwm_get_chip_data(pwm);
+	if (channel)
+		return 0;
+
+	channel = &meson->channels[pwm->hwpwm];
 
 	if (channel->clk_parent) {
 		err = clk_set_parent(channel->clk, channel->clk_parent);
@@ -124,7 +128,7 @@ static int meson_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
 
 	chip->ops->get_state(chip, pwm, &channel->state);
 
-	return 0;
+	return pwm_set_chip_data(pwm, channel);
 }
 
 static void meson_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
@@ -460,14 +464,6 @@ static int meson_pwm_init_channels(struct meson_pwm *meson)
 	return 0;
 }
 
-static void meson_pwm_add_channels(struct meson_pwm *meson)
-{
-	unsigned int i;
-
-	for (i = 0; i < meson->chip.npwm; i++)
-		pwm_set_chip_data(&meson->chip.pwms[i], &meson->channels[i]);
-}
-
 static int meson_pwm_probe(struct platform_device *pdev)
 {
 	struct meson_pwm *meson;
@@ -503,8 +499,6 @@ static int meson_pwm_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	meson_pwm_add_channels(meson);
-
 	platform_set_drvdata(pdev, meson);
 
 	return 0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

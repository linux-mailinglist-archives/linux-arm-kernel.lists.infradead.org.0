Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277BD554B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swp5iS8jDCZxLSbyfqfy+amq+B2qtpzHEI+Co9w8rQ0=; b=QjFAHn5LtKmWOf
	JaGV4TmzrBejvvnDixNlKzteCUyeOvekWwTAOL4eHFa3FRmiu3bzkOpR4yIwLMVIZFy0b73l4Vbus
	7ZY6+vNJe9jYV1PooPHxC4y/NY+oFb6Oj3fF75pN3DtaRgqxedBh5+/tizL91B57OceTDSCX4x9iB
	Lf8SU0sKsJq1rBUx1RIvpLMejAsIMHJHIjS716uum+rW8FkQw2TuJc0KiK38nw26Z8PL6T3Wle9Lq
	8gcB0l+yaRtQVWWypD+Je/J8Ve37ZXqqwctnjMUvkUK7jB9RIF77mbYnV1qIC3+owk1se24YISWYl
	WW4XlokGTS26oUdcSMzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoSK-00043u-7u; Tue, 25 Jun 2019 16:38:04 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPI-0001ub-L0
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:34:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id x17so18601162wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9jHnEFpHn7uzznoO3/dgHPquJFVDhGL7Sa3AB/IK/o8=;
 b=hn0sJGMrU38ycKfPEcke4oemjMf5nF19She6rrogMdb5v0F2pBQBNKFb+k/+2MJbvv
 x0AL7iJN38li9VNodfle2pG9gu9d2FJ3tvO7WCdfFllzJdndvifHLTLjRDM4aDml+Kuj
 ARXR5bllOgDLUQO3pl4c5PKCRuEuqrBRd/sgqgOD1M5Honf1Q9rxMnOT9Gtrbba1Pc6q
 WCixZR6JX0xgDU+5eMlm3aDNlNwAqfajTgyiKEnyZ2eYijvvzNfmrix4ZFYvnBzoboQW
 vWSvbCOsW9ZdQYXrDXj4UOEBCHTBJKcTLpDkXcvPZbiDAcrZsqeJshpkE3iV/v/oMDyN
 QHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9jHnEFpHn7uzznoO3/dgHPquJFVDhGL7Sa3AB/IK/o8=;
 b=aq6QeoJzug+CWUE4q8NfXvWk18rm8L5SosAk+HMG+ZU//o5cTAFV4Y689XbO/oK9pf
 lvCjpazP61S52ZhDT+9wiyvM4LjvNq49WT2d4DuYsUXVK33eNActVvB1mvtdDY9wTPS+
 3wJNs+7nG7pB0D339qzN3N2nflo+OUu6ci1ch28sOHuOtI+6s0NNhT35YzKPOntn0aJJ
 eDWX9UonTUEb75NdWmOUo83NVpNa3u5poRBVgI1XGBFDVBBH6EbS4Iwmo8hkbdW56UCu
 XfDV7KJjeq6i+iqHBfYUyNRgi8v6NP1B+MIlKBGKMjRXoACHqqxrHMZriU1sWBc/voI3
 4OgQ==
X-Gm-Message-State: APjAAAVXS4GyMuS3UXyOUoxpizbGr1J+Xkb3I7+3yNCjJk0y/E7d53pv
 HunOaSOZk4x1TZswQycOmWQIMg==
X-Google-Smtp-Source: APXvYqwy7zacb5a2dIAzBH+DNPJmE7Ud9HzGmZ8XgxvKZbiQHoYeDIvLxGo471H1Sy/xZiRyc+Eftg==
X-Received: by 2002:a5d:4fc8:: with SMTP id h8mr26465755wrw.124.1561480495518; 
 Tue, 25 Jun 2019 09:34:55 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.34.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:34:54 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 03/12] backlight: gpio: pull the non-pdata device probing code
 into probe()
Date: Tue, 25 Jun 2019 18:34:25 +0200
Message-Id: <20190625163434.13620-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
References: <20190625163434.13620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093456_702800_EF19E780 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

There's no good reason to have the generic probing code in a separate
routine. This function is short and is inlined by the compiler anyway.
Move it into probe under the pdata-specific part.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/video/backlight/gpio_backlight.c | 39 ++++++++----------------
 1 file changed, 13 insertions(+), 26 deletions(-)

diff --git a/drivers/video/backlight/gpio_backlight.c b/drivers/video/backlight/gpio_backlight.c
index 8adbc8d75097..89e10bccfd3c 100644
--- a/drivers/video/backlight/gpio_backlight.c
+++ b/drivers/video/backlight/gpio_backlight.c
@@ -54,30 +54,6 @@ static const struct backlight_ops gpio_backlight_ops = {
 	.check_fb	= gpio_backlight_check_fb,
 };
 
-static int gpio_backlight_probe_prop(struct platform_device *pdev,
-				     struct gpio_backlight *gbl)
-{
-	struct device *dev = &pdev->dev;
-	enum gpiod_flags flags;
-	int ret;
-
-	gbl->def_value = device_property_read_bool(dev, "default-on");
-	flags = gbl->def_value ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
-
-	gbl->gpiod = devm_gpiod_get(dev, NULL, flags);
-	if (IS_ERR(gbl->gpiod)) {
-		ret = PTR_ERR(gbl->gpiod);
-
-		if (ret != -EPROBE_DEFER) {
-			dev_err(dev,
-				"Error: The gpios parameter is missing or invalid.\n");
-		}
-		return ret;
-	}
-
-	return 0;
-}
-
 static int gpio_backlight_probe(struct platform_device *pdev)
 {
 	struct gpio_backlight_platform_data *pdata =
@@ -86,6 +62,7 @@ static int gpio_backlight_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct backlight_device *bl;
 	struct gpio_backlight *gbl;
+	enum gpiod_flags flags;
 	int ret;
 
 	gbl = devm_kzalloc(dev, sizeof(*gbl), GFP_KERNEL);
@@ -116,9 +93,19 @@ static int gpio_backlight_probe(struct platform_device *pdev)
 		if (!gbl->gpiod)
 			return -EINVAL;
 	} else {
-		ret = gpio_backlight_probe_prop(pdev, gbl);
-		if (ret)
+		gbl->def_value = device_property_read_bool(dev, "default-on");
+		flags = gbl->def_value ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
+
+		gbl->gpiod = devm_gpiod_get(dev, NULL, flags);
+		if (IS_ERR(gbl->gpiod)) {
+			ret = PTR_ERR(gbl->gpiod);
+
+			if (ret != -EPROBE_DEFER) {
+				dev_err(dev,
+					"Error: The gpios parameter is missing or invalid.\n");
+			}
 			return ret;
+		}
 	}
 
 	memset(&props, 0, sizeof(props));
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

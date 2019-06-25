Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98718554AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CS04Kv6mMp+GeLu0fNo/GuK0fHSTDgFqP+a+UriRYm8=; b=YzlLJtYpavy39y
	AfPp7COeFbptNQg/Fpt4GKQtq9tIcYYeLkPFKFvwVA/YSqfGd3dCs5Es44ijjei9JyZZcsWfTt1X2
	vRM4P8fnAr5bVvetZfilfVpxWhPJslm7hULSJnsUklH3roMp407Ou6FIJ3O+QfF8gpj/Tpn3WvUby
	o9i/Ty6mDCc8Kpu1kE0VEygJNboPFqHzXPI+8tP8u0+1MgwDEUdFoyKhLILtBboBJppSAA+bL0D3S
	LcT/Q9qPNwInC2Mo+cyrK7ZSMa4GFnUxxowco+GGqHUYOy6Ay+OdnGisAZTTBmp7OXh+yRe0N6icM
	D4NiBjg15LVVD9f/tHZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoRA-0003W3-Gh; Tue, 25 Jun 2019 16:36:52 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPG-0001tr-DW
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:34:55 +0000
Received: by mail-wr1-x444.google.com with SMTP id f9so18593897wre.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2ZSWbqFAdYMHZSBHSRb1jfufvzOhyuDcLok5vmyDpAk=;
 b=SJOSCbrBbZkjOqrPgnuNAn3R5vfXS6muglF3i2rYm4u0+9MfY8ZtiyCWhaoSYkXO8w
 eOFkyeVW0jcrhK2bzRVm7OVFfxNNRuPXIaA1Pc5QIbfMItUzavJ+NDMN8n9e0L9FS8p6
 tq7TTeGdzaX0136DmFa1LftA7xw+cPs//R7BxHfmQaa/vNwriSWQhE6HYmKQuFbGDxDq
 Bg5erLaGp0cgJlgeiEOIPYKLnoR9icCMSctMhsB1HZzmQqp3udL5+Sn4pNOcL9yKERsx
 Z5y5KpcxAJ9+MaE4zx8TVcaHvHGAnMEpPRGOC89hkmJe4zcmW8hColHnvm5z1nJEKHx+
 Lt5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2ZSWbqFAdYMHZSBHSRb1jfufvzOhyuDcLok5vmyDpAk=;
 b=K5QMchzzwpwCwomum306+wF4uelZHb7g/kE6pX9OKAXJTUXr+F3NrEHy9lFwXVkUNA
 WMKO+2hNM5Hl7qiBpcXTMOXvAkM5BplsXGEj1KYNmeWz9zi25RKcQJkPFVkys2bJHHbY
 0X5o+dEYUEB9nV0NDAhMTwK6il8czB6zzsu/McTcvDf2/NQMixXFYxpjVm9Sf44P//1J
 HGffbTzBGRPRv/lFVzBcfiWe/gNhCrItj+tR+0cPQGyGIDkBc14H9yypK4uScZCbW0E+
 3W7vhWkfRWlIBLA9olytyHDz0S/kkwRX8ontD8oRF4B1pdJ+s9tlKJejHhds9t6beetj
 CFoQ==
X-Gm-Message-State: APjAAAUGNyrRHif+7csKScb3uvqpAQOzkOs+S1GJ0s0X8FD8DRzmNarM
 ZBgwP5j1Uk9EtxRSUUGPrf8Efg==
X-Google-Smtp-Source: APXvYqxBEmrDBznAn14GIGVfoHIVRb3pDwaOfikmLmN/GvkdUV1EAMzyMBq7WLZPIpw1AC69xAAo+Q==
X-Received: by 2002:a05:6000:114b:: with SMTP id
 d11mr47787109wrx.167.1561480492966; 
 Tue, 25 Jun 2019 09:34:52 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.34.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:34:52 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 01/12] backlight: gpio: allow to probe non-pdata devices from
 board files
Date: Tue, 25 Jun 2019 18:34:23 +0200
Message-Id: <20190625163434.13620-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
References: <20190625163434.13620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093454_470895_CB8B6790 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Currently we can only probe devices that either use device tree or pass
platform data to probe(). Rename gpio_backlight_probe_dt() to
gpio_backlight_probe_prop() and use generic device properties instead
of OF specific helpers. Reverse the logic checking the presence of
platform data in probe(). This way we can probe devices() registered
from machine code that neither have a DT node nor use platform data.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/video/backlight/gpio_backlight.c | 24 ++++++++----------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/video/backlight/gpio_backlight.c b/drivers/video/backlight/gpio_backlight.c
index b9300f3e1ee6..654c19d3a81d 100644
--- a/drivers/video/backlight/gpio_backlight.c
+++ b/drivers/video/backlight/gpio_backlight.c
@@ -54,15 +54,14 @@ static const struct backlight_ops gpio_backlight_ops = {
 	.check_fb	= gpio_backlight_check_fb,
 };
 
-static int gpio_backlight_probe_dt(struct platform_device *pdev,
-				   struct gpio_backlight *gbl)
+static int gpio_backlight_probe_prop(struct platform_device *pdev,
+				     struct gpio_backlight *gbl)
 {
 	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
 	enum gpiod_flags flags;
 	int ret;
 
-	gbl->def_value = of_property_read_bool(np, "default-on");
+	gbl->def_value = device_property_read_bool(dev, "default-on");
 	flags = gbl->def_value ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
 
 	gbl->gpiod = devm_gpiod_get(dev, NULL, flags);
@@ -86,26 +85,15 @@ static int gpio_backlight_probe(struct platform_device *pdev)
 	struct backlight_properties props;
 	struct backlight_device *bl;
 	struct gpio_backlight *gbl;
-	struct device_node *np = pdev->dev.of_node;
 	int ret;
 
-	if (!pdata && !np) {
-		dev_err(&pdev->dev,
-			"failed to find platform data or device tree node.\n");
-		return -ENODEV;
-	}
-
 	gbl = devm_kzalloc(&pdev->dev, sizeof(*gbl), GFP_KERNEL);
 	if (gbl == NULL)
 		return -ENOMEM;
 
 	gbl->dev = &pdev->dev;
 
-	if (np) {
-		ret = gpio_backlight_probe_dt(pdev, gbl);
-		if (ret)
-			return ret;
-	} else {
+	if (pdata) {
 		/*
 		 * Legacy platform data GPIO retrieveal. Do not expand
 		 * the use of this code path, currently only used by one
@@ -126,6 +114,10 @@ static int gpio_backlight_probe(struct platform_device *pdev)
 		gbl->gpiod = gpio_to_desc(pdata->gpio);
 		if (!gbl->gpiod)
 			return -EINVAL;
+	} else {
+		ret = gpio_backlight_probe_prop(pdev, gbl);
+		if (ret)
+			return ret;
 	}
 
 	memset(&props, 0, sizeof(props));
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

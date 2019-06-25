Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECA2554AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7jmnPdPTOwJ8rgpI+bzLUXCkBXKn/X1MkNmf8X+ALWE=; b=elgrS129sz+w9R
	SPPpoLXeU8GtwCD4dCQaR3RM2Nb9MgGl56YxkqpRs/mxA0t1QR4/QAt6kX5oB6RfPayzGXUczeU/S
	3J1RvLFhNv0LM77zko+oRNgrrmXp0tWFcz/z6Dmj+qp//Kd1eoX5vdFQiYw67tHR2JAL+nJFS+XSX
	KIfuysL/a+j9ySSEmerOC9t/3GrU75fkWeNyY3WynoUqBpRkcOcM0oOvmvlM7x5R0gBFjYUK1IOBY
	ZY/HYFwm+BH/kAbki2uvvYoxF3q/WbX5RUBQ4Gmq+dsXJOXobeFQvKptVK8S2ZtHkM6w0x836vmzK
	lxA7Mu8N5mLjUZQHeIMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoRq-0003q4-H0; Tue, 25 Jun 2019 16:37:34 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPH-0001uI-JB
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:34:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id p11so18613161wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8iezztZquUE7VOJu2VvhRUb2IfrZ8cIwgoI4gm0DrkM=;
 b=rgxXlRAaV6xZXnZFHal/gjCfi7ThDBTYi4zQlerr90dKuypsYo0mb+p33lydeL4eKn
 2Cg8TDpnk1TQyWRPgE7auXmAdnsrV7xq0CkHwBoS14Z8stdjg5sO1sgEu4CXM0obe8GT
 HtDtgDT/yuWJ/6FSenaU3s3kQIgEWAOjiCDWUhU8Pfhoj3WCpQG547MgKdHM7a0QE2ml
 oMYIbV67RK1VeetSwtj5yG0Sb0iifz24h/amsfYK1tn89rbBjiyJy6Dq7HfJ6k7U1O2X
 NjWCVLOG8O2PA2zG7LLOXV9LLX5jw93wHA6dgCylVM+dJAI+sj7QPNmJX6O7U4MR7nGO
 8GcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8iezztZquUE7VOJu2VvhRUb2IfrZ8cIwgoI4gm0DrkM=;
 b=kxKH5FebSLBKu4Q+QyRc5v0DuihS1El9vdrj7mJXrim0koKtKnKfe0hJgcaOj06M7J
 lr1aDOxnIKez++flyVyf8+BqQO8E4RAGFDqHAcpy+9JdE/t7nHstcx+ALNk+3zjVG9Yf
 I2Q40Kv0GAth53QmmPi/Po9RwCobwucl/eKqleKggzVUqTq9//PccFBI6MluaKT3b4Dt
 zMea71HrC0OKn8UhkMssq1Dji6GT5ZaLiD3ACFOUgfJTprYCPYI8CaJhS70PXicOYp3m
 w97b6I/oo4+Mswcj/41kcKolO6Gr7EcRo3abC6tbb/33ZRET0TZrwpYb8q1V6RvjdUwo
 J+rg==
X-Gm-Message-State: APjAAAXIM49En4C7iDBZ4XnPcPFzpcHE3ZcC4L4/BINABHraFjIgTJwJ
 kr3Fmz8tbDhzpfwAjyUgT0YMLA==
X-Google-Smtp-Source: APXvYqzDDJRCAp4r9gihTWEjB9YUiMxhVdwQYB5zhog7hsqmsGPPt4gRXpZAivYIHwx1NdMTVydW+w==
X-Received: by 2002:adf:81c8:: with SMTP id 66mr110996508wra.261.1561480494146; 
 Tue, 25 Jun 2019 09:34:54 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.34.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:34:53 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 02/12] backlight: gpio: use a helper variable for &pdev->dev
Date: Tue, 25 Jun 2019 18:34:24 +0200
Message-Id: <20190625163434.13620-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
References: <20190625163434.13620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093455_629386_267F86C2 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Instead of dereferencing pdev each time, use a helper variable for
the associated device pointer.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/video/backlight/gpio_backlight.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/video/backlight/gpio_backlight.c b/drivers/video/backlight/gpio_backlight.c
index 654c19d3a81d..8adbc8d75097 100644
--- a/drivers/video/backlight/gpio_backlight.c
+++ b/drivers/video/backlight/gpio_backlight.c
@@ -83,15 +83,16 @@ static int gpio_backlight_probe(struct platform_device *pdev)
 	struct gpio_backlight_platform_data *pdata =
 		dev_get_platdata(&pdev->dev);
 	struct backlight_properties props;
+	struct device *dev = &pdev->dev;
 	struct backlight_device *bl;
 	struct gpio_backlight *gbl;
 	int ret;
 
-	gbl = devm_kzalloc(&pdev->dev, sizeof(*gbl), GFP_KERNEL);
+	gbl = devm_kzalloc(dev, sizeof(*gbl), GFP_KERNEL);
 	if (gbl == NULL)
 		return -ENOMEM;
 
-	gbl->dev = &pdev->dev;
+	gbl->dev = dev;
 
 	if (pdata) {
 		/*
@@ -108,7 +109,7 @@ static int gpio_backlight_probe(struct platform_device *pdev)
 		ret = devm_gpio_request_one(gbl->dev, pdata->gpio, flags,
 					    pdata ? pdata->name : "backlight");
 		if (ret < 0) {
-			dev_err(&pdev->dev, "unable to request GPIO\n");
+			dev_err(dev, "unable to request GPIO\n");
 			return ret;
 		}
 		gbl->gpiod = gpio_to_desc(pdata->gpio);
@@ -123,11 +124,10 @@ static int gpio_backlight_probe(struct platform_device *pdev)
 	memset(&props, 0, sizeof(props));
 	props.type = BACKLIGHT_RAW;
 	props.max_brightness = 1;
-	bl = devm_backlight_device_register(&pdev->dev, dev_name(&pdev->dev),
-					&pdev->dev, gbl, &gpio_backlight_ops,
-					&props);
+	bl = devm_backlight_device_register(dev, dev_name(dev), dev, gbl,
+					    &gpio_backlight_ops, &props);
 	if (IS_ERR(bl)) {
-		dev_err(&pdev->dev, "failed to register backlight\n");
+		dev_err(dev, "failed to register backlight\n");
 		return PTR_ERR(bl);
 	}
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E97151F0D1F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 18:31:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mDSd/tZ2VKF6gAFeUi3N+xA2TEujoiSiIh2rihcZcC8=; b=Nv8fWB7O7uiS87IzZ35k6RZrfv
	mNnDiIA9r2xVKn1HcZi2z4bVF45Q7zlxWJFUFFg9ERCKWuHALSperoQgH0UTB3mGuGUtVf08BhJrl
	1o46+2uFnXAjdCsTeiP53OPDd50kFW/vMfnILdnIf5l0zURmLkpn7hFhkj/qyPU6wgHdWZYQEs8xG
	4cA1U3/iAsq9VP7XEvis/OeQSvwjg66axZpLgiJfoFcy4xd4NQXTdgN0RclyAqS2eV05KNo7G9A08
	eixaSmjJ8HNOdFEUNWjaOWFxreANs0AFq+hzeBV70z44hBS/bR6Id9naGNMhEX4o54Zbd1GcYLe9c
	0Q7OJDEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhyD9-0007du-C4; Sun, 07 Jun 2020 16:31:51 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhyCC-0006uH-BE
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 16:30:54 +0000
Received: by mail-lj1-x242.google.com with SMTP id c17so17462450lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 09:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cA0rxP4uX8r0J5dTgAkrFDikDC5/+iYQEYBegCVDUX8=;
 b=ASfk4mbizWj5L7lpupyxEymymo/ZPFF5KNCbDMYF6Et1/uJaP800Mfx0DoYPGapzb3
 hv+HiIqeR8Jmk4vCo83x/+lGNoqGIhXXzuS7cqSUerNNvoyN+x+fG13WxaDOjJb1P7zY
 Hq00PryzQhJZ5KYXKmAzcJzfwntzokREZ+XswmdY6VcJHEszaNWj2fnnA1Pab+RGwv8b
 hQxJ7lsbe7/eI/X8X/Vo44h3opbHOiIy5xfS29Vu0NQ7uivA+7aD2UN+EMTD/qlmCC+U
 ml+/P1OFSTs+7tzsHv2dzm7qCRG1MvFt5+YpubFXKPhydNo/YV+sVDIvl7zNr8I2E3iJ
 M3vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cA0rxP4uX8r0J5dTgAkrFDikDC5/+iYQEYBegCVDUX8=;
 b=Pw5jNIJSKGaoFMQCuPCzmWpDXjlX1bD5qgq7F83cSOlctYA3JMnuRafsFTPAw+58Yt
 mVg3zFnB9vJpDztUwwLh/trVynCTy+CLGF7ZRdDY++5n0gg9u1/bH+L4/ksrMUHDOqZF
 tx+Si3zKV67+eQYFbfrPMYiFwOZayy8UWwTiGFuKs8sfNv23uObRrWBjqWsgvUEnKh2A
 Ob3eanKwE0uuxuIW+ttPtQc3Sne28XtXIJKyGK7BJdsLCLYpcN2LRI4XzP9Nh6ctD+2Z
 Tj84GsY2FeBizrauefhIZD3m4oEJ7dTH+DsFnR38Dnfb6rir9+zPLHVcJ7KJ/NngM6i2
 t0kg==
X-Gm-Message-State: AOAM533hYqGq78NOIaAss/eK61YJqiouwDJV9G4V8r1c8TnGiHWppntD
 /3u5XFUGd5+yrOjS9YA3cNVfjg==
X-Google-Smtp-Source: ABdhPJyjLyOxmRLxqc1IiL0wIQLnC2WD0apwurqLMvIwHjY92oYJs7K6WG3OlmNqcFSoR6JrCrCN7w==
X-Received: by 2002:a2e:1412:: with SMTP id u18mr9629998ljd.309.1591547450613; 
 Sun, 07 Jun 2020 09:30:50 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id l7sm1726511ljj.55.2020.06.07.09.30.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 09:30:50 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v4 03/10] media: i2c: imx290: fix reset GPIO pin handling
Date: Sun,  7 Jun 2020 19:30:18 +0300
Message-Id: <20200607163025.8409-4-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200607163025.8409-1-andrey.konovalov@linaro.org>
References: <20200607163025.8409-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_093052_452158_441B0668 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Andrey Konovalov <andrey.konovalov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to https://www.kernel.org/doc/Documentation/gpio/consumer.txt,

- all of the gpiod_set_value_xxx() functions operate with the *logical* value.
So in imx290_power_on() the reset signal should be cleared/de-asserted with
gpiod_set_value_cansleep(imx290->rst_gpio, 0), and in imx290_power_off() the
value of 1 must be used to apply/assert the reset to the sensor. In the device
tree the reset pin is described as GPIO_ACTIVE_LOW, and gpiod_set_value_xxx()
functions take this into account,

- when devm_gpiod_get_optional() is called with GPIOD_ASIS, the GPIO is not
initialized, and the direction must be set later; using a GPIO
without setting its direction first is illegal and will result in undefined
behavior. Fix this by using GPIOD_OUT_HIGH instead of GPIOD_ASIS (this asserts
the reset signal to the sensor initially).

Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/media/i2c/imx290.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
index d0322f9a8856..7b1de1f0c8b7 100644
--- a/drivers/media/i2c/imx290.c
+++ b/drivers/media/i2c/imx290.c
@@ -628,7 +628,7 @@ static int imx290_power_on(struct device *dev)
 	}
 
 	usleep_range(1, 2);
-	gpiod_set_value_cansleep(imx290->rst_gpio, 1);
+	gpiod_set_value_cansleep(imx290->rst_gpio, 0);
 	usleep_range(30000, 31000);
 
 	return 0;
@@ -641,7 +641,7 @@ static int imx290_power_off(struct device *dev)
 	struct imx290 *imx290 = to_imx290(sd);
 
 	clk_disable_unprepare(imx290->xclk);
-	gpiod_set_value_cansleep(imx290->rst_gpio, 0);
+	gpiod_set_value_cansleep(imx290->rst_gpio, 1);
 	regulator_bulk_disable(IMX290_NUM_SUPPLIES, imx290->supplies);
 
 	return 0;
@@ -757,7 +757,8 @@ static int imx290_probe(struct i2c_client *client)
 		goto free_err;
 	}
 
-	imx290->rst_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_ASIS);
+	imx290->rst_gpio = devm_gpiod_get_optional(dev, "reset",
+						   GPIOD_OUT_HIGH);
 	if (IS_ERR(imx290->rst_gpio)) {
 		dev_err(dev, "Cannot get reset gpio\n");
 		ret = PTR_ERR(imx290->rst_gpio);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

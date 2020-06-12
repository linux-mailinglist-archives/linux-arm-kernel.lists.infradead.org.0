Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40281F7909
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TEEOY7nL1J/+4Ch9/kis5G6WvlQL/cAnIRormVjkcgU=; b=ZCSRO2oIamJQPVeEkRx8GkpWyM
	IEDtSLDqQftrbwAZfV++T9lSeoSG86npIpwtXxM9kL5u4kfquqKnOThYGpqjJmTDb0hj0p4hN8aq7
	QnNtg2m1X2h3tPdJIWcFsnKMOVvHQBwNyJ5kdq6uhaNEU4Vmtf4OuCnPyQN9EQifvGHQjyCgnaWZO
	fzVn3QHe5D95m5NkrQ1XRMbk8Ofsd4q2a0hdlGidfuKJcAQqg2RbSqcC/CpB7ysNvOl11WIKWFZ4Q
	Jknim+PHtueWk+4iEK809S+U0Z8M8QvXw86B7bf8EWomqfE+QtEQ2+mFBdLKRc1ToIX3+hD/ZGbjL
	5I1uXpeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjk9a-0005Rh-4E; Fri, 12 Jun 2020 13:55:30 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjk8X-0002Zr-Hl
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:54:27 +0000
Received: by mail-lj1-x243.google.com with SMTP id a9so11180961ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/H496xjB4IoQDnldRUbAyOpNgcDxVGf3TevH7sGSKHU=;
 b=fftOCneXKWTkNFqnZ6vGP1HVU13C17BsBFNoDXh5Ok1/67dFsKQ3z5di7POtXubw1X
 qlbOVqUZCcLe7150o8uALCOI+GHdIdDkph46GH8a6gGmUsBFfNQRc0EA/IrxrtY+Ards
 P3Zx6N/lWGwn5NZ7yZnj8ZnvK1e1cdM821f+nofLbzK43YYcCrdkWW4DHFfmbnPJgx6R
 E04UlhA46fqziCP/tPjlKNpD5MopSfB6RNaJyTd+8pzGI86sJ1ghxwWr/31VVdRSgUxc
 3xS2MZ3HvtM9IqRMTnhhzhDwl6HHff+R5DI9ocwxKMJg8zVZVRQhXjQTSvTFzTuVgRW+
 veEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/H496xjB4IoQDnldRUbAyOpNgcDxVGf3TevH7sGSKHU=;
 b=YuXgOFAs+vw/Hb7OXus23t8/CKVOKluG80FGS6vJ+yRJnDuf6vonqWLWUQFXcDOqiB
 7N4+za3zrbmayBhtWSTF2OyIte3JGKZGSFzBXCq2O3HumjdNB4RZIFJtIwrLxdF9d9Cs
 rZBPGckcXobJVxBy/tKsxzMbigeczdceIwIQLKi4pPhqfiH7jyS+mLis8WENHMNs/NOO
 E1GmfvdwpfSw2loRBBBNO2ARGQz24K5Qs5EsCWYuqzjkKiqsX3wDVh/i6tvmcLRzVvDP
 cDCAfIbXbkySQb5OfC5r025GcsxPLGtuba9teD9Dj6O4zHXWEHuNpvvBo/C4kPI3tJhn
 f2aA==
X-Gm-Message-State: AOAM530752JKD0ckC6QDwz3S1WPzp9If/9HDZfQvEVITfCBGyh1oRtoq
 53HPf3/riI52f5QGxEKNRY9uZQ==
X-Google-Smtp-Source: ABdhPJwlb3/wxuty/SZIBTpkct0LjnKA/4EXzC4V4+HBA4UnXLSXwnV+whcUVTZ+zjjx2+jBHZo2LQ==
X-Received: by 2002:a2e:3003:: with SMTP id w3mr6744730ljw.11.1591970063574;
 Fri, 12 Jun 2020 06:54:23 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id a1sm2414415lfi.36.2020.06.12.06.54.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:54:22 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v5 03/10] media: i2c: imx290: fix reset GPIO pin handling
Date: Fri, 12 Jun 2020 16:53:48 +0300
Message-Id: <20200612135355.30286-4-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200612135355.30286-1-andrey.konovalov@linaro.org>
References: <20200612135355.30286-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_065425_596290_F0714D7C 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

- all of the gpiod_set_value_xxx() functions operate with the *logical*
value. So in imx290_power_on() the reset signal should be cleared
(de-asserted) with gpiod_set_value_cansleep(imx290->rst_gpio, 0), and in
imx290_power_off() the value of 1 must be used to apply/assert the reset
to the sensor. In the device tree the reset pin is described as
GPIO_ACTIVE_LOW, and gpiod_set_value_xxx() functions take this into
account,

- when devm_gpiod_get_optional() is called with GPIOD_ASIS, the GPIO is
not initialized, and the direction must be set later; using a GPIO
without setting its direction first is illegal and will result in undefined
behavior. Fix this by using GPIOD_OUT_HIGH instead of GPIOD_ASIS (this
asserts the reset signal to the sensor initially).

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

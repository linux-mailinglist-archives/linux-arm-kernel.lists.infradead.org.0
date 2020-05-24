Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9811E028C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 21:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mDSd/tZ2VKF6gAFeUi3N+xA2TEujoiSiIh2rihcZcC8=; b=McYd4bHfRTD+0TaD8T8itN6KSg
	LGO9SBvnUnDWxT5vzoPJ2BcWet1/fOrOGCboU+KOb5xA/xJmrdkwXa/ymWGFlpbUBTCebk+cwbvLY
	J0XoiGv2AOzimeOyAP+V3381YdhgZ604ddi+nlfiiBe8Fxx2/ynGjXRz+0qLscSExeqvMCaf2cCVP
	FknBa0zXbmZPe5eznPGrLaz+P7kEDGA1AP5zDIhblrIosXA+vwkNYs2rKOB6DA/ggQc9QnzigqoXH
	ob/nNnrCI1+dQGkKY1/DFCVkZsYxjTI7ow532FflyGA/4exaAq3ioCDZ4RbYrof8Siuy/dq1jG0aV
	/mUVYnOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcwJw-0001GP-SL; Sun, 24 May 2020 19:30:05 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcwFj-0006J0-V4
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 19:25:45 +0000
Received: by mail-lf1-x143.google.com with SMTP id u16so7612566lfl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 12:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cA0rxP4uX8r0J5dTgAkrFDikDC5/+iYQEYBegCVDUX8=;
 b=bXZUmt4Q97nbHMur0+wddhj6NHibdNegK7WYEBHb3FXq/cXll1GDGCXmku19BFj5Nv
 AcWpGD1X351yyzB/DqYBq+8mBFu/9qUShZ/hNApIK/U6hgV0yj+5azJO1hbH2k+eGM17
 C8D0jT6d+q8N1+XN67HUr0foWANMbTV/C3yJElLdOIEhjVmNbzaYplzsxINkXKKjSrZC
 +FTaMiqnHoM1cU8EyhRdDSF+Gcfv/daIYVmennTR/D/Bhr5GLZPL5fL+mbRsoYEG4GiI
 arQy37b7UuNXnMroZHstTyInswcMLqrzyvk4ECcYUGfayRJd+UoigQu2fAxTY6HqVbmu
 caqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cA0rxP4uX8r0J5dTgAkrFDikDC5/+iYQEYBegCVDUX8=;
 b=aAdtwtRpEVEFV+ZixJvQ3O45rKtBMSAj7Gjc7VQEr1kDnHTFKpvhgIElS8YCvPywPZ
 HzuSQTeD9iKaeiguis2qfTeGnueI5Dg8+XqYqs2+5PA85tfXAs3YK22CxsS+P4+6KfI0
 a+1AzqPndeYBQhkpTci2NIcqQHnbmqLE2m+rwVdV54cJRemZxKs8Q9+kQpShUL6Qp4tX
 CHQGvcayBzF9KhVd/nuyrdFlGWfYI9LwEWbryKUWUM09l9VJEbnF8MIfn11w7H3G8VWo
 8qHJMpjMfVFzghbRpZBj1PNsuqD830mzFzZifumTVtvc4rWUvfZN0kqpZN7dDTi71wsJ
 RoTQ==
X-Gm-Message-State: AOAM533dt6OHdJ2ueypgktiHIrFe9TFyBGvd7a7bAwm4xEgsWqYA9poe
 q0RyZ4cTFI8DLMfUfoFc7lUW1A==
X-Google-Smtp-Source: ABdhPJx0C0ywxASkq6HnfsazUJ4P8BtoLgib8fabRATVLYdBjqfrmIXTOinQ/nOYpw6Gk5h9DHeF+w==
X-Received: by 2002:ac2:4143:: with SMTP id c3mr12541402lfi.131.1590348341928; 
 Sun, 24 May 2020 12:25:41 -0700 (PDT)
Received: from localhost.localdomain (37-144-159-139.broadband.corbina.ru.
 [37.144.159.139])
 by smtp.googlemail.com with ESMTPSA id v10sm3878137lja.23.2020.05.24.12.25.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 12:25:41 -0700 (PDT)
From: Andrey Konovalov <andrey.konovalov@linaro.org>
To: mchehab@kernel.org, sakari.ailus@iki.fi, manivannan.sadhasivam@linaro.org
Subject: [PATCH v3 03/10] media: i2c: imx290: fix reset GPIO pin handling
Date: Sun, 24 May 2020 22:24:58 +0300
Message-Id: <20200524192505.20682-4-andrey.konovalov@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200524192505.20682-1-andrey.konovalov@linaro.org>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_122544_019202_71686CC2 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

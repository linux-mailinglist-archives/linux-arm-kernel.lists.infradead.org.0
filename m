Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 347BA10FE6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:09:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XNdml+7StOJFPn+fy5U/fO+HuXAqotg4WA70nFIbZJ4=; b=ZvzQsaXWji0m9S
	+rmNp3X/lvXIDke4/3RX64gfZmTDUkU35NXTHPTk+RXHxz3zZZFhp7QYs3M495p+pcY740N8KPivL
	0Mo15UKILMYAiketBw1jiE9Zs+DJSaJhFSzV4/5NU8FMlceqZ3xub6gM4J93eZAEjrnicTIz9QQFH
	U2L87OrQiG84An4QhVC3owYiIp9btMQzS597HKvfhdy04ph/ppnZMG6IwIzs8QNKgu7lyVuCD2Ysl
	nwwwBpEe+51Zhlg96w2QFicbcvPrHQWskPR3/IVmAbHphWV0WpiHTAXGlLhjcdoMLZDOU69IiFLEo
	dKUne4OzvEa8vVL7Exqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic7vl-0000o0-8Y; Tue, 03 Dec 2019 13:09:29 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic7ve-0000nd-B6
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:09:23 +0000
Received: by mail-lj1-x241.google.com with SMTP id z17so3682895ljk.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4UEsXQl3I/T+z770nwn4lhgtMw/PAlF7NFfwFxnxhdI=;
 b=J6+nzx7Liq6IkE2ZbYv9iUn6DDeNpvUfozrfr15HUHXmbq90IDh1BO0EgBG0+CCwLu
 sD0B+Rdq6AcqNxWVMibtCf1cFinsGwEofsyVGx+DgG4qAqXhy4Q/78XoJalr6884ADHb
 HGFn/8qrVrXA7FHavmw0heG9YpcSDT32SBqrUhYQhx19OO72p+DVt17Ar7wq/RowfQzz
 BFAhttnz2BLXMPa8qdlp3pgOufM+IQB6TsMhO7fWxhRCAXMc6woWk2C6oFQYH5WsIuKj
 lqC82sbD7neLMb8H64IWa/tCoueus+MQxZl49kqQi12uL1FVn/bcMILg+kCAM/OJZLd7
 ancA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4UEsXQl3I/T+z770nwn4lhgtMw/PAlF7NFfwFxnxhdI=;
 b=Jh8KVqnxYhe6vUEvZxKCqFEgbHzSSgZclAjaG+MQmCW1aVco4jkOTCUDqHzSPH7Hfl
 Srp1kTcbVzoPp+6odlCFG/L9TW9xs9Tlyd+Wq2hq8QhVdcA6PtSCkht7QoN6/50gAsjR
 AgwKenhwtFJeBzrP6iGUaKn1YmEw8k7alhcClk/AV2U5CDoCpvmHdSBkPzrWFEiiY3Ut
 V5WhVSyfidw5+ZqeLpEeEZhzBSV2YtI9KYCZQV6agPRonEQkFR/y4jbqbRUYKkxHbi7y
 EgX5EATWtDL4JCeR9QIu+/rzK1V33gM7yxRpR5OPl4UtcycYewzwP0aBogHU5Cx9rXME
 Bfrw==
X-Gm-Message-State: APjAAAUGoMx2CtOCZl2QK9U7Ahulayy2t5UTZdr2y/VUUun3ut5kJlwH
 wwlp+Me3mSujH3sXY1zjXWNXEp3HKbE=
X-Google-Smtp-Source: APXvYqyE8bvn/4nxbTp2IzkuXev0B626VRgW8HBr3BcVrnwalF9TVnvlTRTVtQ+yRAn39dTihi+AQQ==
X-Received: by 2002:a2e:85d5:: with SMTP id h21mr2515391ljj.243.1575378559953; 
 Tue, 03 Dec 2019 05:09:19 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id s22sm1344688ljm.41.2019.12.03.05.09.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 05:09:18 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH] drm/tilcdc: Switch to using GPIO descriptors
Date: Tue,  3 Dec 2019 14:09:16 +0100
Message-Id: <20191203130916.155779-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_050922_391891_9F24CED2 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 linux-arm-kernel@lists.infradead.org, David Lechner <david@lechnology.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TI LCDC picks a GPIO line from the device tree to use
for DPMS power on/off. We can switch this to use a GPIO
descriptor pretty easily. Make sure to request the GPIO
"as is" so that the DPMS state that we start (boot) in is
preserved.

Cc: Jyri Sarha <jsarha@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc: David Lechner <david@lechnology.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/tilcdc/tilcdc_tfp410.c | 30 ++++++++++++--------------
 1 file changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c b/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
index 530edb3b51cc..41cd9a7c4316 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_tfp410.c
@@ -4,9 +4,8 @@
  * Author: Rob Clark <robdclark@gmail.com>
  */
 
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/mod_devicetable.h>
-#include <linux/of_gpio.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 
@@ -21,7 +20,7 @@
 struct tfp410_module {
 	struct tilcdc_module base;
 	struct i2c_adapter *i2c;
-	int gpio;
+	struct gpio_desc *power_gpiod;
 };
 #define to_tfp410_module(x) container_of(x, struct tfp410_module, base)
 
@@ -58,10 +57,10 @@ static void tfp410_encoder_dpms(struct drm_encoder *encoder, int mode)
 
 	if (mode == DRM_MODE_DPMS_ON) {
 		DBG("Power on");
-		gpio_direction_output(tfp410_encoder->mod->gpio, 1);
+		gpiod_direction_output(tfp410_encoder->mod->power_gpiod, 1);
 	} else {
 		DBG("Power off");
-		gpio_direction_output(tfp410_encoder->mod->gpio, 0);
+		gpiod_direction_output(tfp410_encoder->mod->power_gpiod, 0);
 	}
 
 	tfp410_encoder->dpms = mode;
@@ -318,17 +317,17 @@ static int tfp410_probe(struct platform_device *pdev)
 
 	of_node_put(i2c_node);
 
-	tfp410_mod->gpio = of_get_named_gpio_flags(node, "powerdn-gpio",
-			0, NULL);
-	if (tfp410_mod->gpio < 0) {
-		dev_warn(&pdev->dev, "No power down GPIO\n");
-	} else {
-		ret = gpio_request(tfp410_mod->gpio, "DVI_PDn");
-		if (ret) {
-			dev_err(&pdev->dev, "could not get DVI_PDn gpio\n");
-			goto fail_adapter;
-		}
+	tfp410_mod->power_gpiod = devm_gpiod_get_optional(&pdev->dev,
+							  "powerdn",
+							  GPIOD_ASIS);
+	if (IS_ERR(tfp410_mod->power_gpiod)) {
+		dev_err(&pdev->dev, "could not get DVI_PDn gpio\n");
+		goto fail_adapter;
 	}
+	if (!tfp410_mod->power_gpiod)
+		dev_warn(&pdev->dev, "No power down GPIO\n");
+	else
+		gpiod_set_consumer_name(tfp410_mod->power_gpiod, "DVI_PDn");
 
 	return 0;
 
@@ -346,7 +345,6 @@ static int tfp410_remove(struct platform_device *pdev)
 	struct tfp410_module *tfp410_mod = to_tfp410_module(mod);
 
 	i2c_put_adapter(tfp410_mod->i2c);
-	gpio_free(tfp410_mod->gpio);
 
 	tilcdc_module_cleanup(mod);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

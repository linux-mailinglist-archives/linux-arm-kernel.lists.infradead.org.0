Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0345D5AB49
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 15:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMoSb4MHihf0POo7p/Q4aBZDQF8uVu7UuHq1Yhu7z14=; b=B2OfZn4EpWxCrH
	1PNXZCsEqIAfD1cVnJz9joJarHQdibIOri8uwOgUCifkLW+pa7KrwnaGqD4Spb52PbLZ+gh4EOJsJ
	6tVR9OYQk0IxjEKe/VaoLxDJoC7SEwYexqZM0yKtPgWTQmpMgeZuVitm2tihJTdZej6Y2R+P7DXLR
	21zqRICPNh8WPk1KcOLxhABPwFU1Z/SOsEKdre2H+dRxS7hTG8Ve3IrSGHcpXoXfsj1Qb5foAoTQC
	4pTqZ9p1Y3LN6lIKa2yMi1K8Mt17BTtJlb39DAAUWoR5A+/ef73pCbAgkJOh/5eFyqhQKc1SI0hCc
	w587RTxoWMkD1cWuWiVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhD0j-0005jH-Gx; Sat, 29 Jun 2019 13:03:21 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCzX-0004oz-RE
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 13:02:11 +0000
Received: by mail-lf1-x142.google.com with SMTP id x144so5756232lfa.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 06:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bx02aBFfPRkMhKf40AS7qTzkWiU4y0/D0eEn128oWGQ=;
 b=HMJwmwK/OCpaYq/6HMbWpbRyQvbyRKO/I7HCpmQY60NBAA5MO22b/vxuEsNGmfSrQj
 fcBHaXH3QcaXBjlvZSLYDun/FB+rgDgBWoWalJEfqrFx7clYu5kbrkkBKrjVtZmMKlq8
 WC2B7LrGWBnyBnj7Drd4FPlumQkqf0Z7A5isRfAnVg65WJG+CsFsYRjJAAhuTNd2aVA7
 66LsDK1Qqc8JeCr6xmMPRc8LdBJYZN0YWR33m6YI2cjRuLFu5zKVU7UmtADnzzy1MTh6
 dKR1eH+dSyDQqLMlaA0pDm4XeS752CpzhfPClsdCtntV/lFNVKMEnL93gCLgI+lOthEm
 bLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bx02aBFfPRkMhKf40AS7qTzkWiU4y0/D0eEn128oWGQ=;
 b=pWLHBPd0c7PyQz5a2gTkNWSKeIo8rS9gP3TZOf5anzQ4Lk1Ey/ma5X5/65zHtNbdRL
 vbRX87AgOpvYdhdYMEFrU9neGYfH9YR+HKuUgcwrbael6mfZu6xcmJbAXOmqnU7s77cQ
 t1ksZw7sm8w8cZQ9SxNJHFdCLvaadO/9R1lIWYJ6+ACSkY6bGKrOFk0AzzvF/lrHjkLx
 /fai3QpkQDwMM5aWGEMzJthfadUXvAkKd6lIXFZJ3c5HqHXILu63ii+3TYqjhTQogHWf
 Zqmdu7A1947dj3FxsRwUbDgvcaXDtZHNUEO8WmTFtGy9kC0R8xvgMDRieNIJzNFKayXW
 DRJg==
X-Gm-Message-State: APjAAAWDiKkePhsSxHfmmia9e9uBHfWhsvjrdahctwqwOxxg5ck8J9u2
 sYV3OKVwpikAJGK2Y86pQ2Tt3w==
X-Google-Smtp-Source: APXvYqxTzIJVpddQHAmhA5Fk+i0uPHGclgtAxJMzxPUjiAnCGI/TQWmRQfr+sLmOyHXNV5a5lmrefQ==
X-Received: by 2002:a19:cc45:: with SMTP id c66mr7446160lfg.171.1561813326303; 
 Sat, 29 Jun 2019 06:02:06 -0700 (PDT)
Received: from localhost.localdomain
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id v2sm1354500lfi.52.2019.06.29.06.02.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 06:02:05 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 6/7] RFT: drm/msm/hdmi: Bring up HDMI connector OFF
Date: Sat, 29 Jun 2019 14:59:32 +0200
Message-Id: <20190629125933.679-6-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190629125933.679-1-linus.walleij@linaro.org>
References: <20190629125933.679-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_060207_989001_F5B8C1D0 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 freedreno@lists.freedesktop.org, Rob Clark <robdclark@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is elaborate code in the HDMI connector handling to
leave the connector in the state it was at power-on and
only touch the GPIOs when the connector .enable() and
.disable() callbacks are called.

I don't think this is what we normally want, initialize
the connector as OFF (possibly saving power?) using the
appropriate GPIO descriptor flags. It will still be
switched on/off in the enable()/disable() connector
callback as before, but we can drop some strange surplus
code.

Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: linux-arm-msm@vger.kernel.org
Cc: freedreno@lists.freedesktop.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c           | 19 ++++++++++++-----
 drivers/gpu/drm/msm/hdmi/hdmi_connector.c | 25 ++++++-----------------
 2 files changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index c8e8268c76e2..7d87f8821d2f 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -563,13 +563,22 @@ static int msm_hdmi_bind(struct device *dev, struct device *master, void *data)
 	for (i = 0; i < HDMI_MAX_NUM_GPIO; i++) {
 		const char *name = msm_hdmi_gpio_pdata[i].name;
 		struct gpio_desc *gpiod;
+		enum gpiod_flags flags;
 
 		/*
-		 * We are fetching the GPIO lines "as is" since the connector
-		 * code is enabling and disabling the lines. Until that point
-		 * the power-on default value will be kept.
+		 * Notice the inverse set up here: we initialize the connector
+		 * to OFF state.
 		 */
-		gpiod = devm_gpiod_get_optional(dev, name, GPIOD_ASIS);
+		if (msm_hdmi_gpio_pdata[i].output) {
+			if (msm_hdmi_gpio_pdata[i].value)
+				flags = GPIOD_OUT_LOW;
+			else
+				flags = GPIOD_OUT_HIGH;
+		} else {
+			flags = GPIOD_IN;
+		}
+
+		gpiod = devm_gpiod_get_optional(dev, name, flags);
 		/* This will catch e.g. -PROBE_DEFER */
 		if (IS_ERR(gpiod))
 			return PTR_ERR(gpiod);
@@ -583,7 +592,7 @@ static int msm_hdmi_bind(struct device *dev, struct device *master, void *data)
 			 * in the upstream bindings.
 			 */
 			if (sscanf(name, "qcom,hdmi-tx-%s", name3))
-				gpiod = devm_gpiod_get_optional(dev, name3, GPIOD_ASIS);
+				gpiod = devm_gpiod_get_optional(dev, name3, flags);
 			if (IS_ERR(gpiod))
 				return PTR_ERR(gpiod);
 			if (!gpiod)
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_connector.c b/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
index c4e9f6d7960f..89c64cc85027 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
@@ -86,16 +86,9 @@ static int gpio_config(struct hdmi *hdmi, bool on)
 		for (i = 0; i < HDMI_MAX_NUM_GPIO; i++) {
 			struct hdmi_gpio_data gpio = config->gpios[i];
 
-			if (gpio.gpiod) {
-				if (gpio.output) {
-					gpiod_direction_output(gpio.gpiod,
-							       gpio.value);
-				} else {
-					gpiod_direction_input(gpio.gpiod);
-					gpiod_set_value_cansleep(gpio.gpiod,
-								 gpio.value);
-				}
-			}
+			/* The value indicates the value for turning things on */
+			if (gpio.gpiod)
+				gpiod_set_value_cansleep(gpio.gpiod, gpio.value);
 		}
 
 		DBG("gpio on");
@@ -103,16 +96,10 @@ static int gpio_config(struct hdmi *hdmi, bool on)
 		for (i = 0; i < HDMI_MAX_NUM_GPIO; i++) {
 			struct hdmi_gpio_data gpio = config->gpios[i];
 
-			if (!gpio.gpiod)
-				continue;
-
-			if (gpio.output) {
-				int value = gpio.value ? 0 : 1;
-
-				gpiod_set_value_cansleep(gpio.gpiod, value);
-			}
+			/* The inverse value turns stuff off */
+			if (gpio.gpiod && gpio.output)
+				gpiod_set_value_cansleep(gpio.gpiod, !gpio.value);
 		};
-
 		DBG("gpio off");
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

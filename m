Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C07C15AB48
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 15:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iap4V/UXrxRRRtD3evNchYJ3GEP0qSg/kWopBgbMkUk=; b=M1szTnd/pVIt18
	KBgPzOdSlrkXQkw6W01qsRo3yrBwcCIQ8Ak5JM7BjkJh8h0ebsM8vghHq0F7QWcwpcjWRIAg1pL9i
	QisARjAvg3/JgDKXQmsdEuTFPI5Dc69FjIqCYr1HFwgZ1AgSu3nXdkv/ZMzfkOngyyZlTUX7qnzYJ
	JvoShj8I2V8o1YoFtEPs1LjlhQkZIX59ojM9L6mc8DOv8N7loH8M1iC67b+VENjNkMidnBd3M0O+b
	MeZ3Gg3SxgQ/bErSpijtpldhEGbMuX7ZFV1iJWvGTyOf/ZfVC/HPJirWfLoS6o1jA945f91NNbPUy
	G4fmcKT4aFf1x0k3t1ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhD0a-0005Xn-NQ; Sat, 29 Jun 2019 13:03:12 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCzV-0004ln-Km
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 13:02:08 +0000
Received: by mail-lf1-x141.google.com with SMTP id a25so5773841lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 06:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2KRTAU6ehPX/xpH0HKMaZdgcL0pE06VvF+Cz0lSkdGM=;
 b=oIll79elm1tF0VCcLp+Ng7l/OtHRjW3+0tBcilR4GYUeAnu3R6/Tedhi0bc9XsRg6T
 +qRPVUxXAmDbf3sj21K2PQ3L7OjFaGPFZIMphP/X/UfJfX+2WL59aqU6pJOg2OssIe8x
 3piXFJldqvugqPHWGtZv/T1hV7YJQUruoE+3Pj5dJeN4Ae1/hZP6n0ZesOEa/5MS9Mzi
 qzOKI21XULgKL/ldq3TNUGorYUQ34j0w6zB94iDk/jKaqce80x2goGU/wAlbsamJwz+R
 28p9Mw/Ie9Bd2PrC0yCh1J/VeWnbNfZtT22ymuou/9SV2PvPo1k7TGBExHXNTzbRRVml
 txtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2KRTAU6ehPX/xpH0HKMaZdgcL0pE06VvF+Cz0lSkdGM=;
 b=lEaIRKIR/DBxldPYyZBLZ+97GZU0bLh1qgNSiKRd20WJ7zq1GzzSmcflBvq0//TRNi
 F93manYT9Nfdm6ax/f6GSK0+ui586B0WXnWD1Utr8P2854AuEaqQ7BqKTZqiH1eTh/HQ
 fdHyYHWOL1lD3l5Nat2cvcgr+2cC7xekJHhIkWro6308CVvwEMQTeribvLBZsRdR3Wz0
 AqoODmkkpM49R0Vndi/paKExe1rGLQkbN1IhEkgYu9AIq/aln2/RnTMdK+qpNE1SEGyQ
 X5i0U8IhD4iwjbOzdupDiyJbK6SHplsvEfV2tPAvj59G61a5mvQFUTH6SYaP/7BzukyY
 BlBA==
X-Gm-Message-State: APjAAAUKuJoMonksZzlSByeYZeDXa+BFzcNKb1jGBpFUcIVnQ5mst+Nc
 zM75IzRD1be1wAB7dX5tvPJwQw==
X-Google-Smtp-Source: APXvYqyisZIfrxWe3N5Szh1GWTfKSxX3a3LffxrfYVO394S3qG3CuHcrkb/6yrrtWRGEB7o6fAik4A==
X-Received: by 2002:a05:6512:30a:: with SMTP id
 t10mr7348435lfp.22.1561813323803; 
 Sat, 29 Jun 2019 06:02:03 -0700 (PDT)
Received: from localhost.localdomain
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id v2sm1354500lfi.52.2019.06.29.06.02.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 06:02:02 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 5/7] drm/msm/hdmi: Convert to use GPIO descriptors
Date: Sat, 29 Jun 2019 14:59:31 +0200
Message-Id: <20190629125933.679-5-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190629125933.679-1-linus.walleij@linaro.org>
References: <20190629125933.679-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_060205_798153_1CB09721 
X-CRM114-Status: GOOD (  23.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

This switches the MSM HDMI code to use GPIO descriptors.
Normally we would fetch the GPIOs from the device with the
flags GPIOD_IN or GPIOD_OUT_[LOW|HIGH] to set up the lines
immediately, but since the code seems eager to actively
drive the lines high/low when turning HDMI on and off, we
just fetch the GPIOs as-is and keep the code explicitly
driving them.

The old code would try legacy bindings (GPIOs without any
"-gpios" suffix) but this has been moved to the gpiolib
as a quirk by the previous patch.

Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: linux-arm-msm@vger.kernel.org
Cc: freedreno@lists.freedesktop.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c           | 66 +++++++++++------------
 drivers/gpu/drm/msm/hdmi/hdmi.h           |  4 +-
 drivers/gpu/drm/msm/hdmi/hdmi_connector.c | 42 +++++----------
 3 files changed, 45 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index e247d6942a49..c8e8268c76e2 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -436,38 +436,6 @@ static const struct {
 	{ "qcom,hdmi-tx-mux-lpm", true, 1, "HDMI_MUX_LPM" },
 };
 
-static int msm_hdmi_get_gpio(struct device_node *of_node, const char *name)
-{
-	int gpio;
-
-	/* try with the gpio names as in the table (downstream bindings) */
-	gpio = of_get_named_gpio(of_node, name, 0);
-	if (gpio < 0) {
-		char name2[32];
-
-		/* try with the gpio names as in the upstream bindings */
-		snprintf(name2, sizeof(name2), "%s-gpios", name);
-		gpio = of_get_named_gpio(of_node, name2, 0);
-		if (gpio < 0) {
-			char name3[32];
-
-			/*
-			 * try again after stripping out the "qcom,hdmi-tx"
-			 * prefix. This is mainly to match "hpd-gpios" used
-			 * in the upstream bindings
-			 */
-			if (sscanf(name2, "qcom,hdmi-tx-%s", name3))
-				gpio = of_get_named_gpio(of_node, name3, 0);
-		}
-
-		if (gpio < 0) {
-			DBG("failed to get gpio: %s (%d)", name, gpio);
-			gpio = -1;
-		}
-	}
-	return gpio;
-}
-
 /*
  * HDMI audio codec callbacks
  */
@@ -593,11 +561,39 @@ static int msm_hdmi_bind(struct device *dev, struct device *master, void *data)
 	hdmi_cfg->qfprom_mmio_name = "qfprom_physical";
 
 	for (i = 0; i < HDMI_MAX_NUM_GPIO; i++) {
-		hdmi_cfg->gpios[i].num = msm_hdmi_get_gpio(of_node,
-						msm_hdmi_gpio_pdata[i].name);
+		const char *name = msm_hdmi_gpio_pdata[i].name;
+		struct gpio_desc *gpiod;
+
+		/*
+		 * We are fetching the GPIO lines "as is" since the connector
+		 * code is enabling and disabling the lines. Until that point
+		 * the power-on default value will be kept.
+		 */
+		gpiod = devm_gpiod_get_optional(dev, name, GPIOD_ASIS);
+		/* This will catch e.g. -PROBE_DEFER */
+		if (IS_ERR(gpiod))
+			return PTR_ERR(gpiod);
+		if (!gpiod) {
+			/* Try a second time, stripping down the name */
+			char name3[32];
+
+			/*
+			 * Try again after stripping out the "qcom,hdmi-tx"
+			 * prefix. This is mainly to match "hpd-gpios" used
+			 * in the upstream bindings.
+			 */
+			if (sscanf(name, "qcom,hdmi-tx-%s", name3))
+				gpiod = devm_gpiod_get_optional(dev, name3, GPIOD_ASIS);
+			if (IS_ERR(gpiod))
+				return PTR_ERR(gpiod);
+			if (!gpiod)
+				DBG("failed to get gpio: %s", name);
+		}
+		hdmi_cfg->gpios[i].gpiod = gpiod;
+		if (gpiod)
+			gpiod_set_consumer_name(gpiod, msm_hdmi_gpio_pdata[i].label);
 		hdmi_cfg->gpios[i].output = msm_hdmi_gpio_pdata[i].output;
 		hdmi_cfg->gpios[i].value = msm_hdmi_gpio_pdata[i].value;
-		hdmi_cfg->gpios[i].label = msm_hdmi_gpio_pdata[i].label;
 	}
 
 	dev->platform_data = hdmi_cfg;
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.h b/drivers/gpu/drm/msm/hdmi/hdmi.h
index 5c5df6ab2a57..3ef956e8de71 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.h
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.h
@@ -22,6 +22,7 @@
 #include <linux/clk.h>
 #include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
+#include <linux/gpio/consumer.h>
 #include <linux/hdmi.h>
 
 #include "msm_drv.h"
@@ -33,10 +34,9 @@ struct hdmi_phy;
 struct hdmi_platform_config;
 
 struct hdmi_gpio_data {
-	int num;
+	struct gpio_desc *gpiod;
 	bool output;
 	int value;
-	const char *label;
 };
 
 struct hdmi_audio {
diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_connector.c b/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
index a6eeab2c4dc3..c4e9f6d7960f 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
@@ -15,7 +15,7 @@
  * this program.  If not, see <http://www.gnu.org/licenses/>.
  */
 
-#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/pinctrl/consumer.h>
 
 #include "msm_kms.h"
@@ -79,30 +79,21 @@ static void msm_hdmi_phy_reset(struct hdmi *hdmi)
 
 static int gpio_config(struct hdmi *hdmi, bool on)
 {
-	struct device *dev = &hdmi->pdev->dev;
 	const struct hdmi_platform_config *config = hdmi->config;
-	int ret, i;
+	int i;
 
 	if (on) {
 		for (i = 0; i < HDMI_MAX_NUM_GPIO; i++) {
 			struct hdmi_gpio_data gpio = config->gpios[i];
 
-			if (gpio.num != -1) {
-				ret = gpio_request(gpio.num, gpio.label);
-				if (ret) {
-					DRM_DEV_ERROR(dev,
-						"'%s'(%d) gpio_request failed: %d\n",
-						gpio.label, gpio.num, ret);
-					goto err;
-				}
-
+			if (gpio.gpiod) {
 				if (gpio.output) {
-					gpio_direction_output(gpio.num,
-							      gpio.value);
+					gpiod_direction_output(gpio.gpiod,
+							       gpio.value);
 				} else {
-					gpio_direction_input(gpio.num);
-					gpio_set_value_cansleep(gpio.num,
-								gpio.value);
+					gpiod_direction_input(gpio.gpiod);
+					gpiod_set_value_cansleep(gpio.gpiod,
+								 gpio.value);
 				}
 			}
 		}
@@ -112,29 +103,20 @@ static int gpio_config(struct hdmi *hdmi, bool on)
 		for (i = 0; i < HDMI_MAX_NUM_GPIO; i++) {
 			struct hdmi_gpio_data gpio = config->gpios[i];
 
-			if (gpio.num == -1)
+			if (!gpio.gpiod)
 				continue;
 
 			if (gpio.output) {
 				int value = gpio.value ? 0 : 1;
 
-				gpio_set_value_cansleep(gpio.num, value);
+				gpiod_set_value_cansleep(gpio.gpiod, value);
 			}
-
-			gpio_free(gpio.num);
 		};
 
 		DBG("gpio off");
 	}
 
 	return 0;
-err:
-	while (i--) {
-		if (config->gpios[i].num != -1)
-			gpio_free(config->gpios[i].num);
-	}
-
-	return ret;
 }
 
 static void enable_hpd_clocks(struct hdmi *hdmi, bool enable)
@@ -322,7 +304,7 @@ static enum drm_connector_status detect_gpio(struct hdmi *hdmi)
 	const struct hdmi_platform_config *config = hdmi->config;
 	struct hdmi_gpio_data hpd_gpio = config->gpios[HPD_GPIO_INDEX];
 
-	return gpio_get_value(hpd_gpio.num) ?
+	return gpiod_get_value(hpd_gpio.gpiod) ?
 			connector_status_connected :
 			connector_status_disconnected;
 }
@@ -341,7 +323,7 @@ static enum drm_connector_status hdmi_connector_detect(
 	 * some platforms may not have hpd gpio. Rely only on the status
 	 * provided by REG_HDMI_HPD_INT_STATUS in this case.
 	 */
-	if (hpd_gpio.num == -1)
+	if (!hpd_gpio.gpiod)
 		return detect_reg(hdmi);
 
 	do {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0248C114E48
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 10:43:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6VjA3H7cO3B7p/HBHyTJt6iicN2KBcN3PlY8NG2fRo8=; b=qfPXfcL/BckDV0
	Y/ofa5hpgWXmkoW55hSrd/R//zclCASr1zJQywixmBmAvdNn9il9C197CVDlzqm8d4V5W1YjQ5kbO
	uBPlkSVAZ1ip+LrOcv0Y0Vk1ivrF8WZuVsh1qCpFH5c1M7rfeRE79qx0RVHXoi8svIIZ5pbbXqwpi
	eJqcN7J6WQ0xyKX8xBYtARoy0xMidK22yYFrWWKvbJeaVdcWK2CiUbuikDcs9+j+4sS+7/CFGIjGx
	3IiFKQ18F2KhybkBrVoNn/7JBzjeqiSs9ZM+rQct9eVPeNCY2XyWkkow1b+Ei4DF3Rehu8R4mWyQc
	nqW6OhGU/imgalbaI9IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idA8s-00034L-Is; Fri, 06 Dec 2019 09:43:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idA8j-00033u-6D
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 09:43:11 +0000
Received: by mail-lj1-x242.google.com with SMTP id m6so6996924ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 01:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SE4RenSlT5DUFqtRLib1fZomOEprcHnoGm71WhlZESc=;
 b=RtClRhVsZMheMJd44Typ8ci8MBVI9/BfIQyShw8fpGiafyjLBuhwl3gSwiOIkz2pbE
 qBPGKsO9KDVDOe3xZXQJTpxqfvkpwx8hsqICckZXcTn33zBP2Dx2BaXyRShv+rWCIXcz
 sxUlufMz2qMhz4HnhZ7Z0EY8yzx0hRAHoNhky+3fJKFewbbZjWXftp6PophGVrwbjYCC
 C4QXOyceiK8HfHO63LEmcfLw5af0G/oB+nx+c+aVKqWmbIShNf3PuweVYYx9z+7l3ewB
 g006suRt3qZ2IYjhsNq9dj7SJu87MRiwoYvkCB8HMX/mrzrIX06vzACFzg+MagMuM6tF
 KEnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SE4RenSlT5DUFqtRLib1fZomOEprcHnoGm71WhlZESc=;
 b=imVV0NM5fLqNnkD/A8LT5joxzQcAuYqqIl/HHlthwnvOZkzRYkBgaQJuSVLA1L2W6K
 H8annH9jqQe2ALY33pCR2fjrLXeuTN3WEYb0MgWuB2xy0SvTGOU3QMkTvdv3pRt05Ql+
 OAx/Sp0Szx9DQ067rzSI5LsP+KsOk49VdmXA/gGVFoSu0OFMkmjYni8SaJjZXgRekUmT
 wtfT5sKFR8nc/fProPuxHqOJOqK+7X0olYr8r4enTtTac8kCkc9xma2HGcdS1mTCGWbq
 quVu62t3RQdPDVBJaQTejuO0sPfyC9uvWAHJfzvJqgjdXmV9CUk1EX7zVMkD9gSnVHCu
 58DA==
X-Gm-Message-State: APjAAAUsUjEmw9d0dfmizzc+sjSJu+QmcY34JXlczuCcpwp82s4V/gi9
 ouQJEWhNT8qhxHwoU1nqTRZGsA==
X-Google-Smtp-Source: APXvYqzjfW2qCrQ+XZq48PSYDX5BG4LzBMTfYzqey3/S3aFh6GDpK6i4/1e/ErBKM2xby/Z+srSESw==
X-Received: by 2002:a2e:995a:: with SMTP id r26mr8209424ljj.78.1575625385161; 
 Fri, 06 Dec 2019 01:43:05 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d11sm6152215lfj.3.2019.12.06.01.43.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 01:43:03 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>
Subject: [PATCH] drm/gma500: Pass GPIO for Intel MID using descriptors
Date: Fri,  6 Dec 2019 10:43:01 +0100
Message-Id: <20191206094301.76368-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_014309_363794_7B1919ED 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Stone <daniels@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Linus Walleij <linus.walleij@linaro.org>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GMA500 driver is using the legacy GPIO API to fetch
three optional display control GPIO lines from the SFI
description used by the Medfield platform.

Switch this over to use GPIO descriptors and delete the
custom platform data.

We create three new static locals in the tc35876x bridge
code but it is hardly any worse than the I2C client static
local already there: I tried first to move it to the DRM
driver state container but there are workarounds for
probe order in the code so I just stayed off it, as the
result is unpredictable.

People wanting to do a more throrugh and proper cleanup
of the GMA500 driver can work on top of this, I can't
solve much more since I don't have access to the hardware,
I can only attempt to tidy up my GPIO corner.

Cc: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
Cc: Daniel Stone <daniels@collabora.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
If someone can test this on the target platform I'd be
happy.
---
 .../intel-mid/device_libs/platform_tc35876x.c | 26 ++++--
 drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c    | 88 +++++++------------
 include/linux/platform_data/tc35876x.h        | 11 ---
 3 files changed, 51 insertions(+), 74 deletions(-)
 delete mode 100644 include/linux/platform_data/tc35876x.h

diff --git a/arch/x86/platform/intel-mid/device_libs/platform_tc35876x.c b/arch/x86/platform/intel-mid/device_libs/platform_tc35876x.c
index 44d1f884c3d3..139738bbdd36 100644
--- a/arch/x86/platform/intel-mid/device_libs/platform_tc35876x.c
+++ b/arch/x86/platform/intel-mid/device_libs/platform_tc35876x.c
@@ -6,21 +6,31 @@
  * Author: Sathyanarayanan Kuppuswamy <sathyanarayanan.kuppuswamy@intel.com>
  */
 
-#include <linux/gpio.h>
-#include <linux/platform_data/tc35876x.h>
+#include <linux/gpio/machine.h>
 #include <asm/intel-mid.h>
 
+static struct gpiod_lookup_table tc35876x_gpio_table = {
+	.dev_id	= "i2c_disp_brig",
+	.table	= {
+		GPIO_LOOKUP("0000:00:0c.0", -1, "bridge-reset", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("0000:00:0c.0", -1, "bl-en", GPIO_ACTIVE_HIGH),
+		GPIO_LOOKUP("0000:00:0c.0", -1, "vadd", GPIO_ACTIVE_HIGH),
+		{ },
+	},
+};
+
 /*tc35876x DSI_LVDS bridge chip and panel platform data*/
 static void *tc35876x_platform_data(void *data)
 {
-	static struct tc35876x_platform_data pdata;
+	struct gpiod_lookup_table *table = &tc35876x_gpio_table;
+	struct gpiod_lookup *lookup = table->table;
 
-	/* gpio pins set to -1 will not be used by the driver */
-	pdata.gpio_bridge_reset = get_gpio_by_name("LCMB_RXEN");
-	pdata.gpio_panel_bl_en = get_gpio_by_name("6S6P_BL_EN");
-	pdata.gpio_panel_vadd = get_gpio_by_name("EN_VREG_LCD_V3P3");
+	lookup[0].chip_hwnum = get_gpio_by_name("LCMB_RXEN");
+	lookup[1].chip_hwnum = get_gpio_by_name("6S6P_BL_EN");
+	lookup[2].chip_hwnum = get_gpio_by_name("EN_VREG_LCD_V3P3");
+	gpiod_add_lookup_table(table);
 
-	return &pdata;
+	return NULL;
 }
 
 static const struct devs_id tc35876x_dev_id __initconst = {
diff --git a/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c b/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
index 7de3ce637c7f..9e8224456ea2 100644
--- a/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
+++ b/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
@@ -25,7 +25,7 @@
 #include <linux/delay.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/platform_data/tc35876x.h>
+#include <linux/gpio/consumer.h>
 
 #include <asm/intel_scu_ipc.h>
 
@@ -36,6 +36,11 @@
 
 static struct i2c_client *tc35876x_client;
 static struct i2c_client *cmi_lcd_i2c_client;
+/* Panel GPIOs */
+static struct gpio_desc *bridge_reset;
+static struct gpio_desc *bridge_bl_enable;
+static struct gpio_desc *backlight_voltage;
+
 
 #define FLD_MASK(start, end)	(((1 << ((start) - (end) + 1)) - 1) << (end))
 #define FLD_VAL(val, start, end) (((val) << (end)) & FLD_MASK(start, end))
@@ -316,27 +321,23 @@ static int tc35876x_regr(struct i2c_client *client, u16 reg, u32 *value)
 
 void tc35876x_set_bridge_reset_state(struct drm_device *dev, int state)
 {
-	struct tc35876x_platform_data *pdata;
-
 	if (WARN(!tc35876x_client, "%s called before probe", __func__))
 		return;
 
 	dev_dbg(&tc35876x_client->dev, "%s: state %d\n", __func__, state);
 
-	pdata = dev_get_platdata(&tc35876x_client->dev);
-
-	if (pdata->gpio_bridge_reset == -1)
+	if (!bridge_reset)
 		return;
 
 	if (state) {
-		gpio_set_value_cansleep(pdata->gpio_bridge_reset, 0);
+		gpiod_set_value_cansleep(bridge_reset, 0);
 		mdelay(10);
 	} else {
 		/* Pull MIPI Bridge reset pin to Low */
-		gpio_set_value_cansleep(pdata->gpio_bridge_reset, 0);
+		gpiod_set_value_cansleep(bridge_reset, 0);
 		mdelay(20);
 		/* Pull MIPI Bridge reset pin to High */
-		gpio_set_value_cansleep(pdata->gpio_bridge_reset, 1);
+		gpiod_set_value_cansleep(bridge_reset, 1);
 		mdelay(40);
 	}
 }
@@ -510,25 +511,20 @@ void tc35876x_brightness_control(struct drm_device *dev, int level)
 
 void tc35876x_toshiba_bridge_panel_off(struct drm_device *dev)
 {
-	struct tc35876x_platform_data *pdata;
-
 	if (WARN(!tc35876x_client, "%s called before probe", __func__))
 		return;
 
 	dev_dbg(&tc35876x_client->dev, "%s\n", __func__);
 
-	pdata = dev_get_platdata(&tc35876x_client->dev);
-
-	if (pdata->gpio_panel_bl_en != -1)
-		gpio_set_value_cansleep(pdata->gpio_panel_bl_en, 0);
+	if (bridge_bl_enable)
+		gpiod_set_value_cansleep(bridge_bl_enable, 0);
 
-	if (pdata->gpio_panel_vadd != -1)
-		gpio_set_value_cansleep(pdata->gpio_panel_vadd, 0);
+	if (backlight_voltage)
+		gpiod_set_value_cansleep(backlight_voltage, 0);
 }
 
 void tc35876x_toshiba_bridge_panel_on(struct drm_device *dev)
 {
-	struct tc35876x_platform_data *pdata;
 	struct drm_psb_private *dev_priv = dev->dev_private;
 
 	if (WARN(!tc35876x_client, "%s called before probe", __func__))
@@ -536,10 +532,8 @@ void tc35876x_toshiba_bridge_panel_on(struct drm_device *dev)
 
 	dev_dbg(&tc35876x_client->dev, "%s\n", __func__);
 
-	pdata = dev_get_platdata(&tc35876x_client->dev);
-
-	if (pdata->gpio_panel_vadd != -1) {
-		gpio_set_value_cansleep(pdata->gpio_panel_vadd, 1);
+	if (backlight_voltage) {
+		gpiod_set_value_cansleep(backlight_voltage, 1);
 		msleep(260);
 	}
 
@@ -571,8 +565,8 @@ void tc35876x_toshiba_bridge_panel_on(struct drm_device *dev)
 				"i2c write failed (%d)\n", ret);
 	}
 
-	if (pdata->gpio_panel_bl_en != -1)
-		gpio_set_value_cansleep(pdata->gpio_panel_bl_en, 1);
+	if (bridge_bl_enable)
+		gpiod_set_value_cansleep(bridge_bl_enable, 1);
 
 	tc35876x_brightness_control(dev, dev_priv->brightness_adjusted);
 }
@@ -635,8 +629,6 @@ static int tc35876x_get_panel_info(struct drm_device *dev, int pipe,
 static int tc35876x_bridge_probe(struct i2c_client *client,
 				const struct i2c_device_id *id)
 {
-	struct tc35876x_platform_data *pdata;
-
 	dev_info(&client->dev, "%s\n", __func__);
 
 	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
@@ -645,26 +637,23 @@ static int tc35876x_bridge_probe(struct i2c_client *client,
 		return -ENODEV;
 	}
 
-	pdata = dev_get_platdata(&client->dev);
-	if (!pdata) {
-		dev_err(&client->dev, "%s: no platform data\n", __func__);
-		return -ENODEV;
-	}
+	bridge_reset = devm_gpiod_get_optional(&client->dev, "bridge-reset", GPIOD_OUT_LOW);
+	if (IS_ERR(bridge_reset))
+		return PTR_ERR(bridge_reset);
+	if (bridge_reset)
+		gpiod_set_consumer_name(bridge_reset, "tc35876x bridge reset");
 
-	if (pdata->gpio_bridge_reset != -1) {
-		gpio_request(pdata->gpio_bridge_reset, "tc35876x bridge reset");
-		gpio_direction_output(pdata->gpio_bridge_reset, 0);
-	}
-
-	if (pdata->gpio_panel_bl_en != -1) {
-		gpio_request(pdata->gpio_panel_bl_en, "tc35876x panel bl en");
-		gpio_direction_output(pdata->gpio_panel_bl_en, 0);
-	}
+	bridge_bl_enable = devm_gpiod_get_optional(&client->dev, "bl-en", GPIOD_OUT_LOW);
+	if (IS_ERR(bridge_bl_enable))
+		return PTR_ERR(bridge_bl_enable);
+	if (bridge_bl_enable)
+		gpiod_set_consumer_name(bridge_bl_enable, "tc35876x panel bl en");
 
-	if (pdata->gpio_panel_vadd != -1) {
-		gpio_request(pdata->gpio_panel_vadd, "tc35876x panel vadd");
-		gpio_direction_output(pdata->gpio_panel_vadd, 0);
-	}
+	backlight_voltage = devm_gpiod_get_optional(&client->dev, "vadd", GPIOD_OUT_LOW);
+	if (IS_ERR(backlight_voltage))
+		return PTR_ERR(backlight_voltage);
+	if (backlight_voltage)
+		gpiod_set_consumer_name(backlight_voltage, "tc35876x panel vadd");
 
 	tc35876x_client = client;
 
@@ -673,19 +662,8 @@ static int tc35876x_bridge_probe(struct i2c_client *client,
 
 static int tc35876x_bridge_remove(struct i2c_client *client)
 {
-	struct tc35876x_platform_data *pdata = dev_get_platdata(&client->dev);
-
 	dev_dbg(&client->dev, "%s\n", __func__);
 
-	if (pdata->gpio_bridge_reset != -1)
-		gpio_free(pdata->gpio_bridge_reset);
-
-	if (pdata->gpio_panel_bl_en != -1)
-		gpio_free(pdata->gpio_panel_bl_en);
-
-	if (pdata->gpio_panel_vadd != -1)
-		gpio_free(pdata->gpio_panel_vadd);
-
 	tc35876x_client = NULL;
 
 	return 0;
diff --git a/include/linux/platform_data/tc35876x.h b/include/linux/platform_data/tc35876x.h
deleted file mode 100644
index cd6a51c71e7e..000000000000
--- a/include/linux/platform_data/tc35876x.h
+++ /dev/null
@@ -1,11 +0,0 @@
-
-#ifndef _TC35876X_H
-#define _TC35876X_H
-
-struct tc35876x_platform_data {
-	int gpio_bridge_reset;
-	int gpio_panel_bl_en;
-	int gpio_panel_vadd;
-};
-
-#endif /* _TC35876X_H */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

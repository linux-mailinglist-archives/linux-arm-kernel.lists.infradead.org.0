Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6DC1999E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQWMwjQOiNWa7rGXw9MauooljaG1J+93XH/kzsWwi+A=; b=kGInP0AbmRL7mo
	ApumOwrkdLUtfunflY72X4jRUI8YFD7thLIfziZNoaD9H8bMagF/k7FIT9hi40gEW7Hb1Xdk3wKwh
	rKCTq1mKaiP9BmTNrPLVc99qhfBAFyjgAWL28GG18ftN6jl1CgBCVwV184CtWvL7X4ilq742q5oHd
	cl5Mjb3Q6PLUihqFta+kgZJ3w9ZSHDvx5E43Nl6+dPuVUNRm/JWm3A9hovpQns7cxNnCqxmqcCJGC
	H9WpvGe/HnMfbWeIdVD/FeX6GjQl6mAPre6EIvZKyF7S1GrRWe0h4cYHOjPWXmVy7Uve+8qq+xX09
	8ThUIwHnIHBRJhHsgY3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJIxA-0002xw-ID; Tue, 31 Mar 2020 15:37:24 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIws-0002ur-1a
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:37:08 +0000
Received: by mail-ed1-x536.google.com with SMTP id w26so25645745edu.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e6k2skJDLCk/6R85RlAC8LE2ozPsKXL9vuB7dqx9b4k=;
 b=R5+7LH+5OhjEmiuxDK1xvPwr5eqEJhKRqYsKiwiU2RJyGONerwsgdKgqAPVL2klJSH
 m5xrsru6Ay3O034EcB1DqBY6HnthDgJ+bxCVulT9YGjeSWBH77bErtM5C/zw97YWt+9Q
 Rcf2ii2Rb/36unHyNpnudy2Br9zwDn7zPsm6c0p1jV7JhnIo5TWb0DZM3+dUmVp16TNo
 rsP8EoQS5aY2it/IMgS4OFr4ypq4MzcWBV6sJoVb02UOHTAVTQxd99NA23258lnmx7kb
 TChR9jCgHHn5YlCaNiqQBownhymffaZwtkecIEGI7YrVEhhSKxAOUq/Ljwtx/nwu3Yll
 CXDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e6k2skJDLCk/6R85RlAC8LE2ozPsKXL9vuB7dqx9b4k=;
 b=RbB7MuoewoDgX7Rm1P8m2IGR/AO7NFiyaGGTo1MQou/pO9QoPO6spvAAjvexc7WHG7
 M+kiyyKMd4vlJ2OgTLXekwM36yrCuiMURZyDLGQo6mGtNJbexWjm9r9gJRcqwY693TbY
 VwETz6cTB/hteAhf3cOxJVrpTGSyNUkyNQN+UHs8oB4LK6zZJeHUjzT7KorcFO233Qjp
 Pt/Oj0KKITP+Lxq0bSURALcbFNiVScRqN/MSBZ/PFWKtXScV8+JJBrDQMGbzIAv8lfTb
 QDwloKbb/qKVxKKmRwFbvJdOsy6BbQp41aWu5BzCdqAd6ehOZB8N7RMO5FxpSKS+oEvf
 yUFg==
X-Gm-Message-State: ANhLgQ355yUf48b+65QgVsAtfWlF1/FIu2/XHac3t9VZTG+TEXCg5gAu
 sKqs3ca/umau20iv81XaiJInx3c8SVcQ7Q==
X-Google-Smtp-Source: ADFU+vvg0PJC91SPJkAHyVuBXAhmLkjzMTQYeE7TLhNXB9vwZnmDGUsmw2eFW9I7HKaZjOm7BAe/0w==
X-Received: by 2002:adf:edcf:: with SMTP id v15mr20152459wro.309.1585661638508; 
 Tue, 31 Mar 2020 06:33:58 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id 61sm28623081wrn.82.2020.03.31.06.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 06:33:57 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Fabio Estevam <festevam@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Tomasz Figa <tfiga@chromium.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/3] media: ov8856: Add devicetree support
Date: Tue, 31 Mar 2020 15:33:45 +0200
Message-Id: <20200331133346.372517-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200331133346.372517-1-robert.foss@linaro.org>
References: <20200331133346.372517-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_083706_112057_8769E9C7 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:536 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree match table, and enable ov8856_probe()
to initialize power, clocks and reset pins.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---

- Changes since v2:
  * Added "struct device *dev" member to struct ov8856
  * Andy: Switch to optional version of devm_gpiod_get
  * Andy: Switch to optional version of devm_clk_get
  * Fabio: Add reset sleep period
  * Sakari: Unify defines for 19.2Mhz
  * Sakari: Remove 24Mhz clock, since it isn't needed for supported modes
  * Sakari: Replace dev_info() with dev_dbg()
  * Sakari: Switch induction variable type to unsigned
  * Sakari: Don't wait for reset_gpio when in ACPI mode
  * Sakari: Pull reset GPIO high on power on failure
  * Sakari: Add power on/off to resume/suspend
  * Sakari: Fix indentation
  * Sakari: Power off during ov8856_remove()
  * Sakari: Don't sleep during power-on in ACPI mode
  * Sakari: Switch to getting xvclk from clk_get_rate

- Changes since v1:
  * Andy & Sakari: Make XVCLK optional since to not break ACPI
  * Fabio: Change n_shutdown_gpio name to reset_gpio
  * Fabio: Invert reset_gpio due to GPIO_ACTIVE_HIGH -> GPIO_ACTIVE_LOW change
  * Fabio: Remove empty line
  * Fabio: Remove real error from devm_gpiod_get() failures
  * Sakari: ARRAY_SIZE() directly instead of through OV8856_NUM_SUPPLIES
  * Sakari: Use XVCLK rate as provided by DT

 drivers/media/i2c/ov8856.c | 141 ++++++++++++++++++++++++++++++++-----
 1 file changed, 125 insertions(+), 16 deletions(-)

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index 8655842af275..260aaf332631 100644
--- a/drivers/media/i2c/ov8856.c
+++ b/drivers/media/i2c/ov8856.c
@@ -3,10 +3,13 @@
 
 #include <asm/unaligned.h>
 #include <linux/acpi.h>
+#include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/module.h>
 #include <linux/pm_runtime.h>
+#include <linux/regulator/consumer.h>
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-device.h>
 #include <media/v4l2-fwnode.h>
@@ -18,7 +21,7 @@
 #define OV8856_LINK_FREQ_360MHZ		360000000ULL
 #define OV8856_LINK_FREQ_180MHZ		180000000ULL
 #define OV8856_SCLK			144000000ULL
-#define OV8856_MCLK			19200000
+#define OV8856_XVCLK_19_2		19200000
 #define OV8856_DATA_LANES		4
 #define OV8856_RGB_DEPTH		10
 
@@ -64,6 +67,12 @@
 
 #define to_ov8856(_sd)			container_of(_sd, struct ov8856, sd)
 
+static const char * const ov8856_supply_names[] = {
+	"dovdd",	/* Digital I/O power */
+	"avdd",		/* Analog power */
+	"dvdd",		/* Digital core power */
+};
+
 enum {
 	OV8856_LINK_FREQ_720MBPS,
 	OV8856_LINK_FREQ_360MBPS,
@@ -566,6 +575,11 @@ struct ov8856 {
 	struct media_pad pad;
 	struct v4l2_ctrl_handler ctrl_handler;
 
+	struct device		*dev;
+	struct clk		*xvclk;
+	struct gpio_desc	*reset_gpio;
+	struct regulator_bulk_data supplies[ARRAY_SIZE(ov8856_supply_names)];
+
 	/* V4L2 Controls */
 	struct v4l2_ctrl *link_freq;
 	struct v4l2_ctrl *pixel_rate;
@@ -908,6 +922,52 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
 	return ret;
 }
 
+static int __ov8856_power_on(struct ov8856 *ov8856)
+{
+	struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
+	int ret;
+
+	ret = clk_prepare_enable(ov8856->xvclk);
+	if (ret < 0) {
+		dev_err(&client->dev, "failed to enable xvclk\n");
+		return ret;
+	}
+
+	if (is_acpi_node(ov8856->dev->fwnode))
+		return 0;
+
+	if (ov8856->reset_gpio) {
+		gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
+		usleep_range(1000, 2000);
+	}
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
+				    ov8856->supplies);
+	if (ret < 0) {
+		dev_err(&client->dev, "failed to enable regulators\n");
+		goto disable_clk;
+	}
+
+	gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_LOW);
+	usleep_range(1500, 1800);
+
+	return 0;
+
+disable_clk:
+	gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
+	clk_disable_unprepare(ov8856->xvclk);
+
+	return ret;
+}
+
+static void __ov8856_power_off(struct ov8856 *ov8856)
+{
+	gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
+	regulator_bulk_disable(ARRAY_SIZE(ov8856_supply_names),
+			       ov8856->supplies);
+	clk_disable_unprepare(ov8856->xvclk);
+}
+
 static int __maybe_unused ov8856_suspend(struct device *dev)
 {
 	struct i2c_client *client = to_i2c_client(dev);
@@ -918,6 +978,7 @@ static int __maybe_unused ov8856_suspend(struct device *dev)
 	if (ov8856->streaming)
 		ov8856_stop_streaming(ov8856);
 
+	__ov8856_power_off(ov8856);
 	mutex_unlock(&ov8856->mutex);
 
 	return 0;
@@ -931,6 +992,8 @@ static int __maybe_unused ov8856_resume(struct device *dev)
 	int ret;
 
 	mutex_lock(&ov8856->mutex);
+
+	__ov8856_power_on(ov8856);
 	if (ov8856->streaming) {
 		ret = ov8856_start_streaming(ov8856);
 		if (ret) {
@@ -1092,27 +1155,52 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
 	return 0;
 }
 
-static int ov8856_check_hwcfg(struct device *dev)
+static int ov8856_get_hwcfg(struct ov8856 *ov8856)
 {
+	struct device *dev = ov8856->dev;
 	struct fwnode_handle *ep;
 	struct fwnode_handle *fwnode = dev_fwnode(dev);
 	struct v4l2_fwnode_endpoint bus_cfg = {
 		.bus_type = V4L2_MBUS_CSI2_DPHY
 	};
-	u32 mclk;
+	unsigned long xvclk_rate;
 	int ret;
 	unsigned int i, j;
 
 	if (!fwnode)
 		return -ENXIO;
 
-	ret = fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
-	if (ret)
-		return ret;
+	ov8856->xvclk = devm_clk_get_optional(dev, "xvclk");
+	if (IS_ERR(ov8856->xvclk)) {
+		dev_err(dev, "could not get xvclk clock (%ld)\n",
+			PTR_ERR(ov8856->xvclk));
+		return PTR_ERR(ov8856->xvclk);
+	}
 
-	if (mclk != OV8856_MCLK) {
-		dev_err(dev, "external clock %d is not supported", mclk);
-		return -EINVAL;
+	if (ov8856->xvclk) {
+		xvclk_rate = clk_get_rate(ov8856->xvclk);
+		if (xvclk_rate != OV8856_XVCLK_19_2) {
+			dev_err(dev, "external clock %lu is not supported",
+				xvclk_rate);
+			return -EINVAL;
+		}
+	}
+
+	ov8856->reset_gpio = devm_gpiod_get_optional(dev, "reset",
+		GPIOD_OUT_HIGH);
+	if (IS_ERR(ov8856->reset_gpio)) {
+		dev_dbg(dev, "failed to get reset-gpio\n");
+		return PTR_ERR(ov8856->reset_gpio);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(ov8856_supply_names); i++)
+		ov8856->supplies[i].supply = ov8856_supply_names[i];
+
+	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ov8856_supply_names),
+				      ov8856->supplies);
+	if (ret) {
+		dev_warn(dev, "failed to get regulators\n");
+		return ret;
 	}
 
 	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
@@ -1169,6 +1257,8 @@ static int ov8856_remove(struct i2c_client *client)
 	pm_runtime_disable(&client->dev);
 	mutex_destroy(&ov8856->mutex);
 
+	__ov8856_power_off(ov8856);
+
 	return 0;
 }
 
@@ -1177,22 +1267,31 @@ static int ov8856_probe(struct i2c_client *client)
 	struct ov8856 *ov8856;
 	int ret;
 
-	ret = ov8856_check_hwcfg(&client->dev);
+	ov8856 = devm_kzalloc(&client->dev, sizeof(*ov8856), GFP_KERNEL);
+	if (!ov8856)
+		return -ENOMEM;
+	ov8856->dev = &client->dev;
+
+	ov8856->dev = &client->dev;
+	ret = ov8856_get_hwcfg(ov8856);
 	if (ret) {
-		dev_err(&client->dev, "failed to check HW configuration: %d",
+		dev_err(&client->dev, "failed to get HW configuration: %d",
 			ret);
 		return ret;
 	}
 
-	ov8856 = devm_kzalloc(&client->dev, sizeof(*ov8856), GFP_KERNEL);
-	if (!ov8856)
-		return -ENOMEM;
-
 	v4l2_i2c_subdev_init(&ov8856->sd, client, &ov8856_subdev_ops);
+
+	ret = __ov8856_power_on(ov8856);
+	if (ret) {
+		dev_warn(&client->dev, "failed to power on\n");
+		return ret;
+	}
+
 	ret = ov8856_identify_module(ov8856);
 	if (ret) {
 		dev_err(&client->dev, "failed to find sensor: %d", ret);
-		return ret;
+		goto probe_power_off;
 	}
 
 	mutex_init(&ov8856->mutex);
@@ -1238,6 +1337,9 @@ static int ov8856_probe(struct i2c_client *client)
 	v4l2_ctrl_handler_free(ov8856->sd.ctrl_handler);
 	mutex_destroy(&ov8856->mutex);
 
+probe_power_off:
+	__ov8856_power_off(ov8856);
+
 	return ret;
 }
 
@@ -1254,11 +1356,18 @@ static const struct acpi_device_id ov8856_acpi_ids[] = {
 MODULE_DEVICE_TABLE(acpi, ov8856_acpi_ids);
 #endif
 
+static const struct of_device_id ov8856_of_match[] = {
+	{ .compatible = "ovti,ov8856" },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, ov8856_of_match);
+
 static struct i2c_driver ov8856_i2c_driver = {
 	.driver = {
 		.name = "ov8856",
 		.pm = &ov8856_pm_ops,
 		.acpi_match_table = ACPI_PTR(ov8856_acpi_ids),
+		.of_match_table = ov8856_of_match,
 	},
 	.probe_new = ov8856_probe,
 	.remove = ov8856_remove,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

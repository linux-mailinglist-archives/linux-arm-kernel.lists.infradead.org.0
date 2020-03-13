Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D5118458A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 12:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4I3pw6tli2l4HYTIKZnLuRLHe/sYKKX0Cbg+iq362U=; b=uz5Q84j2KW/+lE
	ka4Re02gNZqXMJrKVVvefeXYpreOfpABYuHyDjIB39nvbwUvmFluXIKBqUOpbQcAzLyrYTd5ZBLsj
	7luEvfdAWzHe0DhkiTFaWLFV2u1V0Qjl+kA3NeTPA7puHYpl+Y1Q3sQtKYYyVt4DgUlyEHVH+XmoG
	BKFQtODQMinncTgjpjYQImh3i3Lh305ecWHKlpecsvc00mX2V2IgWM5+ECfeQrWuWogke9MkMnA19
	GERwXCP+SfQo7cqlUBgfqjpBUS/wTieFiS7Id4yrB8WHlfGmMKlVy+9Mgtx4llDQ0qeXtUoyUO6gO
	tuBXyk3zOCg/COmLhOIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCi7x-00024R-RH; Fri, 13 Mar 2020 11:05:17 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCi6u-0001PZ-Td
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 11:04:15 +0000
Received: by mail-wm1-x329.google.com with SMTP id 25so9443520wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 04:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7yj7gQmza3O1dl8IfzXzptt6zWblAsleJR4kdEFCwBM=;
 b=cMGjOfX2oWshVuzTKHR7RoEvOlRcGzgyxtqRukdKNyktfEgSZsEuS6V3RDPa3v5U5C
 wi7M6qljaXECrvozHR+ig7l3GGo2GAGl0oHTsfDeVUmIxiDSU4Wm6XVVIseLrJuiX7s0
 N9lHp47mejEjVfMBoAlThknnf7KhKEvf1uiv/XvFwAMgpzbiX7of5xs+qxGReF+718TZ
 NdGZSY6UAEfZxdrCBZfy1W+NSPBJyFSxznI6CtTO8sUvVYIud3BWd6qKhLA0xjPNINAR
 bNn8rnSHF4zg0ZsyVAssELGxy49/+ubb2dhpHCMu6qnXux91boaGSsEZNzXrkbXY40px
 PCGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7yj7gQmza3O1dl8IfzXzptt6zWblAsleJR4kdEFCwBM=;
 b=mn/ysSSSvhzTzH5nKF2Qi4DCzPO+nTZHcipkC0LjBuriLCE1CHqONp8zJgoqnAqqXt
 BDDfwNzVmH349Atz2KsW9nLvBVDtNlClAdDYtViW/RHiz7c5iD1zhvPANo96Tnx4AXon
 F0o+g3Vj6H2oCfm5JJhuhT4VmWlZ8KLSbQWB2OiWzyOgsu4uG0XCDnD9Ov6gpkxR30kf
 qsAXkD4amJdE9RZXyrj8yeK06+2yQbzY8MqRgUUraUHBgnir4wXqUlpFbGO62k9SXpAm
 MlwQeAF6QUoFlfkZuZNv4xAYArfw4LJeJ8ejAKXjbjbvs8reQnXq80TzbzZvh2OxrWbV
 0kxA==
X-Gm-Message-State: ANhLgQ0MxlmSCAJSNgDtj9QLfKF0jGGVQyU53+egbgbb1aZ2Jb8pCVOg
 v23BX5y9uqvicXeOALrlgnCq+w==
X-Google-Smtp-Source: ADFU+vuObq0lodVi4ARGspzGIPX4J5aHG9SJWTNgJ1qUzzHy0b5UCAPLdUrbX67/tl6sWOgy5s9lzg==
X-Received: by 2002:a1c:f21a:: with SMTP id s26mr10327528wmc.39.1584097450815; 
 Fri, 13 Mar 2020 04:04:10 -0700 (PDT)
Received: from xps7590.local ([2a02:2450:102f:13b8:c814:5be4:577e:3bd5])
 by smtp.gmail.com with ESMTPSA id r23sm23578052wrr.93.2020.03.13.04.04.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 04:04:10 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Fabio Estevam <festevam@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Tomasz Figa <tfiga@chromium.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [v2 2/3] media: ov8856: Add devicetree support
Date: Fri, 13 Mar 2020 12:03:49 +0100
Message-Id: <20200313110350.10864-3-robert.foss@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200313110350.10864-1-robert.foss@linaro.org>
References: <20200313110350.10864-1-robert.foss@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_040413_127276_4FFBD19D 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree match table, and enable ov8856_probe()
to initialize power, clocks and reset pins.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---

- Changes since v1:
  * Fabio: Change n_shutdown_gpio name to reset_gpio
  * Fabio: Invert reset_gpio due to GPIO_ACTIVE_HIGH -> GPIO_ACTIVE_LOW change
  * Fabio: Remove empty line
  * Fabio: Remove real error from devm_gpiod_get() failures
  * Andy & Sakari: Make XVCLK optional since to not break ACPI
  * Sakari: ARRAY_SIZE() directly instead of through OV8856_NUM_SUPPLIES
  * Sakari: Use XVCLK rate as provided by DT

 drivers/media/i2c/ov8856.c | 109 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 107 insertions(+), 2 deletions(-)

diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
index 8655842af275..db61eed223e8 100644
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
@@ -19,6 +22,8 @@
 #define OV8856_LINK_FREQ_180MHZ		180000000ULL
 #define OV8856_SCLK			144000000ULL
 #define OV8856_MCLK			19200000
+#define OV8856_XVCLK_19_2		19200000
+#define OV8856_XVCLK_24			24000000
 #define OV8856_DATA_LANES		4
 #define OV8856_RGB_DEPTH		10
 
@@ -64,6 +69,12 @@
 
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
@@ -566,6 +577,10 @@ struct ov8856 {
 	struct media_pad pad;
 	struct v4l2_ctrl_handler ctrl_handler;
 
+	struct clk		*xvclk;
+	struct gpio_desc	*reset_gpio;
+	struct regulator_bulk_data supplies[ARRAY_SIZE(ov8856_supply_names)];
+
 	/* V4L2 Controls */
 	struct v4l2_ctrl *link_freq;
 	struct v4l2_ctrl *pixel_rate;
@@ -908,6 +923,46 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
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
+	gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
+				    ov8856->supplies);
+	if (ret < 0) {
+		dev_err(&client->dev, "failed to enable regulators\n");
+		goto disable_clk;
+	}
+
+	gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_LOW);
+
+	usleep_range(1500, 1800);
+
+	return 0;
+
+disable_clk:
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
@@ -1175,7 +1230,7 @@ static int ov8856_remove(struct i2c_client *client)
 static int ov8856_probe(struct i2c_client *client)
 {
 	struct ov8856 *ov8856;
-	int ret;
+	int i, ret;
 
 	ret = ov8856_check_hwcfg(&client->dev);
 	if (ret) {
@@ -1189,10 +1244,50 @@ static int ov8856_probe(struct i2c_client *client)
 		return -ENOMEM;
 
 	v4l2_i2c_subdev_init(&ov8856->sd, client, &ov8856_subdev_ops);
+	ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");
+	if (PTR_ERR(ov8856->xvclk) == -ENOENT) {
+		dev_info(&client->dev, "xvclk clock not defined, continuing...\n");
+		ov8856->xvclk = NULL;
+	} else if (IS_ERR(ov8856->xvclk)) {
+		dev_err(&client->dev, "could not get xvclk clock (%ld)\n",
+			PTR_ERR(ov8856->xvclk));
+		return PTR_ERR(ov8856->xvclk);
+	}
+
+	ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_24);
+	if (ret < 0) {
+		dev_err(&client->dev, "failed to set xvclk rate (24MHz)\n");
+		return ret;
+	}
+
+	ov8856->reset_gpio = devm_gpiod_get(&client->dev, "reset",
+					       GPIOD_OUT_HIGH);
+	if (IS_ERR(ov8856->reset_gpio)) {
+		dev_err(&client->dev, "failed to get reset-gpios\n");
+		return PTR_ERR(ov8856->reset_gpio);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(ov8856_supply_names); i++)
+		ov8856->supplies[i].supply = ov8856_supply_names[i];
+
+	ret = devm_regulator_bulk_get(&client->dev,
+				      ARRAY_SIZE(ov8856_supply_names),
+				      ov8856->supplies);
+	if (ret) {
+		dev_warn(&client->dev, "failed to get regulators\n");
+		return ret;
+	}
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
@@ -1238,6 +1333,9 @@ static int ov8856_probe(struct i2c_client *client)
 	v4l2_ctrl_handler_free(ov8856->sd.ctrl_handler);
 	mutex_destroy(&ov8856->mutex);
 
+probe_power_off:
+	__ov8856_power_off(ov8856);
+
 	return ret;
 }
 
@@ -1254,11 +1352,18 @@ static const struct acpi_device_id ov8856_acpi_ids[] = {
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

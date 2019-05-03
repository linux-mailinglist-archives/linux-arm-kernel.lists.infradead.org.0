Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE3F128DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p4tVJTt30YeI7pMxbnMnPMVfLbU4phakkMypGfxP/yU=; b=btCwmqbmNmsvDZo4k67bwp9ICN
	6eKxarGp/ziEzHzfjxv9hBhUoPi/b2iIGHL4si/FLtAY7ZijnjVewxg3hAwA5V6waYSd4TmMFbqmr
	e7LuNtIksSv692ucZyfnjAAdY8d4kBCweAE7VBKiGiXp+K9sWgoGFkC25vciz+s//+dFeXBogYQvk
	lEjntyKbBW7n70mKRi+NGzxwE3nTVpC9trktxOxTmVyoQERgyMEmOLmKqhiOzLxt4j+K9usSdamRB
	OzPguoMMHK4hg9hoT1D4yTw/dcYvWUe+Fry+mHN6ioJj/D/RMAKwkPIjbMWZk884KY+jmiZSUTRGo
	/zxW/eDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSdS-0007hl-VS; Fri, 03 May 2019 07:29:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMScZ-0006fa-DB
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:28:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id z28so2479831pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 00:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=e+8X3jpzX2axqpodG5rv/zXjSeBjdMvSndQlz4t6nbo=;
 b=duUSP7MUL4/J85YW5hqaSOb87iG/NFCOT5u5XorwFhbcE5qeGEjVOQvHS/c/DNU3dQ
 RBSJCP5KHneS8mkIfw7ovpg3oosItY0y98eEWWqpbAXVYnE65MqFKxJ3ORABwrpS93mf
 Dn5h7SkIJJCcY0TRftWU+cW6oPHfc87XqK5XylRnZScjIrJ46AQJ+gNVX9uZOYiczz8G
 PHphuyQ5szjLzXk+yg/SZJ8by6vafhgZx9bIOM1oMbx52nj/Kz31FkOdSkpLwxzqnUH7
 7Ee5HmDGNW6d2bzrEsgV3/QFKNXi6+C5Nxzp5qXjsavSmDGRPidD+KVLyfx9hhJDAY5l
 wbLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=e+8X3jpzX2axqpodG5rv/zXjSeBjdMvSndQlz4t6nbo=;
 b=T/+G83/G+3bVO8MGQu5SU/LCnxMO0fCdv/PEUQBtbcl0eQOCW30KtYu4OAh8NzitNJ
 bTcDJB2FTE2VQ1+gIBNcx0UvDsMMNa+OnN+4xFhQI6ZBJUik5syMlB2Ejf3x4LMdnZB+
 XcL7/AtPNddCplePdxTx0TXF0Eiz/uPgZhvFsN2XKae1Fb1JOPKwX6xHg2phF7hNh8+B
 xbTrJ3Q1MfQm2x1wbMVqFifnlaYxslFmG1fviAtW2sLoguS5Ie4i/2schxyIFymlM/p7
 bHjfpfxpTQAXQRbfX+6+T4Cp6VoLSGD0D0LmSLhtLoIQvaJbZ1ehPUN4IariSx+zNFWR
 9lfA==
X-Gm-Message-State: APjAAAWbeS5bZO6Iv+/tXfKrQyDKoXavGpgVucC3je06FnewtBxUgItV
 5XSgAks90kXt6obs5RbAjihI1hc3WW0=
X-Google-Smtp-Source: APXvYqyo+FeWJtf/DfiX1DWQ9UwQWJKvX9mL2ppHGlZ846WHvAKvURFV+G/AL8NV+i2yfCxzm5pepQ==
X-Received: by 2002:a62:5542:: with SMTP id j63mr8768993pfb.34.1556868518500; 
 Fri, 03 May 2019 00:28:38 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id k26sm1663560pfi.136.2019.05.03.00.28.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 00:28:37 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: lee.jones@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, jic23@kernel.org,
 knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
Subject: [PATCH 6/7] iio: adc: sun4i-gpadc-iio: add support for H6 thermal
 sensor
Date: Fri,  3 May 2019 03:28:12 -0400
Message-Id: <20190503072813.2719-7-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190503072813.2719-1-tiny.windzz@gmail.com>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_002840_102750_B6ADA042 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds support for the H6 ths sensor.

TODO: calibrate thermal sensor by using information from sid.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iio/adc/sun4i-gpadc-iio.c | 65 +++++++++++++++++++++++++++++++
 include/linux/mfd/sun4i-gpadc.h   |  9 +++++
 2 files changed, 74 insertions(+)

diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index f24eb76d65c0..9b6fc592f54c 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -120,6 +120,20 @@ static const struct gpadc_data sun8i_a33_gpadc_data = {
 	.temp_data_base = SUN4I_GPADC_TEMP_DATA,
 };
 
+static int sun50i_gpadc_disable(struct sun4i_gpadc_iio *info);
+static int sun50i_gpadc_enable(struct sun4i_gpadc_iio *info);
+
+static const struct gpadc_data sun50i_h6_gpadc_data = {
+	.temp_offset = -2809,
+	.temp_scale = -67,
+	.has_bus_clk = true,
+	.has_bus_rst = true,
+	.gpadc_enable = sun50i_gpadc_enable,
+	.gpadc_disable = sun50i_gpadc_disable,
+	.sensor_count = 2,
+	.temp_data_base = SUN50I_H6_GPADC_TEMP_DATA,
+};
+
 struct sun4i_sensor_tzd {
 	struct sun4i_gpadc_iio          *info;
 	struct thermal_zone_device      *tzd;
@@ -452,6 +466,53 @@ static int sun4i_gpadc_enable(struct sun4i_gpadc_iio *info)
 	return 0;
 }
 
+static int sun50i_gpadc_enable(struct sun4i_gpadc_iio *info)
+{
+	int ret, val;
+
+	ret = reset_control_deassert(info->reset);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(info->bus_clk);
+	if (ret)
+		goto assert_reset;
+
+	/*
+	 * clkin = 24MHz
+	 * T acquire = clkin / (SUN50I_GPADC_CTRL0_T_ACQ + 1)
+	 *           = 20us
+	 */
+	regmap_write(info->regmap, SUN4I_GPADC_CTRL0,
+		     SUN50I_GPADC_CTRL0_T_ACQ(479));
+	/* average over 4 samples */
+	regmap_write(info->regmap, SUN50I_H6_GPADC_CTRL3,
+		     SUN4I_GPADC_CTRL3_FILTER_EN |
+		     SUN4I_GPADC_CTRL3_FILTER_TYPE(1));
+	/* period = (SUN50I_GPADC_TPR_TEMP_PERIOD + 1) * 4096 / clkin; ~10ms */
+	regmap_write(info->regmap, SUN50I_GPADC_TPR,
+		     SUN50I_GPADC_TPR_TEMP_PERIOD(58));
+	/* TODO: calibrate ths */
+	/* enable sensor */
+	val = GENMASK(info->data->sensor_count - 1, 0);
+	regmap_write(info->regmap, SUN4I_GPADC_CTRL1, val);
+
+	return 0;
+
+assert_reset:
+	reset_control_assert(info->reset);
+
+	return ret;
+}
+
+static int sun50i_gpadc_disable(struct sun4i_gpadc_iio *info)
+{
+	clk_disable_unprepare(info->bus_clk);
+	reset_control_assert(info->reset);
+
+	return 0;
+}
+
 static int sun4i_gpadc_runtime_suspend(struct device *dev)
 {
 	struct sun4i_gpadc_iio *info = iio_priv(dev_get_drvdata(dev));
@@ -546,6 +607,10 @@ static const struct of_device_id sun4i_gpadc_of_id[] = {
 		.compatible = "allwinner,sun8i-a33-ths",
 		.data = &sun8i_a33_gpadc_data,
 	},
+	{
+		.compatible = "allwinner,sun50i-h6-ths",
+		.data = &sun50i_h6_gpadc_data,
+	},
 	{ /* sentinel */ }
 };
 
diff --git a/include/linux/mfd/sun4i-gpadc.h b/include/linux/mfd/sun4i-gpadc.h
index 139872c2e0fe..f505013e9c0d 100644
--- a/include/linux/mfd/sun4i-gpadc.h
+++ b/include/linux/mfd/sun4i-gpadc.h
@@ -19,6 +19,9 @@
 #define SUN4I_GPADC_CTRL0_FS_DIV(x)			((GENMASK(3, 0) & (x)) << 16)
 #define SUN4I_GPADC_CTRL0_T_ACQ(x)			(GENMASK(15, 0) & (x))
 
+/* TP_CTRL0 bits for sun50i SOCs */
+#define SUN50I_GPADC_CTRL0_T_ACQ(x)			((GENMASK(15, 0) & (x)) << 16)
+
 #define SUN4I_GPADC_CTRL1				0x04
 
 #define SUN4I_GPADC_CTRL1_STYLUS_UP_DEBOUNCE(x)		((GENMASK(7, 0) & (x)) << 12)
@@ -49,6 +52,9 @@
 #define SUN4I_GPADC_CTRL2_PRE_MEA_EN			BIT(24)
 #define SUN4I_GPADC_CTRL2_PRE_MEA_THRE_CNT(x)		(GENMASK(23, 0) & (x))
 
+#define SUN50I_GPADC_TPR				0x08
+#define SUN50I_GPADC_TPR_TEMP_PERIOD(x)			((GENMASK(19, 0) & (x)) << 12)
+
 #define SUN4I_GPADC_CTRL3				0x0c
 
 #define SUN4I_GPADC_CTRL3_FILTER_EN			BIT(2)
@@ -84,6 +90,9 @@
 #define SUN4I_GPADC_TEMP_DATA				0x20
 #define SUN4I_GPADC_DATA				0x24
 
+#define SUN50I_H6_GPADC_CTRL3				0x30
+#define SUN50I_H6_GPADC_TEMP_DATA			0xc0
+
 #define SUN4I_GPADC_IRQ_FIFO_DATA			0
 #define SUN4I_GPADC_IRQ_TEMP_DATA			1
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

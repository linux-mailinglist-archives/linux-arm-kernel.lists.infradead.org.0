Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C8F128D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IpkUOLz8b/zBn6apXkyyFwjWGhx4ao3V//x7QYKlNCM=; b=CQ6qhuRYg2tg0V+D6qgHRy2kaJ
	KbqV4IhrqYmGbm98PmjVoMcPG98NCQZW3H4RGCj5sQAE9YLesB7S2zXQd1kWZo+k1ayFlC51udK3J
	Cx6L1GZ792sxcqyPCuke9P4hRJEClrX0gP3Ri/nLi99B0cdV0h6FfdBKZwe8Ph8KVWzHmBMXhHB3e
	Vn7XmrP4Ba1BQ/+q+Ag60INNpF2wvV95cDadaiu3XGQhXaNwwdVsiliXbqGX9HYoTQn7eDEvycnye
	tBt/IS3OfIy5mZZxHKUVR/WOVXJQXA1TQjMLxUcRQUNk3MwExUkJfHnXIYIw5T1Ay6kEiolo+wT/m
	qbFt77nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMScy-000733-EX; Fri, 03 May 2019 07:29:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMScP-0006QN-T6
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:28:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id t87so1888352pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 00:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=whcenm+FX4qRQPz4bN0k/i1kY0g1Fng8zixTNhvTcc0=;
 b=uqQ8gcq1579BJNvE9790OgzNmqf4HWV9M7gwyiq9lHH1omarfHr1jDi+g+jksPJRTH
 H8p1NT3fu+z+GbSYqr+hhhDa1/f3ihBIoxKPQTk//no9j9Ulm/aQsZUfhFq5eG8DvAJB
 i1Ye2+kQTkhgj5DWYza7dP8/XEyVbAVhnAtmtNIZOK5NG4ql9cyjrvjbiTFjE8sUPnGj
 0L6QityL0jphNFqbOwjXQKeRwz3Zl+48b2qAaWnskTorLGa8//i4A6Jbq2L3Nhfaopbc
 XEzgDjcLWPEoZKsHy7Ef0az4f53exQ5zIRIDpsZ3tVIPHDq/YNH+GOnPS0UGSJYb2T9H
 SYtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=whcenm+FX4qRQPz4bN0k/i1kY0g1Fng8zixTNhvTcc0=;
 b=Pe/WmF8jpXPuUjJLYRvQ7HQXTZe176uTkJ1HuLjvNBDVzLzIYxgMaKGIhHnCnR8t9n
 dJnl3rkom+fl22p5hemiVX+jHOWVU0m2BBdB9z7GawNTEnsNE9dkfBNEbsCjxIW8P0mp
 Kj/xwIs2ReIwrp/Bz9pp3GG77BugTeHNNpOX5TG2h1+HmE50Dtb/Ryh362k/Oujs5BbU
 nynrg+QnUGlgj7/J7rH034Dg6DFRLETVlWGaEdoxe6XiBMtzKXs20OUj5dYiMb26K6jR
 Gp/AWrr5zCF4sV1zR9sibrc38Rn8OewKhDHt5xdipBfi+kzeM+GgQBPOLJXyQnyHCBUC
 SSag==
X-Gm-Message-State: APjAAAXANwvbOTJwE+pD9eWIuluxS10Iq2yfTOXpBYliATfkVv0Nff7I
 NkhCLVi7MCq/G64nxewEQbo=
X-Google-Smtp-Source: APXvYqxWSnuIybJbjilvsuTpxUl/E3mOx1lW2LrSkVylcN9LtF+lbeVXh1tDcp13jE2vVkAUHnpftQ==
X-Received: by 2002:a63:5443:: with SMTP id e3mr8411067pgm.265.1556868509325; 
 Fri, 03 May 2019 00:28:29 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id k65sm1744995pfj.141.2019.05.03.00.28.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 00:28:28 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: lee.jones@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, jic23@kernel.org,
 knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
Subject: [PATCH 3/7] iio: adc: sun4i-gpadc: introduce gpadc_enable and
 gpadc_disable in gpadc_data
Date: Fri,  3 May 2019 03:28:09 -0400
Message-Id: <20190503072813.2719-4-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190503072813.2719-1-tiny.windzz@gmail.com>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_002830_234208_3E3C78B7 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Different sensors may have different enable and disable functions, so
introduce enable and disable in gpadc_data to support soc specific
function.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iio/adc/sun4i-gpadc-iio.c | 37 ++++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index b41ec0d5964d..de6b8556a549 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -49,6 +49,8 @@ static unsigned int sun6i_gpadc_chan_select(unsigned int chan)
 	return SUN6I_GPADC_CTRL1_ADC_CHAN_SELECT(chan);
 }
 
+struct sun4i_gpadc_iio;
+
 struct gpadc_data {
 	int		temp_offset;
 	int		temp_scale;
@@ -56,10 +58,15 @@ struct gpadc_data {
 	unsigned int	tp_adc_select;
 	unsigned int	(*adc_chan_select)(unsigned int chan);
 	unsigned int	adc_chan_mask;
+	int             (*gpadc_enable)(struct sun4i_gpadc_iio *info);
+	int             (*gpadc_disable)(struct sun4i_gpadc_iio *info);
 	unsigned int    sensor_count;
 	unsigned int    temp_data_base;
 };
 
+static int sun4i_gpadc_disable(struct sun4i_gpadc_iio *info);
+static int sun4i_gpadc_enable(struct sun4i_gpadc_iio *info);
+
 static const struct gpadc_data sun4i_gpadc_data = {
 	.temp_offset = -1932,
 	.temp_scale = 133,
@@ -67,6 +74,8 @@ static const struct gpadc_data sun4i_gpadc_data = {
 	.tp_adc_select = SUN4I_GPADC_CTRL1_TP_ADC_SELECT,
 	.adc_chan_select = &sun4i_gpadc_chan_select,
 	.adc_chan_mask = SUN4I_GPADC_CTRL1_ADC_CHAN_MASK,
+	.gpadc_enable = sun4i_gpadc_enable,
+	.gpadc_disable = sun4i_gpadc_disable,
 	.sensor_count = 1,
 	.temp_data_base = SUN4I_GPADC_TEMP_DATA,
 };
@@ -78,6 +87,8 @@ static const struct gpadc_data sun5i_gpadc_data = {
 	.tp_adc_select = SUN4I_GPADC_CTRL1_TP_ADC_SELECT,
 	.adc_chan_select = &sun4i_gpadc_chan_select,
 	.adc_chan_mask = SUN4I_GPADC_CTRL1_ADC_CHAN_MASK,
+	.gpadc_enable = sun4i_gpadc_enable,
+	.gpadc_disable = sun4i_gpadc_disable,
 	.sensor_count = 1,
 	.temp_data_base = SUN4I_GPADC_TEMP_DATA,
 };
@@ -89,6 +100,8 @@ static const struct gpadc_data sun6i_gpadc_data = {
 	.tp_adc_select = SUN6I_GPADC_CTRL1_TP_ADC_SELECT,
 	.adc_chan_select = &sun6i_gpadc_chan_select,
 	.adc_chan_mask = SUN6I_GPADC_CTRL1_ADC_CHAN_MASK,
+	.gpadc_enable = sun4i_gpadc_enable,
+	.gpadc_disable = sun4i_gpadc_disable,
 	.sensor_count = 1,
 	.temp_data_base = SUN4I_GPADC_TEMP_DATA,
 };
@@ -97,6 +110,8 @@ static const struct gpadc_data sun8i_a33_gpadc_data = {
 	.temp_offset = -1662,
 	.temp_scale = 162,
 	.tp_mode_en = SUN8I_GPADC_CTRL1_CHOP_TEMP_EN,
+	.gpadc_enable = sun4i_gpadc_enable,
+	.gpadc_disable = sun4i_gpadc_disable,
 	.sensor_count = 1,
 	.temp_data_base = SUN4I_GPADC_TEMP_DATA,
 };
@@ -402,10 +417,8 @@ static irqreturn_t sun4i_gpadc_fifo_data_irq_handler(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static int sun4i_gpadc_runtime_suspend(struct device *dev)
+static int sun4i_gpadc_disable(struct sun4i_gpadc_iio *info)
 {
-	struct sun4i_gpadc_iio *info = iio_priv(dev_get_drvdata(dev));
-
 	/* Disable the ADC on IP */
 	regmap_write(info->regmap, SUN4I_GPADC_CTRL1, 0);
 	/* Disable temperature sensor on IP */
@@ -414,10 +427,8 @@ static int sun4i_gpadc_runtime_suspend(struct device *dev)
 	return 0;
 }
 
-static int sun4i_gpadc_runtime_resume(struct device *dev)
+static int sun4i_gpadc_enable(struct sun4i_gpadc_iio *info)
 {
-	struct sun4i_gpadc_iio *info = iio_priv(dev_get_drvdata(dev));
-
 	/* clkin = 6MHz */
 	regmap_write(info->regmap, SUN4I_GPADC_CTRL0,
 		     SUN4I_GPADC_CTRL0_ADC_CLK_DIVIDER(2) |
@@ -435,6 +446,20 @@ static int sun4i_gpadc_runtime_resume(struct device *dev)
 	return 0;
 }
 
+static int sun4i_gpadc_runtime_suspend(struct device *dev)
+{
+	struct sun4i_gpadc_iio *info = iio_priv(dev_get_drvdata(dev));
+
+	return info->data->gpadc_disable(info);
+}
+
+static int sun4i_gpadc_runtime_resume(struct device *dev)
+{
+	struct sun4i_gpadc_iio *info = iio_priv(dev_get_drvdata(dev));
+
+	return info->data->gpadc_enable(info);
+}
+
 static int sun4i_gpadc_get_temp(void *data, int *temp)
 {
 	struct sun4i_sensor_tzd *tzd = data;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

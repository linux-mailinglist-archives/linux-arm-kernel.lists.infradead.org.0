Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B12128CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iOZjlpo6EljsUO9Hy67djF/xams+c9F88No2ULazdTE=; b=JbrtA3mBKFgdCyPHOIwwAmF5Zq
	1EWVNOVtlE6elJyGbiicwaUGvdvRwoTpDcqYbon2Sqp0EFT00hUsZBWLGm9FtTvhVSbFqquydk5wF
	ecbXQCxRE4RzGmgiJWL4QLMwUElfmOAat+Qb9DpVMWMjD+rPIQK5ktaFPbyxriKEZExyUY5usGJ9B
	tjEnmrpGZDP66NNeSB606pcvcPXP/SilPVEIg51BjHNy1QUG7aB1rNImJwHBYwVD4DTNb5zMzpXJQ
	i98fGmK6ogRAVqPFc0ZrX/nt/WNfgO9Gso5cy65T9wdx59TDHor6/hu/RNXuuXLmqW23qE9UmZY6t
	7ewWtYZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMScn-0006ny-Jt; Fri, 03 May 2019 07:28:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMScM-0006MN-Tm
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:28:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id e67so2456668pfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 00:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QLNyKddzGBEfp0X3sV4+rgzmKK42NUUFMJfNDuQuMZg=;
 b=HUBwzSUDq0jDdXV/2VzXw7i6CoA6g+3k9UoxZE+/peYTUL5RV/MWJwWTUZLI+JHg5a
 5Kl3MkEyY6LOhvGBMsibYXdsnzwZG6Dg87r5DB4jPKH9mpV8RZbqt1Phi+nw2ZFDsvyZ
 Vh8TJfGFzonSqQmdBHy7e2hPmG4Sv8ZhIpF6MjWAdm3oKKsAg+hnqi1orjTYhUK8UDv7
 oImpuPBod/YgpaKNor5Pl9V+mLc4dEkdyw1kiYsj706wTXLU+2DDbV+6vK13kVpiNomy
 CtPo/Tfi8ySWD6unN/7oqY98b1K0D6n8IHOCkat6tccm/9NoT/1dwjDh7ttlBtppF06z
 bsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QLNyKddzGBEfp0X3sV4+rgzmKK42NUUFMJfNDuQuMZg=;
 b=GaBi8kp5OTsaGT6OjTU/dlhXGzvINll/W4ZxVfXNuTI+ZJWxex0GanfPiZHZvDUfax
 Dc2QdZ8zH1CtaJt7LB0Qkwn/TqnYLcusfYY9nHBx0zG31M9JpKHWakR5IabVVamKJZEC
 YKP+1f1Qcxzm06LAW58dB1Mb96I0Jj3uBkce6PJKuM46JVy90KVY7nx1YjFO84NGDcmv
 YKoNdU+n5Iwa7qtP6e9qyQSgW03v/iTY3rVIU9EaQwhTb2kHgZZsdtswY+n/vznqTn8J
 Y45IAamEJ7Ohf7CVVrW4xoC0NGGewfOsWn37GHawnZ8/FTgi873S4e+r03hDsJn/dXnD
 Aqsw==
X-Gm-Message-State: APjAAAW0bd4QSo+/svnV4IRPTsf5dOKdsr70EmV+SDYTXkA751hAKHrG
 F25xRjG3mk/1iy4nO/GqxZ0=
X-Google-Smtp-Source: APXvYqxstsfZoFavy9Cx50OVX7G6q9TfajFvKAS3Md5IR7ON1JQDSSu/k8UeT2nXNlUFGWl9cPi9qg==
X-Received: by 2002:a65:6295:: with SMTP id f21mr8626731pgv.129.1556868506538; 
 Fri, 03 May 2019 00:28:26 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id i3sm1594564pgl.57.2019.05.03.00.28.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 00:28:25 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: lee.jones@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, jic23@kernel.org,
 knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
Subject: [PATCH 2/7] iio: adc: sun4i-gpadc: introduce temp_data in gpadc_data
Date: Fri,  3 May 2019 03:28:08 -0400
Message-Id: <20190503072813.2719-3-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190503072813.2719-1-tiny.windzz@gmail.com>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_002827_143254_F76183E2 
X-CRM114-Status: GOOD (  13.12  )
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

For some SOCs, the temperature data register start address may be
different, so introduce temp_data in gpadc_data.

Also modify read temperature to support multiple sensor.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iio/adc/sun4i-gpadc-iio.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index 844fd52bd22f..b41ec0d5964d 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -57,6 +57,7 @@ struct gpadc_data {
 	unsigned int	(*adc_chan_select)(unsigned int chan);
 	unsigned int	adc_chan_mask;
 	unsigned int    sensor_count;
+	unsigned int    temp_data_base;
 };
 
 static const struct gpadc_data sun4i_gpadc_data = {
@@ -67,6 +68,7 @@ static const struct gpadc_data sun4i_gpadc_data = {
 	.adc_chan_select = &sun4i_gpadc_chan_select,
 	.adc_chan_mask = SUN4I_GPADC_CTRL1_ADC_CHAN_MASK,
 	.sensor_count = 1,
+	.temp_data_base = SUN4I_GPADC_TEMP_DATA,
 };
 
 static const struct gpadc_data sun5i_gpadc_data = {
@@ -77,6 +79,7 @@ static const struct gpadc_data sun5i_gpadc_data = {
 	.adc_chan_select = &sun4i_gpadc_chan_select,
 	.adc_chan_mask = SUN4I_GPADC_CTRL1_ADC_CHAN_MASK,
 	.sensor_count = 1,
+	.temp_data_base = SUN4I_GPADC_TEMP_DATA,
 };
 
 static const struct gpadc_data sun6i_gpadc_data = {
@@ -87,6 +90,7 @@ static const struct gpadc_data sun6i_gpadc_data = {
 	.adc_chan_select = &sun6i_gpadc_chan_select,
 	.adc_chan_mask = SUN6I_GPADC_CTRL1_ADC_CHAN_MASK,
 	.sensor_count = 1,
+	.temp_data_base = SUN4I_GPADC_TEMP_DATA,
 };
 
 static const struct gpadc_data sun8i_a33_gpadc_data = {
@@ -94,6 +98,7 @@ static const struct gpadc_data sun8i_a33_gpadc_data = {
 	.temp_scale = 162,
 	.tp_mode_en = SUN8I_GPADC_CTRL1_CHOP_TEMP_EN,
 	.sensor_count = 1,
+	.temp_data_base = SUN4I_GPADC_TEMP_DATA,
 };
 
 struct sun4i_sensor_tzd {
@@ -291,7 +296,8 @@ static int sun4i_gpadc_temp_read(struct iio_dev *indio_dev, int *val,
 	if (info->no_irq) {
 		pm_runtime_get_sync(indio_dev->dev.parent);
 
-		regmap_read(info->regmap, SUN4I_GPADC_TEMP_DATA, val);
+		regmap_read(info->regmap, info->data->temp_data_base +
+			    0x4 * sensor, val);
 
 		pm_runtime_mark_last_busy(indio_dev->dev.parent);
 		pm_runtime_put_autosuspend(indio_dev->dev.parent);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7D51888AC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:34:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zznhl0fpkTa3Qhk3YosyfIjoyvG/NyEDfanPcj0vBOc=; b=iuUBhRl2+ImOzQYujc0RUaCBz4
	aypnrY4uCnj7vbc42CDuiGJiXjvq/OGLUx3VjhiFN+0nMgSLCbE30xvePRlpX++hx9lYdMo7IJpEt
	lc4VUQG8SOHkRqzIaclTYEIvwDkVQpEq7XnB7byS0H1aeGZV0dqhMMy26CoHpaj3AgLdK0ZET7OKz
	ujgy7/iQCn3nwZDSUHRLxjTG629o/2ro3Ubnq67vJRJSj7o+FrnXJfiFJt+PKPkB0iFvPyimHyWVR
	KrxZqZtOXUFBXD5OHd15xslKEAlT1qdQN1a8VNvPBbGqLRV49/mkqz8edtGL5W97S04GkhvMB+pLl
	Vd9I3wqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwK14-0005ve-Sf; Sat, 10 Aug 2019 05:34:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJxM-0002vG-I0
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:30:22 +0000
Received: by mail-pf1-x444.google.com with SMTP id m30so47130663pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jx9rIdpPyDLrhQcjiIIVEfnMNx20+ROJhWSfoScLHXY=;
 b=peecNcquOPiuM7iIKtsSfIA1I0Dxu7JsVnKQotHt1q+Qce3IacmQ6yTeBvqDkBGzFK
 LzS43cgpuHmXz4JUUzyyjL28zKH05Hc+2tWuKxa9+XG17jDecW7H3y/Yukd5Eun3pzjD
 Y1nMgLP4jLja2J7JfsK372ktppt4/glNQQnBM5n8jaLqHYkXYD4u0zPgqEExCMGBMsge
 9uRL/Ql1tMDwoxOL8+uY5G+vOfKhNxuYmZCf7sV3CNvy60MB/wZ3He2UICmbP4y7bUKq
 E3lfGBjaax6Hk+MJNiUR3wLCAOGmM7G5LihcqWEEp3kS26SR+bvwS3pEAX+z9pAF80BD
 n3Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jx9rIdpPyDLrhQcjiIIVEfnMNx20+ROJhWSfoScLHXY=;
 b=prSXEBA0umoUMXhQ5ft2cDxUEVzev9KgAiHOphri7c7OR23JHfUGG1NvY4plGUpZEB
 19Y9OMp4v+RbYgmgZSdpAQzPYUx9P7uqD4QqNWI9LOLV6X0cBJV/aq0bweDfsD8GRkA/
 y7Ms4m+iwG5kmd+LnxEW6wOmjYCVEm4oYOIC4Xfli96gB/rRkoKLQtuxWv5fTWV6fzw2
 Kx6FQQVVWD2KlWIimJPcw9seRMpKwrz4YF+Si3GtF6U5zjwU2esZife1ewWJ7I/QdFS1
 zJfshMlOsP6Hw/7mwCzKmBUGHF5Pgsi9LN93O7i1mnFLcJd9jOfeDHo7vQBXTj8xUerR
 qnRg==
X-Gm-Message-State: APjAAAXvthc3Nimoi1a6vp3per4ta3EVhh+cCNdMUjQIgEQPJFMeeNbu
 4PEeQ9zP1qSM2TmV5JJK+pY=
X-Google-Smtp-Source: APXvYqyWKOzcWX7HwlY+V4ut7VgR7PSWiZa3XTBvcf7JoCfOdZzsBeq8k/QGs9LtRDC5/kVc58/k9g==
X-Received: by 2002:a63:5945:: with SMTP id j5mr20501987pgm.452.1565415019890; 
 Fri, 09 Aug 2019 22:30:19 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id e189sm86883416pgc.15.2019.08.09.22.30.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:30:19 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 16/18] thermal: sun8i: add support for Allwinner H5 thermal
 sensor
Date: Sat, 10 Aug 2019 05:28:27 +0000
Message-Id: <20190810052829.6032-17-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_223020_821375_B59EABE7 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Icenowy Zheng <icenowy@aosc.io>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

The thermal sensor in Allwinner H5 has 2 sensors, and they have a
special segmented temperature calculation formula.

Add support for this thermal sensor.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 drivers/thermal/sun8i_thermal.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index a761e2afda08..78a888d85cba 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -99,6 +99,16 @@ static int sun8i_ths_reg2temp(struct ths_device *tmdev,
 		return (reg + tmdev->chip->offset) * tmdev->chip->scale;
 }
 
+static int sun50i_h5_calc_temp(int id, int reg)
+{
+	if (reg >= 0x500)
+		return -1191 * reg / 10 + 223000;
+	else if (!id)
+		return -1452 * reg / 10 + 259000;
+	else
+		return -1590 * reg / 10 + 276000;
+}
+
 static int sun8i_ths_get_temp(void *data, int *temp)
 {
 	struct tsensor *s = data;
@@ -530,6 +540,16 @@ static const struct ths_thermal_chip sun50i_a64_ths = {
 	.irq_ack = sun8i_h3_irq_ack,
 };
 
+static const struct ths_thermal_chip sun50i_h5_ths = {
+	.sensor_num = 2,
+	.has_mod_clk = true,
+	.temp_data_base = SUN8I_THS_TEMP_DATA,
+	.calibrate = sun8i_h3_ths_calibrate,
+	.init = sun8i_h3_thermal_init,
+	.irq_ack = sun8i_h3_irq_ack,
+	.calc_temp = sun50i_h5_calc_temp,
+};
+
 static const struct ths_thermal_chip sun50i_h6_ths = {
 	.sensor_num = 2,
 	.offset = -2794,
@@ -544,6 +564,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 static const struct of_device_id of_ths_match[] = {
 	{ .compatible = "allwinner,sun8i-h3-ths", .data = &sun8i_h3_ths },
 	{ .compatible = "allwinner,sun50i-a64-ths", .data = &sun50i_a64_ths },
+	{ .compatible = "allwinner,sun50i-h5-ths", .data = &sun50i_h5_ths },
 	{ .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
 	{ /* sentinel */ },
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

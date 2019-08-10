Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DF98889D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pRM9W5pXnIvQFemucuQj6Qp3G3Be/uNhgj6bqUxbLKI=; b=WEgL/DmiGxCtIklxui7+YwCm06
	jNIFcNs3pFiOUJP+IggZVh7TbbcG0UKsBkg3wI1JDavtA4z6CQVb997sELYU40EZJ4LSCsaIUp5os
	w6oHGYWIXKUmK1egEMWH4WgeP/HsgC92yqTo7ubIXcNtzdCgBPcBq6iFHmXs+Hx0Uygqitne1vvTz
	kXMj3tBrGXX/EizPdxn4D3LvUm3D2hFBv2gw+8U5zcyI9XuIpp/wzHYdLI2GOyXaSd2VHPfXjDRHu
	X14h99B5bjWZaJbaVpNlJ1XH62Ja9KGjEkbRuP4JBWdGUZoLsVpvi6JI2ozWNWQcIQkQM9lH+Aekm
	vyqlsTDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJxm-00033u-Bf; Sat, 10 Aug 2019 05:30:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJwU-0000ue-DN
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:29:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id w24so45762132plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=m+FeoUxxKT842NGkzufNDhEKbfyCpMTH+IlMbjC5ho0=;
 b=pU5BLjCRcTZ/VPToncNLJ17hv0w7PjaSu2tdFCtXRP8nxKDCrIcNTCwadd2D0xijyo
 eAmL5d7fM9Bqj5JMO0bWuRDqTzt6T5w94dx0Rvd5yB8QkKcUkD7wwEMgvuypDPGI2DbN
 Lp5BaEh1H/UzVwo4EPqJ6VDogz1FntOqINDk3/7VQH7a2gfaLodoFbBM8WEKlOpgC3aT
 bXylqnlatMGFvTyNTKD4K5zES0dlkjWV+Zm/hyeoCdpdSJPnT6pU3OGUAgjnG8cHD0/3
 9fNLGFMwdfYY4BDCX1PQM0arHQ+6GkypQd/MPOtgfyvt3/v0pTk9B9t+sgVh0brl7XjX
 S58A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=m+FeoUxxKT842NGkzufNDhEKbfyCpMTH+IlMbjC5ho0=;
 b=WOFTrXGaQBY9qYkfrQe6aJsc/R/3E/Ga67PApshpj5uq+/yXMe7i6Y6shJcQGjfS78
 z92dbq/aPo66cKVY3+NF88ddFqqIILv9+/c2UubVVRnfczGRSIDzCXbYcf1MoEANbQkG
 DDsAoYF0WgWktHkwDfN0t6VfmtkUJYwKDqKyeOOX+D8GVmrZPWdrcWM/THhaeAUzCEOj
 lL0+a57K94B9ZuIWpaJpmUz8XdFvdzOE/ITqCJpfAIemBPQGB5HudzK+vdKY49rB/WJ+
 Z2j+Eqj1WdUTO6hOWrcofjB4iOMHynzxH4j/UBY6KOFOjVpTDhRSkyu2Dd7wMGN0hf0w
 aZPQ==
X-Gm-Message-State: APjAAAVRFjcFiQywkQhRtNyZa2/sjxResSR7J70xjMLhm8dzRJr1qqeG
 RH/cms+1bbAY06+ajYW/hRc=
X-Google-Smtp-Source: APXvYqxNEyT0QTjr6XVkWXmgzgtE9iVa3pELQsprz/kPLk9VCe/zWE/jEywdQraspTO4ZVuGa/X+oA==
X-Received: by 2002:a17:902:e30d:: with SMTP id
 cg13mr22644366plb.173.1565414965732; 
 Fri, 09 Aug 2019 22:29:25 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id h20sm1062446pfq.156.2019.08.09.22.29.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:25 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 04/18] thermal: sun8i: get ths sensor number from device
 compatible
Date: Sat, 10 Aug 2019 05:28:15 +0000
Message-Id: <20190810052829.6032-5-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222926_583029_F76E37C6 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For different socs, the number of ths sensors is different.
So we need to do some work in order to support more soc.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 28 ++++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 2ce36fa3fec3..e9c2acbaac74 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -22,7 +22,6 @@
 
 #define MAX_SENSOR_NUM	4
 
-#define SUN50I_H6_SENSOR_NUM	2
 #define SUN50I_H6_OFFSET	-2794
 #define SUN50I_H6_SCALE		-67
 
@@ -57,7 +56,12 @@ struct tsensor {
 	int				id;
 };
 
+struct ths_thermal_chip {
+	int		sensor_num;
+};
+
 struct ths_device {
+	const struct ths_thermal_chip		*chip;
 	struct device				*dev;
 	struct regmap				*regmap;
 	struct reset_control			*reset;
@@ -117,7 +121,7 @@ static irqreturn_t sun50i_h6_irq_thread(int irq, void *data)
 
 	regmap_read(tmdev->regmap, SUN50I_H6_THS_DIS, &state);
 
-	for (i = 0; i < SUN50I_H6_SENSOR_NUM; i++) {
+	for (i = 0; i < tmdev->chip->sensor_num; i++) {
 
 		if (state & SUN50I_H6_THS_DATA_IRQ_STS(i)) {
 			/* clear data irq pending */
@@ -167,7 +171,7 @@ static int sun50i_ths_calibrate(struct ths_device *tmdev)
 		goto out;
 	}
 
-	if (!caldata[0] || callen < 2 + 2 * SUN50I_H6_SENSOR_NUM) {
+	if (!caldata[0] || callen < 2 + 2 * tmdev->chip->sensor_num) {
 		ret = -EINVAL;
 		goto out_free;
 	}
@@ -190,7 +194,7 @@ static int sun50i_ths_calibrate(struct ths_device *tmdev)
 	 */
 	ft_temp = caldata[0] & FT_TEMP_MASK;
 
-	for (i = 0; i < SUN50I_H6_SENSOR_NUM; i++) {
+	for (i = 0; i < tmdev->chip->sensor_num; i++) {
 		int reg = (int)caldata[i + 1];
 		int sensor_temp = sun8i_ths_reg2temp(tmdev, reg);
 		int delta, cdata, offset;
@@ -297,10 +301,10 @@ static int sun50i_h6_thermal_init(struct ths_device *tmdev)
 	regmap_write(tmdev->regmap, SUN50I_H6_THS_PC,
 		     SUN50I_H6_THS_PC_TEMP_PERIOD(58));
 	/* enable sensor */
-	val = GENMASK(SUN50I_H6_SENSOR_NUM - 1, 0);
+	val = GENMASK(tmdev->chip->sensor_num - 1, 0);
 	regmap_write(tmdev->regmap, SUN50I_H6_THS_ENABLE, val);
 	/* thermal data interrupt enable */
-	val = GENMASK(SUN50I_H6_SENSOR_NUM - 1, 0);
+	val = GENMASK(tmdev->chip->sensor_num - 1, 0);
 	regmap_write(tmdev->regmap, SUN50I_H6_THS_DIC, val);
 
 	return 0;
@@ -311,7 +315,7 @@ static int sun8i_ths_register(struct ths_device *tmdev)
 	struct thermal_zone_device *tzd;
 	int i;
 
-	for (i = 0; i < SUN50I_H6_SENSOR_NUM; i++) {
+	for (i = 0; i < tmdev->chip->sensor_num; i++) {
 		tmdev->sensor[i].tmdev = tmdev;
 		tmdev->sensor[i].id = i;
 		tmdev->sensor[i].tzd =
@@ -337,6 +341,10 @@ static int sun8i_ths_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	tmdev->dev = dev;
+	tmdev->chip = of_device_get_match_data(&pdev->dev);
+	if (!tmdev->chip)
+		return -EINVAL;
+
 	platform_set_drvdata(pdev, tmdev);
 
 	ret = sun8i_ths_resource_init(tmdev);
@@ -379,8 +387,12 @@ static int sun8i_ths_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct ths_thermal_chip sun50i_h6_ths = {
+	.sensor_num = 2,
+};
+
 static const struct of_device_id of_ths_match[] = {
-	{ .compatible = "allwinner,sun50i-h6-ths"},
+	{ .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, of_ths_match);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

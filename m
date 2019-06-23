Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5D54FCF8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cEBmKqs7gHrlFw8iTZwZVZDc7olLe+pcWdmwmUZ5+iM=; b=iLMy+9meZdDo01hM2St2/jKmim
	C0og7vtoPfh96qtCP7W4qdufhD7rlQb7r0wY/xd9Y2sthO5Hc5OicZ5ifrTIWA7MEZIOxa+DY/qm6
	AWoX+N+7VFcrysipAM0L8OIrS8YdXg9EIayvE5BN3txxZ3sZcF+ROaJXavQBo+jg2FbcZgUePKI+P
	asiFKyJmSxZ4AGIZH13mNBdj/ff71NoeFsDpJqfUFW/5N3ogwon/ytOqOVKhkT4mUusNDXmII6eAH
	oyn9QtK607ribQSVbV/YXpy3UYwQxAPdvgW0UKEOy4iuQKp/Q4ta/e9L+TcwIDzTHKyjejGaibYa2
	Omr5M5Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5b5-0003bb-5n; Sun, 23 Jun 2019 16:44:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5ZL-0002Z3-Mf
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id y72so5774687pgd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=61YRhTYZzpPAbsdw4ql6MdZ8eDEIqaY2tionq5H4meo=;
 b=Wzrz9SjgCzNqQkzWoSMQqAL1h3gNd+lI94LXDB/ydu9Z8V5mO205tsym53MOSa7sW5
 +6rdMWKOr4rPzevDBAEwwn3hxXiQFvYk7nzcRCamQ4cpeaOe1lTnd39tYp3QLHotHkrf
 H9Gqqwx9cuvPLmydJrXROfFy7XQX4E0veSpIcrt3VPWOIaWnog2/DdVzcC9SoN7Ly/2y
 y6hbEuiD/dwWJZzid73WhW7L5OeZao0Pqcdwye2c8fGjKNNck19ziC0E0bgNsHHxISq8
 pxrC+K9DVFBjw6xaWwof4EPLGizmWrDNoNj4VJC5mOVV8FoklOpLkYrV4791DFZ69Tll
 znPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=61YRhTYZzpPAbsdw4ql6MdZ8eDEIqaY2tionq5H4meo=;
 b=rNxko5h4nNM2jts63ama7LogGXQ6XkcQU9nNVT3BNxvNodTn1q2g4nFedWLHq3wZjN
 RWc6B6el6aoJHH7a0Vb3xdvBJhRnkJbLOR/yKQnRVwoG5ZXLRJoYUf9LojzUUsoBjKtF
 d71YNhO0k4CYRLFAlP9kbKs37TBmHUGSPYCaFwbBQC11nnWqwjnXv7lMpIV5tlnrrTc1
 lXYGJIVADbu9n7m/xHlNR8wYGWmz83Jx/2rkRIUukZbXCgZExf6LIrGPec8aOzsaOeig
 J+0UYk1KkcorkginmjRCfPxZHdjZF5pT/XCHqoUfQRURzZDIAnODmnZbcd4I5UA1Dfsq
 mIMQ==
X-Gm-Message-State: APjAAAUWLYXq6uYDAozN9qWpBENJRPXG1mOoF031XV3sZqUurTooo32y
 lu9vQhMKSQ1+8Zwd1v0Y/OM=
X-Google-Smtp-Source: APXvYqzRoYiCci88ppuvAJgfSh+3g9qZBEaERQz6llUSQx4SEJvBp6v+YlGwm14rPG59UsiG008gBQ==
X-Received: by 2002:a17:90a:1c1:: with SMTP id 1mr19678268pjd.72.1561308138834; 
 Sun, 23 Jun 2019 09:42:18 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id k22sm8405914pfk.157.2019.06.23.09.42.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:18 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 04/11] thermal: sun8i: get ths sensor number from device
 compatible
Date: Sun, 23 Jun 2019 12:41:59 -0400
Message-Id: <20190623164206.7467-5-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094219_808684_E76834DA 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index d6918c62682b..c37e1c51a543 100644
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
 		int delta, cdata, calib_offest;
@@ -303,10 +307,10 @@ static int sun50i_thermal_init(struct ths_device *tmdev)
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
@@ -317,7 +321,7 @@ static int sun8i_ths_register(struct ths_device *tmdev)
 	struct thermal_zone_device *tzd;
 	int i;
 
-	for (i = 0; i < SUN50I_H6_SENSOR_NUM; i++) {
+	for (i = 0; i < tmdev->chip->sensor_num; i++) {
 		tmdev->sensor[i].tmdev = tmdev;
 		tmdev->sensor[i].id = i;
 		tmdev->sensor[i].tzd =
@@ -343,6 +347,10 @@ static int sun8i_ths_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	tmdev->dev = dev;
+	tmdev->chip = of_device_get_match_data(&pdev->dev);
+	if (!tmdev->chip)
+		return -EINVAL;
+
 	platform_set_drvdata(pdev, tmdev);
 
 	ret = sun8i_ths_resource_init(tmdev);
@@ -385,8 +393,12 @@ static int sun8i_ths_remove(struct platform_device *pdev)
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

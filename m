Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64392888A0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VR++LYPJXNZ7OuiWGylFCwY/JURvgejyKrae9Fp70S0=; b=dgsCIy2Lz+wPII5x62OMGs7VB1
	/XWze4LWtyEQ38rtKh68R83Wt9Xk3+/jIsF1pj70yBSkBzlo30jnH3FKOXtPISZOlHNVAGz3ahSRZ
	IvbuGC3V4Kq56cE3GANWArnkFufbgMGwW1u7OWEMx5Z08qSDs7UHk2vcdVergrQ255JPOjkguSVFZ
	+y7SS8bmIcdzW05y874E7pl7hah6gqOBWVjQuqIqwHhubg9/37z2KSosqHRRrQjLXQde2nh+H7Oi/
	psSJumfk9Jvnjh2OcNOuVSm5J4rRVf9d94MJNAzO74Ex9Q/+LEQyx76K6CGKITHQ3ltUK962toltP
	bGLS0GMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJyd-0003oc-2T; Sat, 10 Aug 2019 05:31:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJwk-00017x-0b
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:29:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id b3so45816302plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9CD9LJDj5saAwmZmvd1ahBknyBpZymFtazDBAWPuA/w=;
 b=fDUlzBke9GKEgLeJdcJPCjtMbl9SDaWLS9gqlKxufaa4DWNk2ua2icR1P5zQFlBho+
 ltQ7fP0946RuhfAiOuQiaMqNG+yF/XU5uPLMl5Yn4TF83zaz7slUN7Nh66x3m2RP4xFg
 JKM9RWrzuXpuVa2RKbk29FOvRXQtq1VuL5gkHiqsBS9lVwaL2TS6aaYUqVfe7IctIffN
 i5kRinHbJAIp+f9qWntf+hhLlPOU0CbA+aAYxoAR3cRxchVYapHiWGzIDWg6vaVKCafR
 mSY11weuX6dcfki1ENoMoiPtR0ptyVUPwlgq1Q/6Dgb3FTo9J7IQEZIyrVWXDWVDEDBA
 I/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9CD9LJDj5saAwmZmvd1ahBknyBpZymFtazDBAWPuA/w=;
 b=DelA4nciUZ2nY6GvSmD5I2MZ4a0rg3e/VRK84ii0pQ8qAbUm3k99MEIDeHozYuipTv
 5q60LKOmyy0kZyIC0jiS5EqUU0xcOMtjsLh1hn2FGrYbUn9lP734jQsRaj0xA4qJ0GzA
 RLZYXd/eaCdMi+s++udNabLrdd/qTvYTvq48uAuGCbWOfWrRJ0wH3SFh0msOVHbaKFdJ
 uUpZfLYlrR53mJW1wwiuxaMkp+SDXvZ+ZQXZgaFekcNPlX01TyA4XW3Q7z0qFSt8Ae7m
 jLvQe0axnl9z06GfPMEBWx3KN0FwEJwsjd0hFiz30mL4W9Oz9fY0dF7aTiLmqMWSoMbK
 lRhA==
X-Gm-Message-State: APjAAAVe+MrWE0XynCM00Z7vmmNpKFG6FHFSfs42oY3UcJYHsS/eL7FL
 bb5aqBI9Ic8U/HeDzog8Y+I=
X-Google-Smtp-Source: APXvYqwcMDp1wIDPEfH9ZNziCnr+sazmApAC7Z15OOCFSDzNfuB/vRjfDqfeFnQK4y8GQZPZto9DDw==
X-Received: by 2002:a17:902:ba8e:: with SMTP id
 k14mr1402329pls.10.1565414981650; 
 Fri, 09 Aug 2019 22:29:41 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id 185sm100125591pfd.125.2019.08.09.22.29.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:41 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 07/18] thermal: sun8i: rework for ths irq handler func
Date: Sat, 10 Aug 2019 05:28:18 +0000
Message-Id: <20190810052829.6032-8-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222942_253302_96C48ADA 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

Here, we do something to prepare for the subsequent
support of multiple platforms.

1) rename sun50i_h6_irq_thread to sun8i_irq_thread, because
   this function should be suitable for all platforms.

2) introduce irq_ack callback to mask interrupt register
   differences.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index ad877b54f58e..b934bc81eba7 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -60,6 +60,7 @@ struct ths_thermal_chip {
 	int		ft_deviation;
 	int		temp_data_base;
 	int		(*init)(struct ths_device *tmdev);
+	int             (*irq_ack)(struct ths_device *tmdev);
 };
 
 struct ths_device {
@@ -116,23 +117,34 @@ static const struct regmap_config config = {
 	.fast_io = true,
 };
 
-static irqreturn_t sun50i_h6_irq_thread(int irq, void *data)
+static int sun50i_h6_irq_ack(struct ths_device *tmdev)
 {
-	struct ths_device *tmdev = data;
-	int i, state;
+	int i, state, ret = 0;
 
 	regmap_read(tmdev->regmap, SUN50I_H6_THS_DIS, &state);
 
 	for (i = 0; i < tmdev->chip->sensor_num; i++) {
-
 		if (state & SUN50I_H6_THS_DATA_IRQ_STS(i)) {
-			/* clear data irq pending */
 			regmap_write(tmdev->regmap, SUN50I_H6_THS_DIS,
 				     SUN50I_H6_THS_DATA_IRQ_STS(i));
+			ret |= BIT(i);
+		}
+	}
+
+	return ret;
+}
 
+static irqreturn_t sun8i_irq_thread(int irq, void *data)
+{
+	struct ths_device *tmdev = data;
+	int i, state;
+
+	state = tmdev->chip->irq_ack(tmdev);
+
+	for (i = 0; i < tmdev->chip->sensor_num; i++) {
+		if (state & BIT(i))
 			thermal_zone_device_update(tmdev->sensor[i].tzd,
 						   THERMAL_EVENT_UNSPECIFIED);
-		}
 	}
 
 	return IRQ_HANDLED;
@@ -371,7 +383,7 @@ static int sun8i_ths_probe(struct platform_device *pdev)
 	 * the end.
 	 */
 	ret = devm_request_threaded_irq(dev, irq, NULL,
-					sun50i_h6_irq_thread,
+					sun8i_irq_thread,
 					IRQF_ONESHOT, "ths", tmdev);
 	if (ret)
 		return ret;
@@ -396,6 +408,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 	.ft_deviation = SUN50I_H6_FT_DEVIATION,
 	.temp_data_base = SUN50I_H6_THS_TEMP_DATA,
 	.init = sun50i_h6_thermal_init,
+	.irq_ack = sun50i_h6_irq_ack,
 };
 
 static const struct of_device_id of_ths_match[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

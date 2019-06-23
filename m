Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DE04FCFB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fnNjNawex3kfv7sqmXB/N3/+3OBHsFoY9YesgmFx6Ms=; b=dP/Cd+SOeDl3frVTzWbLUE8h06
	+lKWl7KplYhVHcjFz1uORkOTBlyoLUNjEM8YD1zOxWWXW7NUs4VH9zCxqGAlKMyf1Ac97DqxuCiin
	9n4ARxmq7+TlPjg5jou6T0/TmOw4FZj2UDKh90T0+GJaTW0ypIGUccsi51J6gPON837zs9hP5qn5l
	mPba9zlXTE7LHLMR9SVsOFfu2VsV1fQdZLDY+CTX7LA4yAs4AsW/DFYMT1nvDYSvtv6WKmWSsWzpN
	eR3DjNU8QxvpuMN41Ue8dTa+XhWo6xCCxxAPj3qr3/gkNbTbQvtqRb+gjDpIX/P90ihh+pOYOhklu
	+EzPN5LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5bp-00049C-Af; Sun, 23 Jun 2019 16:44:53 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5ZT-0002g0-BL
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id l19so5774575pgh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wEqIKiIjMDW4aKJ2RgXaFik3U88pUoE48jM/nfBTuhA=;
 b=OvgjTayEeWn9V1P+UsSgcRUgHzKlA20WHH1U2kasI2U4zb1dZGsyz8z+mFheACxqL1
 kPQOapIXQt8yaWoIMb9oE6e8TmtvbvSh0mKDrymGbV6gADJwZzIR14jVItFURLk/R1O4
 +GScwEEjNqEtdFG/g4cvA6puWFeFqK8UA8P6UhcnIk1zjq0E2eP5akr8PRqW2ZIUSbTx
 1ltLgVyXxvuDz8eJtBiiJtFFEgqCocluxqoAs7ahM06e73JXU346rRymL3oOaaneDdSB
 GguJpVfIgppIARigTk4XyddmTJ6SS8LyjzNMqcjcAQpIDW4PpUFX5jAPUxqtvjAC9y5x
 +blg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wEqIKiIjMDW4aKJ2RgXaFik3U88pUoE48jM/nfBTuhA=;
 b=eiJ6x6dTUGVKN46/StPEcBsIPkaCY83HAZMOz8IdElANmq/X3TszPp+ITNLGuPcpMS
 p/WpdPvNdBfrVGFxryFgfTk/btmP83amP74KFf8q9WL7JfraBTceBtXM0qBDUqgwZW2j
 3xk2bQGS839YkK+gLUSmQgqUVOJInPb/d5fustpg2cSUl/kTalkCj591psn02lrIJ3IH
 VFLZ6D9kc3xh17kvd67BXaG4RkZYfJ8KxuzSzoJLH5HRMb7NS2CT65QFDkcQgmtkQzKe
 XFJhg9WgvQvqcRG/SGImwZXeNaVbizN+ACX6fs9+feJkynXjwGBBk2SV9rsoPLRARJrh
 sbJQ==
X-Gm-Message-State: APjAAAVtThw2i+l5LdGn/vMummiAULCRNSujxVjIQHDoEzlx+edkKMPB
 tRLsCY8A7vfh8VN+4Uqqf8c=
X-Google-Smtp-Source: APXvYqzqdPeNJDKT2GHT0UxSYGePTtYbn2c7WuA7YrqBRcCXj1cMwuqZDcNhsdj2Me9OR655VE0O4g==
X-Received: by 2002:a63:a046:: with SMTP id u6mr12950599pgn.122.1561308146440; 
 Sun, 23 Jun 2019 09:42:26 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id a3sm9503098pfo.49.2019.06.23.09.42.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:25 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 07/11] thermal: sun8i: rework for ths irq handler func
Date: Sun, 23 Jun 2019 12:42:02 -0400
Message-Id: <20190623164206.7467-8-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094227_508815_F1293EEB 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
index 59acbbac76e4..ed1c19bb27cf 100644
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
@@ -377,7 +389,7 @@ static int sun8i_ths_probe(struct platform_device *pdev)
 	 * the end.
 	 */
 	ret = devm_request_threaded_irq(dev, irq, NULL,
-					sun50i_h6_irq_thread,
+					sun8i_irq_thread,
 					IRQF_ONESHOT, "ths", tmdev);
 	if (ret)
 		return ret;
@@ -402,6 +414,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 	.ft_deviation = SUN50I_H6_FT_DEVIATION,
 	.temp_data_base = SUN50I_H6_THS_TEMP_DATA,
 	.init = sun50i_thermal_init,
+	.irq_ack = sun50i_h6_irq_ack,
 };
 
 static const struct of_device_id of_ths_match[] = {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

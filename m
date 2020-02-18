Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7504B163512
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:33:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h+CZOkb79BR8g/q5X14imLWU1lkO5HZ1fXxLFmgEEEc=; b=LzDanglU60gvusi8c+JQoE5A3W
	0MNe+7SLLfQIbsRNzKmiNu2B287cqDXlVWxRjsRFAG2x62xuMd9qLcAvuUWqzOG218AvQ7GZY2cjP
	0XChKDSZHqvGPfcYC116nSNuVkJJClpP6x982FwC3eeOwxHMlyqLsGOZsKiv0iPYzhV6GyPHRa7h/
	I0iZx5VHPPNi7TwucPdf13joyjOyMYeOkMJocduGzjHztWsKlSLv4urWCvJS+rNTv+Flo/WEFEUdH
	H20V/jpgIWn8KMXehxK6K+Qz5Lzdl/AJ/l73Mr9aay2NMYsBXFTcP/yfGq4ppoCZ7SeKvRqxTX11I
	KGQDqIpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AUJ-00012M-7P; Tue, 18 Feb 2020 21:33:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ATb-0000a2-G0; Tue, 18 Feb 2020 21:32:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A4EF101E;
 Tue, 18 Feb 2020 13:32:18 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 613A83F68F;
 Tue, 18 Feb 2020 13:32:17 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	heiko@sntech.de
Subject: [PATCH v2 2/3] ASoC: rockchip: Make RK3328 GPIO_MUTE control explicit
Date: Tue, 18 Feb 2020 21:31:59 +0000
Message-Id: <5bc383ed1832f0f5d1dcb3c97ad92fd68e5217e3.1581376744.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1581376744.git.robin.murphy@arm.com>
References: <cover.1581376744.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_133219_625058_2DD6C31D 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The RK3328 reference design uses an external line driver IC as a buffer
on the analog codec output, enabled by the GPIO_MUTE pin, and such a
configuration is currently assumed in the codec driver's direct poking
of GRF_SOC_CON10 to control the GPIO_MUTE output value. However, some
boards wire up analog audio yet use that pin for some other purpose, so
that assumption doesn't always hold. Update this functionality to rely
on an explicit GPIO descriptor, such that it can be managed at the
board level.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2:
 - add fallback case to avoid possible Rock64 regressions
 - propagate GPIO errors; "optional" doesn't really mean "ignore
   brokenness if present"

 sound/soc/codecs/rk3328_codec.c | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/sound/soc/codecs/rk3328_codec.c b/sound/soc/codecs/rk3328_codec.c
index 287c962ba00d..115706a55577 100644
--- a/sound/soc/codecs/rk3328_codec.c
+++ b/sound/soc/codecs/rk3328_codec.c
@@ -7,6 +7,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/device.h>
+#include <linux/gpio/consumer.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
@@ -31,7 +32,7 @@
 
 struct rk3328_codec_priv {
 	struct regmap *regmap;
-	struct regmap *grf;
+	struct gpio_desc *mute;
 	struct clk *mclk;
 	struct clk *pclk;
 	unsigned int sclk;
@@ -106,16 +107,6 @@ static int rk3328_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	return 0;
 }
 
-static void rk3328_analog_output(struct rk3328_codec_priv *rk3328, int mute)
-{
-	unsigned int val = BIT(17);
-
-	if (mute)
-		val |= BIT(1);
-
-	regmap_write(rk3328->grf, RK3328_GRF_SOC_CON10, val);
-}
-
 static int rk3328_digital_mute(struct snd_soc_dai *dai, int mute)
 {
 	struct rk3328_codec_priv *rk3328 =
@@ -205,7 +196,7 @@ static int rk3328_codec_open_playback(struct rk3328_codec_priv *rk3328)
 	}
 
 	msleep(rk3328->spk_depop_time);
-	rk3328_analog_output(rk3328, 1);
+	gpiod_set_value(rk3328->mute, 0);
 
 	regmap_update_bits(rk3328->regmap, HPOUTL_GAIN_CTRL,
 			   HPOUTL_GAIN_MASK, OUT_VOLUME);
@@ -246,7 +237,7 @@ static int rk3328_codec_close_playback(struct rk3328_codec_priv *rk3328)
 {
 	size_t i;
 
-	rk3328_analog_output(rk3328, 0);
+	gpiod_set_value(rk3328->mute, 1);
 
 	regmap_update_bits(rk3328->regmap, HPOUTL_GAIN_CTRL,
 			   HPOUTL_GAIN_MASK, 0);
@@ -446,7 +437,6 @@ static int rk3328_platform_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "missing 'rockchip,grf'\n");
 		return PTR_ERR(grf);
 	}
-	rk3328->grf = grf;
 	/* enable i2s_acodec_en */
 	regmap_write(grf, RK3328_GRF_SOC_CON2,
 		     (BIT(14) << 16 | BIT(14)));
@@ -458,7 +448,18 @@ static int rk3328_platform_probe(struct platform_device *pdev)
 		rk3328->spk_depop_time = 200;
 	}
 
-	rk3328_analog_output(rk3328, 0);
+	rk3328->mute = gpiod_get_optional(&pdev->dev, "mute", GPIOD_OUT_HIGH);
+	if (IS_ERR(rk3328->mute))
+		return PTR_ERR(rk3328->mute);
+	/*
+	 * Rock64 is the only supported platform to have widely relied on
+	 * this; if we do happen to come across an old DTB, just leave the
+	 * external mute forced off.
+	 */
+	if (!rk3328->mute && of_machine_is_compatible("pine64,rock64")) {
+		dev_warn(&pdev->dev, "assuming implicit control of GPIO_MUTE; update devicetree if possible\n");
+		regmap_write(grf, RK3328_GRF_SOC_CON10, BIT(17) | BIT(1));
+	}
 
 	rk3328->mclk = devm_clk_get(&pdev->dev, "mclk");
 	if (IS_ERR(rk3328->mclk))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

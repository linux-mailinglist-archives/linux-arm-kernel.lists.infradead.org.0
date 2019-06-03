Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A103372A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZ2Bh0o3ZeTSYKplxI6anb3TnZRT3kb+KrgU8gpzAqA=; b=VYepyIniue7di8
	eA5WXffmvxyyK5GDjV2TE4UzldKn6stC8mOUJYvs+nTPNmkwOwr+LajdRzwkW6UAdxlM1imPDguZQ
	UQAtHZBKPmTpnKj3JlMqt+ZfqIMf1cz5r2oEX3AjXw8xIzq+wJx9yCCz9duUmQ8zHilCC6m+cSQjl
	tTtLWoPCtvbAOW3QbK1e3StZquF2VMqdzSfhCLeezFm9fhhpOqHKXc9idJzmhSDw57hlkuQ9ZdJZl
	oqIQIDSEaazDNO2oOdN6di472fvOlErsprYobsEwAN9N00X9Z+6FxrLIpnpzHr8ddUZ7WYAONq5OE
	eMfsAkgxqiMEF2RrfV1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr4q-0003EW-R4; Mon, 03 Jun 2019 17:48:56 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr3h-0001oF-J2
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:47:46 +0000
Received: by mail-lj1-x241.google.com with SMTP id s21so6435781lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+dU3J6vSB6rrSmznGSHAJH8TKN9OO1b+UvKtsB3mqw0=;
 b=OAgRJox6KpAoi7IKo7tD5dHGkky2hlNqvyaujK1utMnRUoKiedl7nyAASuM24/Aiki
 st5JKW5/rZbJzL5D3hJLlU31T1de7hW7gWJA4sNI8DrwYMnEKV86vvz8FDfdo3urs2OE
 xDpZOKVjmBjCSFOSE2XBv2LKIBgrIbli6DGARQ9LTg/eEEuD0Kjed5FawfT/L3xoGmNm
 2hIdMzfl2Yj+N/UqaGcv5LT6TMtSiFyz4PqY4ZzytQIsldhU3oPnolntRK6bi0cYaZhw
 59BQiDH1aa9L0oLybmLCjP0YoKUGMQIQtigs7bFEvtS7e2ldBqQFmgUEYIolSV/nsHEQ
 HJUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+dU3J6vSB6rrSmznGSHAJH8TKN9OO1b+UvKtsB3mqw0=;
 b=JV4zcv6oIHcJgyrevqt+tMEPY+QXthEskxibwtJPTLXaUmHuIYJo0mrGEOnxVMhb0J
 7cOr2CmA6ClY8PbGDfG2mqFXMw0fi7jqPohGqWa0Ebcru5kcFA1I3ffIC+nRkdyhCu2t
 zB+aLf79Ms8Knv0P0beCczzsB9i1gx8qTsXeX3rwTVMckPM3oygl/VncApsN7jeDlMeU
 pmrjKtbCruXrNO4F5KadvTuLf7LWRjZIhTxLldc8TzdT6Ssvdbq98aoAUqM2sRnQWRxM
 e3aOjtsh8uOsfntxt/mp5kwyARg2I1Kgd1EwT6kiKUH12kxb863Owx6vUX0Yk0nHFX7D
 s70A==
X-Gm-Message-State: APjAAAXcGl/aFdtuH65E6qCxBinyPO9unBYdpBPrLHxAE/bAiRnHCiIO
 p42n9p7SpF3ux1H3uzI9HOY=
X-Google-Smtp-Source: APXvYqwROrB7Vb+pbcTPCi0P/yuE7aA4w2nDEZebnoQXexL+Iy3qCA6eOa42yRSvYnC8WznFmmt7LQ==
X-Received: by 2002:a2e:2f12:: with SMTP id v18mr14171586ljv.196.1559584063684; 
 Mon, 03 Jun 2019 10:47:43 -0700 (PDT)
Received: from localhost.localdomain ([188.150.253.81])
 by smtp.gmail.com with ESMTPSA id n7sm2803532lfi.68.2019.06.03.10.47.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:47:42 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 6/9] ASoC: sun4i-i2s: Add multi-lane functionality
Date: Mon,  3 Jun 2019 19:47:32 +0200
Message-Id: <20190603174735.21002-7-codekipper@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603174735.21002-1-codekipper@gmail.com>
References: <20190603174735.21002-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104745_625017_7501F90B 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, Marcus Cooper <codekipper@gmail.com>,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, be17068@iperbole.bo.it,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcus Cooper <codekipper@gmail.com>

The i2s block supports multi-lane i2s output however this functionality
is only possible in earlier SoCs where the pins are exposed and for
the i2s block used for HDMI audio on the later SoCs.

To enable this functionality, an optional property has been added to
the bindings.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 44 ++++++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index bca73b3c0d74..75217fb52bfa 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -23,7 +23,7 @@
 
 #define SUN4I_I2S_CTRL_REG		0x00
 #define SUN4I_I2S_CTRL_SDO_EN_MASK		GENMASK(11, 8)
-#define SUN4I_I2S_CTRL_SDO_EN(sdo)			BIT(8 + (sdo))
+#define SUN4I_I2S_CTRL_SDO_EN(lines)		(((1 << lines) - 1) << 8)
 #define SUN4I_I2S_CTRL_MODE_MASK		BIT(5)
 #define SUN4I_I2S_CTRL_MODE_SLAVE			(1 << 5)
 #define SUN4I_I2S_CTRL_MODE_MASTER			(0 << 5)
@@ -355,14 +355,23 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 	int sr, wss, channels;
 	u32 width;
+	int lines;
 
 	channels = params_channels(params);
-	if (channels != 2) {
+	if ((channels > dai->driver->playback.channels_max) ||
+		(channels < dai->driver->playback.channels_min)) {
 		dev_err(dai->dev, "Unsupported number of channels: %d\n",
 			channels);
 		return -EINVAL;
 	}
 
+	lines = (channels + 1) / 2;
+
+	/* Enable the required output lines */
+	regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
+			   SUN4I_I2S_CTRL_SDO_EN_MASK,
+			   SUN4I_I2S_CTRL_SDO_EN(lines));
+
 	if (i2s->variant->is_h3_i2s_based) {
 		regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
 				   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
@@ -373,8 +382,19 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	}
 
 	/* Map the channels for playback and capture */
-	regmap_field_write(i2s->field_txchanmap, 0x76543210);
 	regmap_field_write(i2s->field_rxchanmap, 0x00003210);
+	regmap_field_write(i2s->field_txchanmap, 0x10);
+	if (i2s->variant->is_h3_i2s_based) {
+		if (channels > 2)
+			regmap_write(i2s->regmap,
+				     SUN8I_I2S_TX_CHAN_MAP_REG+4, 0x32);
+		if (channels > 4)
+			regmap_write(i2s->regmap,
+				     SUN8I_I2S_TX_CHAN_MAP_REG+8, 0x54);
+		if (channels > 6)
+			regmap_write(i2s->regmap,
+				     SUN8I_I2S_TX_CHAN_MAP_REG+12, 0x76);
+	}
 
 	/* Configure the channels */
 	regmap_field_write(i2s->field_txchansel,
@@ -1057,9 +1077,10 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
 static int sun4i_i2s_probe(struct platform_device *pdev)
 {
 	struct sun4i_i2s *i2s;
+	struct snd_soc_dai_driver *soc_dai;
 	struct resource *res;
 	void __iomem *regs;
-	int irq, ret;
+	int irq, ret, val;
 
 	i2s = devm_kzalloc(&pdev->dev, sizeof(*i2s), GFP_KERNEL);
 	if (!i2s)
@@ -1126,6 +1147,19 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
 	i2s->capture_dma_data.addr = res->start + SUN4I_I2S_FIFO_RX_REG;
 	i2s->capture_dma_data.maxburst = 8;
 
+	soc_dai = devm_kmemdup(&pdev->dev, &sun4i_i2s_dai,
+			       sizeof(*soc_dai), GFP_KERNEL);
+	if (!soc_dai) {
+		ret = -ENOMEM;
+		goto err_pm_disable;
+	}
+
+	if (!of_property_read_u32(pdev->dev.of_node,
+				  "allwinner,playback-channels", &val)) {
+		if (val >= 2 && val <= 8)
+			soc_dai->playback.channels_max = val;
+	}
+
 	pm_runtime_enable(&pdev->dev);
 	if (!pm_runtime_enabled(&pdev->dev)) {
 		ret = sun4i_i2s_runtime_resume(&pdev->dev);
@@ -1135,7 +1169,7 @@ static int sun4i_i2s_probe(struct platform_device *pdev)
 
 	ret = devm_snd_soc_register_component(&pdev->dev,
 					      &sun4i_i2s_component,
-					      &sun4i_i2s_dai, 1);
+					      soc_dai, 1);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not register DAI\n");
 		goto err_suspend;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

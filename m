Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E080D8901
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=880pJsZswnSAyiDpfTRz/KsGNAmyRnhFPocQq03TJGE=; b=kWdkwdWig6HL3U
	sWDHtX+rsmc3UNFXlBJ49SIk5GE9xDw07II3DC8n8FmK/FXYYc/wqtghgARqs3MYx3nDWqebT5wIy
	Akfr2vdHQmSmYLKGVJ6FlvxI94OakQrruzzR4xnFGYGl/uoH2CmCegWL6vJ+cHVzHF0tEeMorRltf
	Y/6x/NlOC4j9e/H8EgmIrkcvmLT8QS0/8H2iShB/OMZ/d/pqle16KRyfeOiQ3onwcwJaAp6hWVUqs
	I3QMVIgM+yMVnRPwqSQd5qwFr+ZhiQO7dgGbr32wDkii0v9AgrSMFXJdj8Y2X1LKm20cW3glRjzm6
	WdgKFiAALj0Dqpc+hgiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdR9-0001Gf-Q4; Wed, 16 Oct 2019 07:09:35 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdPV-0008Qa-Rk
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:07:58 +0000
Received: by mail-lf1-x144.google.com with SMTP id u28so16510614lfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gNHRYR580X8x1bE0nzjD1LYtjZv2eba+ww3yQC9CKKc=;
 b=ikO4NfeyeXrymHF438enHazKmZZZPYbwm6I0qSBXsa9riO9NnbGai0KEZrUmSUkNg4
 119kh6MVaNNT5ouEu3lH2n3WmYUt0u/29F/bftN6QfYukFMN4ZZS2COCTX7RT6Ikm0ga
 ME9aZ2drClIHPcUbfvavkZwMco8ld4KB32V4uX7JHPYAVwihRGHKlN6EL5CO/UA+wFct
 2TExnxRZF5usoAczylEYWs7pLFnlKX+6P9IpPmz9tH/DQARFftKrgmzBrNsSCjL70Ft1
 1Yahh/F36xCzCjC6y3hDZDLtM4gf29NEVP/2TK1lt/G+NIB2MXhCXigsgF1sYJFG1/rG
 vpuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gNHRYR580X8x1bE0nzjD1LYtjZv2eba+ww3yQC9CKKc=;
 b=DrrFqTXsaq6RopDvzDW7FBG5X9HGe6momEM7vvmqVFegkSKUuqAaxiIoTc+NXqkrPm
 Ut1YnlQhc//CmJbEbBbmFbrVW7VGu0CjI36zf3WkaaQFe9plFhMV/5Evuaa3uNMDIyj0
 dKhun81DAvOCPtGJ3GWRpAwC4eZkax9yhVKepbbgtHmLjTcAw5RG3dfGI3mZiaENB0T4
 R/UnlG2b1JRerATmFoq+CZB7r4T2Ff5kfE3Dhqbx+AkwfhhFaQj4eyHYBmAoAPe/J+I1
 x0Ystz4e1nIuUaRdNAB+u5ScsfHCQwefCl5wSslJg8wTLItH7E4sE865+XDlpdToBhrx
 Ml5w==
X-Gm-Message-State: APjAAAUzALhnoz/vHs8pJYz3Hgfs1FnmgH/hCNqYsW/x3oF/01egzuy1
 tW2kdsVbfCwafd0OCBQyTwQ=
X-Google-Smtp-Source: APXvYqwvS4oTHLlcSCrSyE3GLnjqhb/Ba3AQr1ESYOQy3s1O/N0QXKPawAaVOtKRAEgz+4RKfDFLgg==
X-Received: by 2002:ac2:4c99:: with SMTP id d25mr24948360lfl.112.1571209671855; 
 Wed, 16 Oct 2019 00:07:51 -0700 (PDT)
Received: from localhost.localdomain (c213-102-65-51.bredband.comhem.se.
 [213.102.65.51])
 by smtp.gmail.com with ESMTPSA id j191sm1361493lfj.49.2019.10.16.00.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:07:51 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 7/7] ASoC: sun4i-i2s: Add support for H6 I2S
Date: Wed, 16 Oct 2019 09:07:40 +0200
Message-Id: <20191016070740.121435-8-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016070740.121435-1-codekipper@gmail.com>
References: <20191016070740.121435-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_000754_739026_D4F93D45 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, alsa-devel@alsa-project.org,
 Marcus Cooper <codekipper@gmail.com>, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, be17068@iperbole.bo.it, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jernej Skrabec <jernej.skrabec@siol.net>

H6 I2S is very similar to that in H3, except it supports up to 16
channels.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 143 ++++++++++++++++++++++++++++++++++++
 1 file changed, 143 insertions(+)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 63ae9da180f2..564b31788f29 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -126,6 +126,21 @@
 #define SUN8I_I2S_RX_CHAN_SEL_REG	0x54
 #define SUN8I_I2S_RX_CHAN_MAP_REG	0x58
 
+/* Defines required for sun50i-h6 support */
+#define SUN50I_H6_I2S_TX_CHAN_SEL_OFFSET_MASK	GENMASK(21, 20)
+#define SUN50I_H6_I2S_TX_CHAN_SEL_OFFSET(offset)	((offset) << 20)
+#define SUN50I_H6_I2S_TX_CHAN_SEL_MASK		GENMASK(19, 16)
+#define SUN50I_H6_I2S_TX_CHAN_SEL(chan)		((chan - 1) << 16)
+#define SUN50I_H6_I2S_TX_CHAN_EN_MASK		GENMASK(15, 0)
+#define SUN50I_H6_I2S_TX_CHAN_EN(num_chan)	(((1 << num_chan) - 1))
+
+#define SUN50I_H6_I2S_TX_CHAN_MAP0_REG	0x44
+#define SUN50I_H6_I2S_TX_CHAN_MAP1_REG	0x48
+
+#define SUN50I_H6_I2S_RX_CHAN_SEL_REG	0x64
+#define SUN50I_H6_I2S_RX_CHAN_MAP0_REG	0x68
+#define SUN50I_H6_I2S_RX_CHAN_MAP1_REG	0x6C
+
 struct sun4i_i2s;
 
 /**
@@ -484,6 +499,24 @@ static void sun8i_i2s_set_rxchanoffset(const struct sun4i_i2s *i2s)
 			   SUN8I_I2S_TX_CHAN_OFFSET(i2s->offset));
 }
 
+static void sun50i_h6_i2s_set_txchanoffset(const struct sun4i_i2s *i2s, int output)
+{
+	if (output >= 0 && output < 4)
+		regmap_update_bits(i2s->regmap,
+				   SUN8I_I2S_TX_CHAN_SEL_REG + (output * 4),
+				   SUN50I_H6_I2S_TX_CHAN_SEL_OFFSET_MASK,
+				   SUN50I_H6_I2S_TX_CHAN_SEL_OFFSET(i2s->offset));
+
+}
+
+static void sun50i_h6_i2s_set_rxchanoffset(const struct sun4i_i2s *i2s)
+{
+	regmap_update_bits(i2s->regmap,
+			   SUN50I_H6_I2S_RX_CHAN_SEL_REG,
+			   SUN50I_H6_I2S_TX_CHAN_SEL_OFFSET_MASK,
+			   SUN50I_H6_I2S_TX_CHAN_SEL_OFFSET(i2s->offset));
+}
+
 static void sun8i_i2s_set_txchanen(const struct sun4i_i2s *i2s, int output,
 				   int channel)
 {
@@ -502,6 +535,25 @@ static void sun8i_i2s_set_rxchanen(const struct sun4i_i2s *i2s, int channel)
 			   SUN8I_I2S_TX_CHAN_EN(channel));
 }
 
+
+static void sun50i_h6_i2s_set_txchanen(const struct sun4i_i2s *i2s, int output,
+				       int channel)
+{
+	if (output >= 0 && output < 4)
+		regmap_update_bits(i2s->regmap,
+				   SUN8I_I2S_TX_CHAN_SEL_REG + (output * 4),
+				   SUN50I_H6_I2S_TX_CHAN_EN_MASK,
+				   SUN50I_H6_I2S_TX_CHAN_EN(channel));
+}
+
+static void sun50i_h6_i2s_set_rxchanen(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_update_bits(i2s->regmap,
+			   SUN50I_H6_I2S_RX_CHAN_SEL_REG,
+			   SUN50I_H6_I2S_TX_CHAN_EN_MASK,
+			   SUN50I_H6_I2S_TX_CHAN_EN(channel));
+}
+
 static void sun4i_i2s_set_txchansel(const struct sun4i_i2s *i2s, int output,
 				    int channel)
 {
@@ -536,6 +588,24 @@ static void sun8i_i2s_set_rxchansel(const struct sun4i_i2s *i2s, int channel)
 			   SUN8I_I2S_TX_CHAN_SEL(channel));
 }
 
+static void sun50i_h6_i2s_set_txchansel(const struct sun4i_i2s *i2s, int output,
+				       int channel)
+{
+	if (output >= 0 && output < 4)
+		regmap_update_bits(i2s->regmap,
+				   SUN8I_I2S_TX_CHAN_SEL_REG + (output * 4),
+				   SUN50I_H6_I2S_TX_CHAN_SEL_MASK,
+				   SUN50I_H6_I2S_TX_CHAN_SEL(channel));
+}
+
+static void sun50i_h6_i2s_set_rxchansel(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_update_bits(i2s->regmap,
+			   SUN50I_H6_I2S_RX_CHAN_SEL_REG,
+			   SUN50I_H6_I2S_TX_CHAN_SEL_MASK,
+			   SUN50I_H6_I2S_TX_CHAN_SEL(channel));
+}
+
 static void sun4i_i2s_set_txchanmap(const struct sun4i_i2s *i2s, int output,
 				    int channel)
 {
@@ -561,6 +631,20 @@ static void sun8i_i2s_set_rxchanmap(const struct sun4i_i2s *i2s, int channel)
 	regmap_write(i2s->regmap, SUN8I_I2S_RX_CHAN_MAP_REG, channel);
 }
 
+static void sun50i_h6_i2s_set_txchanmap(const struct sun4i_i2s *i2s, int output,
+				       int channel)
+{
+	if (output >= 0 && output < 4)
+		regmap_write(i2s->regmap,
+			     SUN50I_H6_I2S_TX_CHAN_MAP1_REG + (output * 8),
+			     channel);
+}
+
+static void sun50i_h6_i2s_set_rxchanmap(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_write(i2s->regmap, SUN50I_H6_I2S_RX_CHAN_MAP1_REG, channel);
+}
+
 static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			       struct snd_pcm_hw_params *params,
 			       struct snd_soc_dai *dai)
@@ -1073,6 +1157,22 @@ static const struct reg_default sun8i_i2s_reg_defaults[] = {
 	{ SUN8I_I2S_RX_CHAN_MAP_REG, 0x00000000 },
 };
 
+static const struct reg_default sun50i_i2s_reg_defaults[] = {
+	{ SUN4I_I2S_CTRL_REG, 0x00060000 },
+	{ SUN4I_I2S_FMT0_REG, 0x00000033 },
+	{ SUN4I_I2S_FMT1_REG, 0x00000030 },
+	{ SUN4I_I2S_FIFO_CTRL_REG, 0x000400f0 },
+	{ SUN4I_I2S_DMA_INT_CTRL_REG, 0x00000000 },
+	{ SUN4I_I2S_CLK_DIV_REG, 0x00000000 },
+	{ SUN8I_I2S_CHAN_CFG_REG, 0x00000000 },
+	{ SUN8I_I2S_TX_CHAN_SEL_REG, 0x00000000 },
+	{ SUN50I_H6_I2S_TX_CHAN_MAP0_REG, 0x00000000 },
+	{ SUN50I_H6_I2S_TX_CHAN_MAP1_REG, 0x00000000 },
+	{ SUN50I_H6_I2S_RX_CHAN_SEL_REG, 0x00000000 },
+	{ SUN50I_H6_I2S_RX_CHAN_MAP0_REG, 0x00000000 },
+	{ SUN50I_H6_I2S_RX_CHAN_MAP1_REG, 0x00000000 },
+};
+
 static const struct regmap_config sun4i_i2s_regmap_config = {
 	.reg_bits	= 32,
 	.reg_stride	= 4,
@@ -1100,6 +1200,19 @@ static const struct regmap_config sun8i_i2s_regmap_config = {
 	.volatile_reg	= sun8i_i2s_volatile_reg,
 };
 
+static const struct regmap_config sun50i_i2s_regmap_config = {
+	.reg_bits	= 32,
+	.reg_stride	= 4,
+	.val_bits	= 32,
+	.max_register	= SUN50I_H6_I2S_RX_CHAN_MAP1_REG,
+	.cache_type	= REGCACHE_FLAT,
+	.reg_defaults	= sun50i_i2s_reg_defaults,
+	.num_reg_defaults	= ARRAY_SIZE(sun50i_i2s_reg_defaults),
+	.writeable_reg	= sun4i_i2s_wr_reg,
+	.readable_reg	= sun8i_i2s_rd_reg,
+	.volatile_reg	= sun8i_i2s_volatile_reg,
+};
+
 static int sun4i_i2s_runtime_resume(struct device *dev)
 {
 	struct sun4i_i2s *i2s = dev_get_drvdata(dev);
@@ -1282,6 +1395,32 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.set_rxchanmap		= sun4i_i2s_set_rxchanmap,
 };
 
+static const struct sun4i_i2s_quirks sun50i_h6_i2s_quirks = {
+	.has_reset		= true,
+	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
+	.sun4i_i2s_regmap	= &sun50i_i2s_regmap_config,
+	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
+	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
+	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
+	.bclk_dividers		= sun8i_i2s_clk_div,
+	.num_bclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
+	.mclk_dividers		= sun8i_i2s_clk_div,
+	.num_mclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
+	.get_bclk_parent_rate	= sun8i_i2s_get_bclk_parent_rate,
+	.get_sr			= sun8i_i2s_get_sr_wss,
+	.get_wss		= sun8i_i2s_get_sr_wss,
+	.set_chan_cfg		= sun8i_i2s_set_chan_cfg,
+	.set_fmt		= sun8i_i2s_set_soc_fmt,
+	.set_txchanoffset	= sun50i_h6_i2s_set_txchanoffset,
+	.set_rxchanoffset	= sun50i_h6_i2s_set_rxchanoffset,
+	.set_txchanen		= sun50i_h6_i2s_set_txchanen,
+	.set_rxchanen		= sun50i_h6_i2s_set_rxchanen,
+	.set_txchansel		= sun50i_h6_i2s_set_txchansel,
+	.set_rxchansel		= sun50i_h6_i2s_set_rxchansel,
+	.set_txchanmap		= sun50i_h6_i2s_set_txchanmap,
+	.set_rxchanmap		= sun50i_h6_i2s_set_rxchanmap,
+};
+
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
 					struct sun4i_i2s *i2s)
 {
@@ -1451,6 +1590,10 @@ static const struct of_device_id sun4i_i2s_match[] = {
 		.compatible = "allwinner,sun50i-a64-codec-i2s",
 		.data = &sun50i_a64_codec_i2s_quirks,
 	},
+	{
+		.compatible = "allwinner,sun50i-h6-i2s",
+		.data = &sun50i_h6_i2s_quirks,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, sun4i_i2s_match);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

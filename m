Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730008CBAB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C30q3ZQhyW4sb+BBFb3Fg9xJ5T5yYxBK5yhVd+ujD+0=; b=KtXEf/rOh4x7Zh
	7IFv1SYPc9+8vk882GuTvYfhncTlzYxirzpCgcReSdeK6isR5WDku8j7KDDOyIkC1dCA7Q0Caagzj
	w+oBVAM1Cbv8shdxlm/TziwhlzBYrgxo9/4HpBlTY/GQM2sBFzF6dZvnm+K7dMqiWmJIhNT1mBc+X
	PoOWLwQjf54iK/IEighjLz7P7bIsFmaumTkCIQU30AkebnojX8TYF7OwJhnok1f89EOflL8LGu/Ui
	NRMOyRyqEMBKOCrdxNlAafTcwCTrq/+7LxGfmpOcYAOCcCY8e7fan9fLmKNgkIMzFCKqYygnhSyUO
	tihNLA0s78MzasBvbDFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmW2-0003CY-Bn; Wed, 14 Aug 2019 06:12:10 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmT9-0008He-TG
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:13 +0000
Received: by mail-lf1-x144.google.com with SMTP id p197so78416165lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hQI2wB1ddyifNXdhbtWpyOmR4Q6LJuhJNbSf0B0Jvx0=;
 b=tQfqyRvTOqN3BPllHfoaHK31M0DRGttsP6gCGd/3dt4ZbyEQ/ssbO/gSCpecTOAqCY
 q1VjJaciyAmxO+EWp+FzJwFw9Mrqgqw8YhX9zpcUY4yS2WQSPmIyAWAI90BbTFsOXNqf
 DqAlXB1hUAUhzIUWwab0o9GaibZ6y2WzrBf9PLYXpXFEipTjGAjXVLMf0ZDsoQtiO+hR
 iVbPX/TMFjsA36FLXoMIIP3IXutbboO2DY3WC9CTYY4MNtfTZ3R6OXFUBbuePyeYTjaq
 1P8ynMCsrnh90LeIBSjbpU14LIosMmfGKqMn2UGnsiQwgdz89FUebw53tHhCqQ5V0EBc
 aFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hQI2wB1ddyifNXdhbtWpyOmR4Q6LJuhJNbSf0B0Jvx0=;
 b=eVqwcW/jcXQPAd1Q6+dVtY2Un2K/f0NpIDAln2I3pmB8EFrCSsJZ+pwozM4OoS1XHr
 hpEX0k2cmOt3fpUv4025WngZX/CEu/6OsNlR3hCqi/UtHLv70h1ZUwhrBc+nHPQiy2I1
 Nu5nEMSaDyzRlAXnXTaPxoeTCwzRSt0jp4WK2A861GM4nlPqPdMspZYUQtHkfM4Glcpy
 4WXothoHMCxWVUlO+9PGB7qyhBAjYaiYzm4wdCVYVLJRuMIxZiiO0p8o+vhyO31aZdiN
 bDzjsyMlWzYCUHAVZ5Xa6OXv2PMZd2NfWRhBeCPHa1zKF0lHvOyPqviraO8tzK7uYh2l
 uWmw==
X-Gm-Message-State: APjAAAUbfK7oHHnb3d2oqV/fX8HGN0/aRHOTWoSvRbdNxzvv1Cis9OT7
 ybLxRF8qJKbt1fZpAA1BUuA=
X-Google-Smtp-Source: APXvYqwIL5h8Tw6O84IroBFXAmJf8gwUp6ra8pjybOnE/iyy5hXNljBh3DZgvm8hBW3SqnbdKveNIw==
X-Received: by 2002:a19:750b:: with SMTP id y11mr22463929lfe.99.1565762949820; 
 Tue, 13 Aug 2019 23:09:09 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:09 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 07/15] ASoC: sun4i-i2s: Add functions for RX and TX channel
 selects
Date: Wed, 14 Aug 2019 08:08:46 +0200
Message-Id: <20190814060854.26345-8-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230912_062670_0B423D80 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, Marcus Cooper <codekipper@gmail.com>,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org, be17068@iperbole.bo.it,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcus Cooper <codekipper@gmail.com>

Newer SoCs like the H6 have the channel select bits in a different
positions than what is on the H3. As we will eventually add multi-
channel support then create function calls as opposed to regmap
fields to add support for different devices.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 87 ++++++++++++++++++++++---------------
 1 file changed, 53 insertions(+), 34 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index ad2ff83deeb7..0b98adde0717 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -115,6 +115,8 @@
 #define SUN8I_I2S_TX_CHAN_OFFSET(offset)	((offset) << 12)
 #define SUN8I_I2S_TX_CHAN_EN_MASK		GENMASK(11, 4)
 #define SUN8I_I2S_TX_CHAN_EN(num_chan)		(((1 << num_chan) - 1) << 4)
+#define SUN8I_I2S_TX_CHAN_SEL_MASK		GENMASK(2, 0)
+#define SUN8I_I2S_TX_CHAN_SEL(chan)		(chan - 1)
 
 #define SUN8I_I2S_RX_CHAN_SEL_REG	0x54
 #define SUN8I_I2S_RX_CHAN_MAP_REG	0x58
@@ -141,8 +143,6 @@ struct sun4i_i2s;
  * @field_fmt_sext: regmap field to set the sign extension.
  * @field_txchanmap: location of the tx channel mapping register.
  * @field_rxchanmap: location of the rx channel mapping register.
- * @field_txchansel: location of the tx channel select bit fields.
- * @field_rxchansel: location of the rx channel select bit fields.
  */
 struct sun4i_i2s_quirks {
 	bool				has_reset;
@@ -164,8 +164,6 @@ struct sun4i_i2s_quirks {
 	struct reg_field		field_fmt_sext;
 	struct reg_field		field_txchanmap;
 	struct reg_field		field_rxchanmap;
-	struct reg_field		field_txchansel;
-	struct reg_field		field_rxchansel;
 
 	s8	(*get_sr)(const struct sun4i_i2s *, int);
 	s8	(*get_wss)(const struct sun4i_i2s *, int);
@@ -174,6 +172,8 @@ struct sun4i_i2s_quirks {
 	void	(*set_rxchanoffset)(const struct sun4i_i2s *);
 	void	(*set_txchanen)(const struct sun4i_i2s *, int, int);
 	void	(*set_rxchanen)(const struct sun4i_i2s *, int);
+	void	(*set_txchansel)(const struct sun4i_i2s *, int, int);
+	void	(*set_rxchansel)(const struct sun4i_i2s *, int);
 };
 
 struct sun4i_i2s {
@@ -197,8 +197,6 @@ struct sun4i_i2s {
 	struct regmap_field	*field_fmt_sext;
 	struct regmap_field	*field_txchanmap;
 	struct regmap_field	*field_rxchanmap;
-	struct regmap_field	*field_txchansel;
-	struct regmap_field	*field_rxchansel;
 
 	const struct sun4i_i2s_quirks	*variant;
 
@@ -465,6 +463,42 @@ static void sun8i_i2s_set_rxchanen(const struct sun4i_i2s *i2s, int channel)
 			   SUN8I_I2S_TX_CHAN_EN(channel));
 }
 
+static void sun4i_i2s_set_txchansel(const struct sun4i_i2s *i2s, int output,
+				    int channel)
+{
+	/* Configure the channels */
+	regmap_write(i2s->regmap,
+		     SUN4I_I2S_TX_CHAN_SEL_REG,
+		     SUN4I_I2S_CHAN_SEL(channel));
+}
+
+static void sun8i_i2s_set_txchansel(const struct sun4i_i2s *i2s, int output,
+				    int channel)
+{
+	if (output >= 0 && output < 4) {
+		regmap_update_bits(i2s->regmap,
+				   SUN8I_I2S_TX_CHAN_SEL_REG + (output * 4),
+				   SUN8I_I2S_TX_CHAN_SEL_MASK,
+				   SUN8I_I2S_TX_CHAN_SEL(channel));
+	}
+}
+
+static void sun4i_i2s_set_rxchansel(const struct sun4i_i2s *i2s, int channel)
+{
+	/* Configure the channels */
+	regmap_write(i2s->regmap,
+		     SUN4I_I2S_RX_CHAN_SEL_REG,
+		     SUN4I_I2S_CHAN_SEL(channel));
+}
+
+static void sun8i_i2s_set_rxchansel(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_update_bits(i2s->regmap,
+				   SUN8I_I2S_RX_CHAN_SEL_REG,
+				   SUN8I_I2S_TX_CHAN_SEL_MASK,
+				   SUN8I_I2S_TX_CHAN_SEL(channel));
+}
+
 static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			       struct snd_pcm_hw_params *params,
 			       struct snd_soc_dai *dai)
@@ -494,11 +528,8 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	regmap_field_write(i2s->field_rxchanmap, 0x00003210);
 
 	/* Configure the channels */
-	regmap_field_write(i2s->field_txchansel,
-			   SUN4I_I2S_CHAN_SEL(params_channels(params)));
-
-	regmap_field_write(i2s->field_rxchansel,
-			   SUN4I_I2S_CHAN_SEL(params_channels(params)));
+	i2s->variant->set_txchansel(i2s, 0, channels);
+	i2s->variant->set_rxchansel(i2s, channels);
 
 	if (i2s->variant->set_txchanen)
 		i2s->variant->set_txchanen(i2s, 0, channels);
@@ -1048,11 +1079,11 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
 	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
-	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
-	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_format		= sun4i_i2s_set_format,
+	.set_txchansel		= sun4i_i2s_set_txchansel,
+	.set_rxchansel		= sun4i_i2s_set_rxchansel,
 };
 
 static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
@@ -1069,11 +1100,11 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
 	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
-	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
-	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_format		= sun4i_i2s_set_format,
+	.set_txchansel		= sun4i_i2s_set_txchansel,
+	.set_rxchansel		= sun4i_i2s_set_rxchansel,
 };
 
 static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
@@ -1089,11 +1120,11 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
 	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
-	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
-	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
 	.set_format		= sun4i_i2s_set_format,
+	.set_txchansel		= sun4i_i2s_set_txchansel,
+	.set_rxchansel		= sun4i_i2s_set_rxchansel,
 };
 
 static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
@@ -1113,8 +1144,6 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 4, 5),
 	.field_txchanmap	= REG_FIELD(SUN8I_I2S_TX_CHAN_MAP_REG, 0, 31),
 	.field_rxchanmap	= REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
-	.field_txchansel	= REG_FIELD(SUN8I_I2S_TX_CHAN_SEL_REG, 0, 2),
-	.field_rxchansel	= REG_FIELD(SUN8I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
 	.set_format		= sun8i_i2s_set_format,
@@ -1122,6 +1151,8 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.set_rxchanoffset	= sun8i_i2s_set_rxchanoffset,
 	.set_txchanen		= sun8i_i2s_set_txchanen,
 	.set_rxchanen		= sun8i_i2s_set_rxchanen,
+	.set_txchansel		= sun8i_i2s_set_txchansel,
+	.set_rxchansel		= sun8i_i2s_set_rxchansel,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
@@ -1138,11 +1169,11 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
 	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
-	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
-	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_format		= sun4i_i2s_set_format,
+	.set_txchansel		= sun4i_i2s_set_txchansel,
+	.set_rxchansel		= sun4i_i2s_set_rxchansel,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
@@ -1199,19 +1230,7 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
 	i2s->field_rxchanmap =
 			devm_regmap_field_alloc(dev, i2s->regmap,
 						i2s->variant->field_rxchanmap);
-	if (IS_ERR(i2s->field_rxchanmap))
-		return PTR_ERR(i2s->field_rxchanmap);
-
-	i2s->field_txchansel =
-			devm_regmap_field_alloc(dev, i2s->regmap,
-						i2s->variant->field_txchansel);
-	if (IS_ERR(i2s->field_txchansel))
-		return PTR_ERR(i2s->field_txchansel);
-
-	i2s->field_rxchansel =
-			devm_regmap_field_alloc(dev, i2s->regmap,
-						i2s->variant->field_rxchansel);
-	return PTR_ERR_OR_ZERO(i2s->field_rxchansel);
+	return PTR_ERR_OR_ZERO(i2s->field_rxchanmap);
 }
 
 static int sun4i_i2s_probe(struct platform_device *pdev)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

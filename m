Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D068CBAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9ko7tw9iNjrmmortIhtWMRUq7KqOu63sG6SX1EoJBM=; b=dBv6GqjUsc3txa
	+r/P/Vkm8qD7tVvIoaND2HADqPz9uA3b+hlQdYGdUG6qiXmSxSM0iUS+jwkcu45ZvevdOVwodfjBf
	sIY3Z1T++wJeLLAxbgx8UEw0C1DWYm+DMtsyYk/WbRmGhYb9xvQxlRpuWFdZ2LW3hxqLwZwnyaCkh
	aU8dvnCfj4034mAHai+P6nasjsa0I9vFkjSFRSrU56CGl1Nwo2gItgQo85fv+RDPPOSxIzWQXO0Aq
	AFZA3tzlXd9DdTwD4HSh6iuDeXVFHJTJ1AzcGIUOZma+rSnE7gQuyZxBOR8vJAJTUVgYHj8wgsB7w
	L7/I87b1HnLcoEEWgQpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmWQ-0003gG-Hg; Wed, 14 Aug 2019 06:12:34 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmTB-0008Ix-AT
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:15 +0000
Received: by mail-lf1-x141.google.com with SMTP id p197so78416212lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=crtvsiVA889p+9+3ULhoKy8AnLlwvnwK5t1CxkiSENY=;
 b=ToCBLSOQP2Tbb2mZuGiLkwo+MFgVCzv4LqkeCVtoMHRBqlYviYg8VDKNYIb6b9KUmy
 SPwsetaPu/vMo39Zaqb4bAqKnyerRsTWs4Rs+t3W+hBFDnk+BR2QB8f2TQb5k7rQJdae
 Eigdi4Muqdr0OtuVbkZ8U8FOK/T4IXYchK2Pphx9sEdTg8GAu2itr95knGa3AJyKlndr
 BTko6AbNwRk1MRLFbcHcS2imbqq0DHHZFfCPyZdYCs4NBzx1fzxrIePn6t5EvAPWFUqM
 VHZe0nWGvHIHFe7Ezbe0FMJN4ssl+IFsrgCiA5WGl5UzRocNaxpBqV+EbaQR7rO07wSS
 rA6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=crtvsiVA889p+9+3ULhoKy8AnLlwvnwK5t1CxkiSENY=;
 b=goBhUrnUhHVPt9mg0Kyb1lLR39k79w+UT/f9bX4S1rDeMR0QxSAQqWiFYoHeb9g2ce
 gykZx+vBRWTnDztufe1M/rd9hXNx29AwOVD0XjJ7sHw1KHrybFeLjumGixZgR4fHL3v6
 IX4yAe8uUxOrJccQYA2rDQPPk/fMUl82TvYzdjkRnh0xpGqhQ3DUOvhkh/y2330w0Suq
 jbBFn8OglzNSCb6HMGmpU49uSlT89jC6MomcZjznoqMhCSR8gtC5Qj3/dr4RGzzpYu1s
 HrQ6l5AR2t1h0gzfOEOihbllYbIT79OxZunk8NKn7A+nySvaScm0se1xCqlHJV5y7Qyd
 BDmA==
X-Gm-Message-State: APjAAAW3ai6zg7AD49u8AqTaFRFhTA1TJWH6Ymq6dyY8dofjYxiRURcQ
 2NBAPjQsD1Op+BzwWub/Lbo=
X-Google-Smtp-Source: APXvYqy7K8VGrd491BlThMGswYWIy2Y8noAZYydwdGc5tIBLIzfEYE9aozurWHnS6MzmQSbKiUlM5w==
X-Received: by 2002:a19:6753:: with SMTP id e19mr24673629lfj.187.1565762951298; 
 Tue, 13 Aug 2019 23:09:11 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:10 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 08/15] ASoC: sun4i-i2s: Add functions for channel mapping
Date: Wed, 14 Aug 2019 08:08:47 +0200
Message-Id: <20190814060854.26345-9-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230913_983155_3E512FA1 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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

As we will eventually add multi-channel audio support to the i2s
then create function calls as opposed to regmap fields to add
support for different devices.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 71 +++++++++++++++++++++----------------
 1 file changed, 40 insertions(+), 31 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 0b98adde0717..6de3cb41aaf6 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -141,8 +141,6 @@ struct sun4i_i2s;
  * @field_fmt_lrclk: regmap field to set frame polarity.
  * @field_fmt_mode: regmap field to set the operational mode.
  * @field_fmt_sext: regmap field to set the sign extension.
- * @field_txchanmap: location of the tx channel mapping register.
- * @field_rxchanmap: location of the rx channel mapping register.
  */
 struct sun4i_i2s_quirks {
 	bool				has_reset;
@@ -162,8 +160,6 @@ struct sun4i_i2s_quirks {
 	struct reg_field		field_fmt_lrclk;
 	struct reg_field		field_fmt_mode;
 	struct reg_field		field_fmt_sext;
-	struct reg_field		field_txchanmap;
-	struct reg_field		field_rxchanmap;
 
 	s8	(*get_sr)(const struct sun4i_i2s *, int);
 	s8	(*get_wss)(const struct sun4i_i2s *, int);
@@ -174,6 +170,8 @@ struct sun4i_i2s_quirks {
 	void	(*set_rxchanen)(const struct sun4i_i2s *, int);
 	void	(*set_txchansel)(const struct sun4i_i2s *, int, int);
 	void	(*set_rxchansel)(const struct sun4i_i2s *, int);
+	void	(*set_txchanmap)(const struct sun4i_i2s *, int, int);
+	void	(*set_rxchanmap)(const struct sun4i_i2s *, int);
 };
 
 struct sun4i_i2s {
@@ -195,8 +193,6 @@ struct sun4i_i2s {
 	struct regmap_field	*field_fmt_lrclk;
 	struct regmap_field	*field_fmt_mode;
 	struct regmap_field	*field_fmt_sext;
-	struct regmap_field	*field_txchanmap;
-	struct regmap_field	*field_rxchanmap;
 
 	const struct sun4i_i2s_quirks	*variant;
 
@@ -499,6 +495,31 @@ static void sun8i_i2s_set_rxchansel(const struct sun4i_i2s *i2s, int channel)
 				   SUN8I_I2S_TX_CHAN_SEL(channel));
 }
 
+static void sun4i_i2s_set_txchanmap(const struct sun4i_i2s *i2s, int output,
+				    int channel)
+{
+	regmap_write(i2s->regmap, SUN4I_I2S_TX_CHAN_MAP_REG, channel);
+}
+
+static void sun8i_i2s_set_txchanmap(const struct sun4i_i2s *i2s, int output,
+				    int channel)
+{
+	if (output >= 0 && output < 4) {
+		regmap_write(i2s->regmap,
+			     SUN8I_I2S_TX_CHAN_MAP_REG + (output * 4), channel);
+	}
+}
+
+static void sun4i_i2s_set_rxchanmap(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_write(i2s->regmap, SUN4I_I2S_RX_CHAN_MAP_REG, channel);
+}
+
+static void sun8i_i2s_set_rxchanmap(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_write(i2s->regmap, SUN8I_I2S_RX_CHAN_MAP_REG, channel);
+}
+
 static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			       struct snd_pcm_hw_params *params,
 			       struct snd_soc_dai *dai)
@@ -524,8 +545,8 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	}
 
 	/* Map the channels for playback and capture */
-	regmap_field_write(i2s->field_txchanmap, 0x76543210);
-	regmap_field_write(i2s->field_rxchanmap, 0x00003210);
+	i2s->variant->set_txchanmap(i2s, 0, 0x76543210);
+	i2s->variant->set_rxchanmap(i2s, 0x00003210);
 
 	/* Configure the channels */
 	i2s->variant->set_txchansel(i2s, 0, channels);
@@ -1077,13 +1098,13 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.has_slave_select_bit	= true,
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
 	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
-	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
-	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_format		= sun4i_i2s_set_format,
 	.set_txchansel		= sun4i_i2s_set_txchansel,
 	.set_rxchansel		= sun4i_i2s_set_rxchansel,
+	.set_txchanmap		= sun4i_i2s_set_txchanmap,
+	.set_rxchanmap		= sun4i_i2s_set_rxchanmap,
 };
 
 static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
@@ -1098,13 +1119,13 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.has_slave_select_bit	= true,
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
 	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
-	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
-	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_format		= sun4i_i2s_set_format,
 	.set_txchansel		= sun4i_i2s_set_txchansel,
 	.set_rxchansel		= sun4i_i2s_set_rxchansel,
+	.set_txchanmap		= sun4i_i2s_set_txchanmap,
+	.set_rxchanmap		= sun4i_i2s_set_rxchanmap,
 };
 
 static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
@@ -1118,13 +1139,13 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.has_slave_select_bit	= true,
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
-	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
-	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
 	.set_format		= sun4i_i2s_set_format,
 	.set_txchansel		= sun4i_i2s_set_txchansel,
 	.set_rxchansel		= sun4i_i2s_set_rxchansel,
+	.set_txchanmap		= sun4i_i2s_set_txchanmap,
+	.set_rxchanmap		= sun4i_i2s_set_rxchanmap,
 };
 
 static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
@@ -1142,8 +1163,6 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 19, 19),
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_CTRL_REG, 4, 5),
 	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 4, 5),
-	.field_txchanmap	= REG_FIELD(SUN8I_I2S_TX_CHAN_MAP_REG, 0, 31),
-	.field_rxchanmap	= REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
 	.set_format		= sun8i_i2s_set_format,
@@ -1153,6 +1172,8 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.set_rxchanen		= sun8i_i2s_set_rxchanen,
 	.set_txchansel		= sun8i_i2s_set_txchansel,
 	.set_rxchansel		= sun8i_i2s_set_rxchansel,
+	.set_txchanmap		= sun8i_i2s_set_txchanmap,
+	.set_rxchanmap		= sun8i_i2s_set_rxchanmap,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
@@ -1167,13 +1188,13 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
 	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
-	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
-	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_format		= sun4i_i2s_set_format,
 	.set_txchansel		= sun4i_i2s_set_txchansel,
 	.set_rxchansel		= sun4i_i2s_set_rxchansel,
+	.set_txchanmap		= sun4i_i2s_set_txchanmap,
+	.set_rxchanmap		= sun4i_i2s_set_rxchanmap,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
@@ -1218,19 +1239,7 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
 	i2s->field_fmt_sext =
 			devm_regmap_field_alloc(dev, i2s->regmap,
 						i2s->variant->field_fmt_sext);
-	if (IS_ERR(i2s->field_fmt_sext))
-		return PTR_ERR(i2s->field_fmt_sext);
-
-	i2s->field_txchanmap =
-			devm_regmap_field_alloc(dev, i2s->regmap,
-						i2s->variant->field_txchanmap);
-	if (IS_ERR(i2s->field_txchanmap))
-		return PTR_ERR(i2s->field_txchanmap);
-
-	i2s->field_rxchanmap =
-			devm_regmap_field_alloc(dev, i2s->regmap,
-						i2s->variant->field_rxchanmap);
-	return PTR_ERR_OR_ZERO(i2s->field_rxchanmap);
+	return PTR_ERR_OR_ZERO(i2s->field_fmt_sext);
 }
 
 static int sun4i_i2s_probe(struct platform_device *pdev)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

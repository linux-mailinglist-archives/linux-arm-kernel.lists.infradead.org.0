Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2283371D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTbbHe3aSZnEYqR2FCit7XUFtmwioATocX8rp6g4uoM=; b=VvMvJVLPDrSQx/
	hOgpufMLc8RYwbBna80iVvysmhunIuM7CSRIDTFVp33ccxX/2oF+ym4XnbjSTLU6vG2M5Ew14lrHz
	TI8wKGfYe2hlZxqk9VreRuu0EFfx/1kLTVegfb1r7641Ry1YnljjssagGNhsQh2WARj7M+3R01KqF
	P80cM3Z+iysvE0wzc8sxy8gUqRxrNCrG8nB/VA9EKvnHX8zD7zNMHf0KCfFj2eW1fA84rEHLizlRU
	sX20eA6439c5Olc1psUIUiBwHNurqDtKfNz0lg+sE/dxXp8/YNikBgHin0pYMQO0m3FFsyNZjJxnz
	8+nul6SkJsGiKlUybb0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr4C-0002Ib-2f; Mon, 03 Jun 2019 17:48:16 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr3e-0001mn-QC
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:47:45 +0000
Received: by mail-lf1-x143.google.com with SMTP id j29so365840lfk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eTpr5vmYx+4PQoKXbPkvuxXzIJqpQ3J3+BEDcR37i9o=;
 b=AdhORNEGJyXa28hjmgyo+I46Wacno8kLfpt5N581IFLrUXkcGYATKdc9DktXkTSftY
 5fF/V8rwGZYcsdkLst4jq1jCHNY8gcFoUIU3j/DloS+iritZfrBnZSJhDnzOWvYroBR4
 ZQ5VkrfHTCc3CJLwKlxjyT6qOCGMmd+prkSjvi+jjeyjNNsBtt8VY57ecOL1pkUhFD3u
 S+EJH458MjZqPDGIj5/wvIAg5RIR1HywmNaGoZCD6ocmoYSD9mzODxr7G0QAXMCh6Mf6
 ILspvhgjwtR6Ix7P1h6OMQrNN57x6pVeU1MCLYqVrY/xNRnTN3X8Y4V9v5ax0pNByujl
 Ncqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eTpr5vmYx+4PQoKXbPkvuxXzIJqpQ3J3+BEDcR37i9o=;
 b=rKylOI4cBqoWfXP3JWdbxvaqcwtfsK5BZjpAgMMjfn2h3tTF6waR+1MG7DDnMUCm6x
 jYDnkpG9362QdKnhQhYAZtjwELoeARY/Js1ehQ/ZLSp36XI6YPbyUf5LVpZn35DPwxrp
 eRZbRLcKWz4l4zXoTEizQbdd6nTgOi4/JuZ0Gi4auXoGWHqHvBJUF5aWya7CxxLPBpJR
 vIfvdySp+PC8ZA48jjkHrjMI9wpEL1ZONrhOc/eU/Kpl/uMaQkYeh8nlRv1bTPZA+WmI
 rMAllAlfCV+HCuh8baEFwbcmKaawTmIQYIYnzqpyuCm/GD7WvOcmwlMITriVQtywXEHL
 Hm4A==
X-Gm-Message-State: APjAAAWBQWsTb1J20oP2fEktt2Ke3tGLoRr1FA4mQ0ixY8f8XPTw2MPT
 dHK+Uf0IqBalqGZ+Oflb5Uw=
X-Google-Smtp-Source: APXvYqylFVoVP9qdtJwm5SQFqUJALd4A978lZUNaHF+gTwQHftzFhZJcrtyfVrv2UH2MEPy5myCQvg==
X-Received: by 2002:a19:9e53:: with SMTP id h80mr14028072lfe.77.1559584060567; 
 Mon, 03 Jun 2019 10:47:40 -0700 (PDT)
Received: from localhost.localdomain ([188.150.253.81])
 by smtp.gmail.com with ESMTPSA id n7sm2803532lfi.68.2019.06.03.10.47.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:47:40 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 3/9] ASoC: sun4i-i2s: Add regmap field to sign extend sample
Date: Mon,  3 Jun 2019 19:47:29 +0200
Message-Id: <20190603174735.21002-4-codekipper@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603174735.21002-1-codekipper@gmail.com>
References: <20190603174735.21002-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104742_849391_5F1A00E7 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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

On the newer SoCs this is set by default to transfer a 0 after
each sample in each slot. However the platform that this driver
was developed on had the default setting where it padded the
audio gain with zeros. This isn't a problem whilst we have only
support for 16bit audio but with larger sample resolution rates
in the pipeline then it should be fixed to also pad. Without this
the audio gets distorted.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index fd7c37596f21..e2961d8f6e8c 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -134,6 +134,7 @@
  * @field_fmt_bclk: regmap field to set clk polarity.
  * @field_fmt_lrclk: regmap field to set frame polarity.
  * @field_fmt_mode: regmap field to set the operational mode.
+ * @field_fmt_sext: regmap field to set the sign extension.
  * @field_txchanmap: location of the tx channel mapping register.
  * @field_rxchanmap: location of the rx channel mapping register.
  * @field_txchansel: location of the tx channel select bit fields.
@@ -159,6 +160,7 @@ struct sun4i_i2s_quirks {
 	struct reg_field		field_fmt_bclk;
 	struct reg_field		field_fmt_lrclk;
 	struct reg_field		field_fmt_mode;
+	struct reg_field		field_fmt_sext;
 	struct reg_field		field_txchanmap;
 	struct reg_field		field_rxchanmap;
 	struct reg_field		field_txchansel;
@@ -183,6 +185,7 @@ struct sun4i_i2s {
 	struct regmap_field	*field_fmt_bclk;
 	struct regmap_field	*field_fmt_lrclk;
 	struct regmap_field	*field_fmt_mode;
+	struct regmap_field	*field_fmt_sext;
 	struct regmap_field	*field_txchanmap;
 	struct regmap_field	*field_rxchanmap;
 	struct regmap_field	*field_txchansel;
@@ -342,6 +345,9 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 				   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
 				   SUN8I_I2S_FMT0_LRCK_PERIOD(32));
 
+	/* Set sign extension to pad out LSB with 0 */
+	regmap_field_write(i2s->field_fmt_sext, 0);
+
 	return 0;
 }
 
@@ -887,6 +893,7 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.has_slave_select_bit	= true,
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
+	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
 	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
@@ -904,6 +911,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.has_slave_select_bit	= true,
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
+	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
 	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
@@ -944,6 +952,7 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 19, 19),
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_CTRL_REG, 4, 5),
+	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 4, 5),
 	.field_txchanmap	= REG_FIELD(SUN8I_I2S_TX_CHAN_MAP_REG, 0, 31),
 	.field_rxchanmap	= REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN8I_I2S_TX_CHAN_SEL_REG, 0, 2),
@@ -1006,6 +1015,12 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
 	if (IS_ERR(i2s->field_fmt_mode))
 		return PTR_ERR(i2s->field_fmt_mode);
 
+	i2s->field_fmt_sext =
+			devm_regmap_field_alloc(dev, i2s->regmap,
+						i2s->variant->field_fmt_sext);
+	if (IS_ERR(i2s->field_fmt_sext))
+		return PTR_ERR(i2s->field_fmt_sext);
+
 	i2s->field_txchanmap =
 			devm_regmap_field_alloc(dev, i2s->regmap,
 						i2s->variant->field_txchanmap);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

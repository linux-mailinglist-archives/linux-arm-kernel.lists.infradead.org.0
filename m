Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF684D8904
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpZrQkA4zAHPhGIBSMJvvr+fZDxPqXPIkwX3AakUwDw=; b=Lz8L9fuqKcX4hH
	WXr6CmziEfOGpIvaenixmhGWCuW6zBZDm70GSk28OJ8QlkToYngGqqZ5fbM96HpRGWCwOjmcUNZrb
	PBzYIomqBoYUHRZjlFPhC8wFNdJr+MTRMdL0mWfrCNNtO+AAONcAXx6eH13xZe9PO0TbiMHObEcLp
	+l5+xFUeV+rIkbdtJN0PT2C3Q1RQ4cY/WSpIqPYyQRHm33sO5JNBAbpNbKTPAwXvWbrH5fwo0RRK6
	kY6gF2CtxeraWrgNAsX0B+oi4FW8iqS4Jj8eY1P2GuZZ/qNAgkFarAQkOzObwI9tJi9Pkl7Te0fvP
	8H6WCPvSPh471Ayu39DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdRR-0001Wz-4i; Wed, 16 Oct 2019 07:09:53 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdPU-0008PZ-TC
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:07:58 +0000
Received: by mail-lf1-x143.google.com with SMTP id t8so16465925lfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/QPPY5QkhHs1s3gG1LOJFEzZqvjc2ZvRcoQB2OFBw/A=;
 b=N2vjmg8AaJoiQv+VLipY4w6nIR0pNgfsja6KU+gNCTBpcw2zmSAJEXy7AUzdx0OWds
 slW5h5w0UhSs2/em7byNINrF77V3VxW9uV5tylfvkwjKJclhBupdwoL66lbHP2rJ94Lr
 5Udu3xPCtJlaXObW9pVXCZHq9PqYNDfZnwI9Sdmh5D1cSYWLux9K2niTwm9yd9EUk74I
 MVVJ8FXNWivmBKwcFP8lTczrd3AbFbIS3g1pp4rsah+5+liIyzhf7MsN32ATMfUtOC1X
 nspBc4SHGKktM4XGwJ9eUaYSVqfYcyNVQtN3c0T/iqUEgBi4A5uoAlP41U3IjfWtjbyt
 VYCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/QPPY5QkhHs1s3gG1LOJFEzZqvjc2ZvRcoQB2OFBw/A=;
 b=G81omV5QSEIuiWCSuTqNUAKVC0ZO1vuwN7T5naCI9JnC+dD+lcLgEKFa5NH0a+Sa0J
 TEebhj7z4bLT2cqagxv7cMc3x+teYWBj5VMPliJBQ+O/tb+zqVHYMJBt7S4aB4+wOKZx
 DNJxH2/97k6tLcOXeHjXL5TPY7XX+vYSw3a0PAqtqSUXzqjFIS+quYpWtlKAVFAzCREA
 a9ba+vm4QyHFoaPsO++uyXYNGk0+lGK1bkjHL+wYgLksLRm7/uBvzSJu9bd8F13Gcs10
 9Ml2Hu8U6CgVPmDAznJBpkJK5HN+suObuzEsr3CICk0mV4uzPy+hB4odX9Re7C1Gj0de
 HTpQ==
X-Gm-Message-State: APjAAAXvcuTEST9JBe95HPk5kvRbcEoHoo6pTR+LLc+jSKiPGXrlP8MR
 pWvnqmtxlDapzGm58G7fvVE=
X-Google-Smtp-Source: APXvYqzdrpCO5abAkLvtSv/rX+8MUteWRMXrfGnkFwMYSf/c7Hc56GuVD7cEvVo0JuJAt5X9rZ9rRg==
X-Received: by 2002:a19:655b:: with SMTP id c27mr515862lfj.122.1571209667788; 
 Wed, 16 Oct 2019 00:07:47 -0700 (PDT)
Received: from localhost.localdomain (c213-102-65-51.bredband.comhem.se.
 [213.102.65.51])
 by smtp.gmail.com with ESMTPSA id j191sm1361493lfj.49.2019.10.16.00.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:07:47 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 4/7] ASoC: sun4i-i2s: Add functions for RX and TX channel
 selects
Date: Wed, 16 Oct 2019 09:07:37 +0200
Message-Id: <20191016070740.121435-5-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016070740.121435-1-codekipper@gmail.com>
References: <20191016070740.121435-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_000753_029377_641F8445 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
 sound/soc/sunxi/sun4i-i2s.c | 68 ++++++++++++++++++++++++++++++-------
 1 file changed, 56 insertions(+), 12 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 8d28a386872f..19988d61a085 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -120,6 +120,8 @@
 #define SUN8I_I2S_TX_CHAN_OFFSET(offset)	(offset << 12)
 #define SUN8I_I2S_TX_CHAN_EN_MASK		GENMASK(11, 4)
 #define SUN8I_I2S_TX_CHAN_EN(num_chan)		(((1 << num_chan) - 1) << 4)
+#define SUN8I_I2S_TX_CHAN_SEL_MASK		GENMASK(2, 0)
+#define SUN8I_I2S_TX_CHAN_SEL(chan)		(chan - 1)
 
 #define SUN8I_I2S_RX_CHAN_SEL_REG	0x54
 #define SUN8I_I2S_RX_CHAN_MAP_REG	0x58
@@ -161,6 +163,8 @@ struct sun4i_i2s_quirks {
 	void	(*set_rxchanoffset)(const struct sun4i_i2s *);
 	void	(*set_txchanen)(const struct sun4i_i2s *, int, int);
 	void	(*set_rxchanen)(const struct sun4i_i2s *, int);
+	void	(*set_txchansel)(const struct sun4i_i2s *, int, int);
+	void	(*set_rxchansel)(const struct sun4i_i2s *, int);
 };
 
 struct sun4i_i2s {
@@ -405,12 +409,8 @@ static int sun4i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 	regmap_write(i2s->regmap, SUN4I_I2S_RX_CHAN_MAP_REG, 0x00003210);
 
 	/* Configure the channels */
-	regmap_update_bits(i2s->regmap, SUN4I_I2S_TX_CHAN_SEL_REG,
-			   SUN4I_I2S_CHAN_SEL_MASK,
-			   SUN4I_I2S_CHAN_SEL(channels));
-	regmap_update_bits(i2s->regmap, SUN4I_I2S_RX_CHAN_SEL_REG,
-			   SUN4I_I2S_CHAN_SEL_MASK,
-			   SUN4I_I2S_CHAN_SEL(channels));
+	i2s->variant->set_txchansel(i2s, 0, channels);
+	i2s->variant->set_rxchansel(i2s, channels);
 
 	return 0;
 }
@@ -430,12 +430,8 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 	regmap_write(i2s->regmap, SUN8I_I2S_RX_CHAN_MAP_REG, 0x76543210);
 
 	/* Configure the channels */
-	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
-			   SUN4I_I2S_CHAN_SEL_MASK,
-			   SUN4I_I2S_CHAN_SEL(channels));
-	regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
-			   SUN4I_I2S_CHAN_SEL_MASK,
-			   SUN4I_I2S_CHAN_SEL(channels));
+	i2s->variant->set_txchansel(i2s, 0, channels);
+	i2s->variant->set_rxchansel(i2s, channels);
 
 	regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
 			   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
@@ -504,6 +500,40 @@ static void sun8i_i2s_set_rxchanen(const struct sun4i_i2s *i2s, int channel)
 			   SUN8I_I2S_TX_CHAN_EN(channel));
 }
 
+static void sun4i_i2s_set_txchansel(const struct sun4i_i2s *i2s, int output,
+				    int channel)
+{
+	if (output == 0)
+		regmap_write(i2s->regmap,
+			     SUN4I_I2S_TX_CHAN_SEL_REG,
+			     SUN4I_I2S_CHAN_SEL(channel));
+}
+
+static void sun8i_i2s_set_txchansel(const struct sun4i_i2s *i2s, int output,
+				    int channel)
+{
+	if (output >= 0 && output < 4)
+		regmap_update_bits(i2s->regmap,
+				   SUN8I_I2S_TX_CHAN_SEL_REG + (output * 4),
+				   SUN8I_I2S_TX_CHAN_SEL_MASK,
+				   SUN8I_I2S_TX_CHAN_SEL(channel));
+}
+
+static void sun4i_i2s_set_rxchansel(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_write(i2s->regmap,
+		     SUN4I_I2S_RX_CHAN_SEL_REG,
+		     SUN4I_I2S_CHAN_SEL(channel));
+}
+
+static void sun8i_i2s_set_rxchansel(const struct sun4i_i2s *i2s, int channel)
+{
+	regmap_update_bits(i2s->regmap,
+			   SUN8I_I2S_RX_CHAN_SEL_REG,
+			   SUN8I_I2S_TX_CHAN_SEL_MASK,
+			   SUN8I_I2S_TX_CHAN_SEL(channel));
+}
+
 static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			       struct snd_pcm_hw_params *params,
 			       struct snd_soc_dai *dai)
@@ -528,6 +558,10 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 		return ret;
 	}
 
+	/* Configure the channels */
+	i2s->variant->set_txchansel(i2s, 0, channels);
+	i2s->variant->set_rxchansel(i2s, channels);
+
 	if (i2s->variant->set_txchanen)
 		i2s->variant->set_txchanen(i2s, 0, channels);
 
@@ -1118,6 +1152,8 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
 	.set_fmt		= sun4i_i2s_set_soc_fmt,
+	.set_txchansel		= sun4i_i2s_set_txchansel,
+	.set_rxchansel		= sun4i_i2s_set_rxchansel,
 };
 
 static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
@@ -1136,6 +1172,8 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
 	.set_fmt		= sun4i_i2s_set_soc_fmt,
+	.set_txchansel		= sun4i_i2s_set_txchansel,
+	.set_rxchansel		= sun4i_i2s_set_rxchansel,
 };
 
 /*
@@ -1159,6 +1197,8 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
 	.set_fmt		= sun4i_i2s_set_soc_fmt,
+	.set_txchansel		= sun4i_i2s_set_txchansel,
+	.set_rxchansel		= sun4i_i2s_set_rxchansel,
 };
 
 static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
@@ -1181,6 +1221,8 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.set_rxchanoffset	= sun8i_i2s_set_rxchanoffset,
 	.set_txchanen		= sun8i_i2s_set_txchanen,
 	.set_rxchanen		= sun8i_i2s_set_rxchanen,
+	.set_txchansel		= sun8i_i2s_set_txchansel,
+	.set_rxchansel		= sun8i_i2s_set_rxchansel,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
@@ -1199,6 +1241,8 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
 	.set_fmt		= sun4i_i2s_set_soc_fmt,
+	.set_txchansel		= sun4i_i2s_set_txchansel,
+	.set_rxchansel		= sun4i_i2s_set_rxchansel,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

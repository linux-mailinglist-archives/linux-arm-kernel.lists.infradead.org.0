Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 745E68CBA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=581tSk9UJMPA8O6AuD3HcfzyZR5gnO5y3QpRKvjAQX8=; b=YwcBDk2n3qle+G
	IXvCF4LDjIVOAG+Nlhar5r1k8enXRWs1gRnIJGbGKmIOh1zKLRMoonm2mYWSZcGjatrEnplgyFEtf
	n6+tSQ5jn3FhOzi+FMihpIyXlcq8GrRrIYU+FWtHL37fw78MSBwv4oAwJaWPRWWii5iglt2x+MHAq
	xTUxdHKmsvLM1/W2f2ZeJywrc3/XZPqR0KANC+Pm4xE0JrDhWuiF9Z7bDf/Wa1bPWFREpyTBB6UO/
	AxLJUfZ/bfRLxnH5SDydWsLXBxlDtlImkzccIagfmc3UJ1s+DmfpEuu+evIKD8Hhze5Kc520hm0wx
	fi+WdKthIK1StC3rNDQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmVC-0002Vl-H9; Wed, 14 Aug 2019 06:11:18 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmT5-0008Fj-W1
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:09 +0000
Received: by mail-lf1-x143.google.com with SMTP id p197so78416086lfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Zp/v+XPoakv64rsBqvBGuIEtgA5Sr07uhpM4FUxkm0E=;
 b=NBv26dndxs9cji1ckOrrLw9r4eCTy627IatAHmthw0P10JNQy/fo4/Qsr0CZq3R2GA
 JFDIxO/FLHkLuJ6c2nN3ynNHGqDKRnqqvY4VxQ/9AsshGyZuSHFffen9s5Q2RhA6TdDS
 GA3unKrtvCGGq5WgGiOOL6HvpqoNQAgZeCn5LKm54cTu9eU1qYQjeyydNOstczE34Wa8
 PgiKR2PRzQEARvIWQscCMtOdWiGC1Gg20eVvKr/9zxR4dksm3Q53vZT0DsT2HVL230X/
 fnOmLKVDVsjfYJ2/mj9hCxNZ10gmcRDp+iHH7eFHXl1RZIsBM4DX8GMQcg3WsrFf1bf7
 soHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zp/v+XPoakv64rsBqvBGuIEtgA5Sr07uhpM4FUxkm0E=;
 b=r4iY+dMPfgx1dIiBdjtzrgeqcS0OU5Ufysnw4uTd+4Lddagsi/djoNInfJ6eE+dpd8
 OIwxuznPv5MKx0XJeYBzmBv5HbbyVSjVJWJAXk6r7G1XQCI/U2DqDh0o3eVRidF+QyNC
 HUox+EY1SfU7aoyniVOV/NUH3eFlDt0VpKYAZiGvWwfKkpGwDch5RFxTWeDVdSc9F2sr
 NmIxHxizmmH+htRGMoYtMMG4g62g/PZCrUbSCcIEpNZCk5F1kozzIA8/5luIGc56FW5e
 KzOl1K0XaDu3ROb0FT5TY433CBfxObZ5oFdfc7LAms2JdWSQlzFrqFDgnkxC+KsAlnXS
 a6pQ==
X-Gm-Message-State: APjAAAVHd3Hh3j4PDFuRwb4qnH8h4C1pVmv1o8ZFynLkNt8/o30+zkmx
 1cLp3j56nfkphRJbLZcjfr0=
X-Google-Smtp-Source: APXvYqyefwP7/5DXwzqu3ScUtSJPu1sJZjbH/PhzSRoaWYRjfKhYTb3xwmY8hWHgFLZ9JmPJ59vJGw==
X-Received: by 2002:ac2:5094:: with SMTP id f20mr23616419lfm.53.1565762945896; 
 Tue, 13 Aug 2019 23:09:05 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:05 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 04/15] ASoC: sun4i-i2s: Support more formats on newer SoCs
Date: Wed, 14 Aug 2019 08:08:43 +0200
Message-Id: <20190814060854.26345-5-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230908_202027_C7CC9FBC 
X-CRM114-Status: GOOD (  17.42  )
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

There is a need to support more formats on the newer SoCs(H3 and later).
Extend the formats supported to include DSP_A and DSP_B modes.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 87 +++++++++++++++++++++++++++----------
 1 file changed, 63 insertions(+), 24 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 34f31439ae7b..3553c17318b0 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -27,6 +27,8 @@
 #define SUN4I_I2S_CTRL_MODE_MASK		BIT(5)
 #define SUN4I_I2S_CTRL_MODE_SLAVE			(1 << 5)
 #define SUN4I_I2S_CTRL_MODE_MASTER			(0 << 5)
+#define SUN4I_I2S_CTRL_PCM			BIT(4)
+#define SUN4I_I2S_CTRL_LOOP			BIT(3)
 #define SUN4I_I2S_CTRL_TX_EN			BIT(2)
 #define SUN4I_I2S_CTRL_RX_EN			BIT(1)
 #define SUN4I_I2S_CTRL_GL_EN			BIT(0)
@@ -91,6 +93,9 @@
 /* Defines required for sun8i-h3 support */
 #define SUN8I_I2S_CTRL_BCLK_OUT			BIT(18)
 #define SUN8I_I2S_CTRL_LRCK_OUT			BIT(17)
+#define SUN8I_I2S_CTRL_MODE_RIGHT_J			(2 << 0)
+#define SUN8I_I2S_CTRL_MODE_I2S_LEFT_J			(1 << 0)
+#define SUN8I_I2S_CTRL_MODE_PCM				(0 << 0)
 
 #define SUN8I_I2S_FMT0_LRCK_PERIOD_MASK		GENMASK(17, 8)
 #define SUN8I_I2S_FMT0_LRCK_PERIOD(period)	((period - 1) << 8)
@@ -164,6 +169,7 @@ struct sun4i_i2s_quirks {
 
 	s8	(*get_sr)(const struct sun4i_i2s *, int);
 	s8	(*get_wss)(const struct sun4i_i2s *, int);
+	int	(*set_format)(struct sun4i_i2s *, unsigned int);
 };
 
 struct sun4i_i2s {
@@ -194,6 +200,7 @@ struct sun4i_i2s {
 
 	unsigned int	tdm_slots;
 	unsigned int	slot_width;
+	unsigned int	offset;
 };
 
 struct sun4i_i2s_clk_div {
@@ -484,19 +491,14 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 				      i2s->slot_width : params_width(params));
 }
 
-static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
+static int sun4i_i2s_set_format(struct sun4i_i2s *i2s, unsigned int fmt)
 {
-	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 	u32 val;
-	u32 offset = 0;
-	u32 bclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
-	u32 lrclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
 
 	/* DAI Mode */
 	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 	case SND_SOC_DAIFMT_I2S:
 		val = SUN4I_I2S_FMT0_FMT_I2S;
-		offset = 1;
 		break;
 	case SND_SOC_DAIFMT_LEFT_J:
 		val = SUN4I_I2S_FMT0_FMT_LEFT_J;
@@ -505,32 +507,64 @@ static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 		val = SUN4I_I2S_FMT0_FMT_RIGHT_J;
 		break;
 	default:
-		dev_err(dai->dev, "Unsupported format: %d\n",
-			fmt & SND_SOC_DAIFMT_FORMAT_MASK);
 		return -EINVAL;
 	}
 
-	if (i2s->variant->has_chsel_offset) {
-		/*
-		 * offset being set indicates that we're connected to an i2s
-		 * device, however offset is only used on the sun8i block and
-		 * i2s shares the same setting with the LJ format. Increment
-		 * val so that the bit to value to write is correct.
-		 */
-		if (offset > 0)
-			val++;
-		/* blck offset determines whether i2s or LJ */
-		regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
-				   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
-				   SUN8I_I2S_TX_CHAN_OFFSET(offset));
+	regmap_field_write(i2s->field_fmt_mode, val);
+
+	return 0;
+}
+
+static int sun8i_i2s_set_format(struct sun4i_i2s *i2s, unsigned int fmt)
+{
+	u32 val;
 
-		regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
-				   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
-				   SUN8I_I2S_TX_CHAN_OFFSET(offset));
+	/* DAI Mode */
+	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
+	case SND_SOC_DAIFMT_I2S:
+		i2s->offset = 1;
+	case SND_SOC_DAIFMT_LEFT_J:
+		val = SUN8I_I2S_CTRL_MODE_I2S_LEFT_J;
+		break;
+	case SND_SOC_DAIFMT_RIGHT_J:
+		val = SUN8I_I2S_CTRL_MODE_RIGHT_J;
+		break;
+	case SND_SOC_DAIFMT_DSP_A:
+		i2s->offset = 1;
+	case SND_SOC_DAIFMT_DSP_B:
+		val = SUN8I_I2S_CTRL_MODE_PCM;
+		break;
+
+	default:
+		return -EINVAL;
 	}
 
+	/*
+	 * bclk offset determines whether i2s or LJ if in i2s mode and
+	 * DSP_A or DSP_B if in PCM mode.
+	 */
+	i2s->variant->set_txchanoffset(i2s, 0);
+	i2s->variant->set_rxchanoffset(i2s);
+
 	regmap_field_write(i2s->field_fmt_mode, val);
 
+	return 0;
+}
+
+static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
+{
+	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
+	u32 val;
+	u32 bclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
+	u32 lrclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
+
+	/* Set DAI Mode */
+	if (i2s->variant->set_format(i2s, fmt) != 0) {
+		dev_err(dai->dev, "Unsupported format: %d\n",
+			fmt & SND_SOC_DAIFMT_FORMAT_MASK);
+		return -EINVAL;
+	}
+
 	/* DAI clock polarity */
 	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 	case SND_SOC_DAIFMT_IB_IF:
@@ -976,6 +1010,7 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
+	.set_format		= sun4i_i2s_set_format,
 };
 
 static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
@@ -996,6 +1031,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
+	.set_format		= sun4i_i2s_set_format,
 };
 
 static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
@@ -1015,6 +1051,7 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
+	.set_format		= sun4i_i2s_set_format,
 };
 
 static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
@@ -1038,6 +1075,7 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.field_rxchansel	= REG_FIELD(SUN8I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
+	.set_format		= sun8i_i2s_set_format,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
@@ -1058,6 +1096,7 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
+	.set_format		= sun4i_i2s_set_format,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

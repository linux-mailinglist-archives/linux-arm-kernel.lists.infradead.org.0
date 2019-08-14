Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8068CBA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 08:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaDltMgOea5k6aYCq6ZT5Ob1VAuWAwGXkT+Ggk4fDyU=; b=iZ4L2n8eNiOMtL
	UzP5yKGnLDz0haiJejsuedaqewn7Z8MwPqEudXhhLrausN4IK4CnY9PPiKIw1TY4ONagwKxwE9QOa
	Zy92riIWPSyPerj86wvnOPla/xePixH2JKNBfy8viTsL1W1NG5NRrXBt7pgKW94z0meAQpyRrq7fd
	hIM57BnLXoCxhf/ECbn5A8nK0xiTwL1RrFUU/Ws98x2SvEIqFyr3cu1qLBPmFiZTrjc+Pan5i23mT
	XLrKqVVfmGN5wD8Q43Ic8oN7Z2BWQ/cGy4MfjMOf60VE6m9bHn+DV/Y6eaDNEvBcJ3im97m1IaYJO
	6iYhnifkCokoXdYtziRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmUr-0002HG-FO; Wed, 14 Aug 2019 06:10:57 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmT3-0008ER-Eu
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 06:09:07 +0000
Received: by mail-lj1-x242.google.com with SMTP id e27so8562005ljb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 23:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=147UIFX9DA9SvYsUgY5biO/zYXvXueKjoVP+mGnAo6Q=;
 b=UVSGjxmasNyFoGwIFM2MIfDLyoPAHuTGqF6HFKtf0cC6SR8TB025wG4wYwGiR5YwqZ
 ULZEl/xeqFArjCdDjefrZsUMBFDjjMe4nojLar2lHvZFBDQ2wt3QutLeVoAk/v96bHIL
 rG44kfVICwZxhA2labXn/Z09qeDTZzJo9ScRTEhl4nollvs8L2Xvx7LUvu4kG26K2Ntv
 2Gbiu6j/ohX5UKkJarNj54onXtNCH0aWWnt+GtNzmQFkk5m2CLlpKgc4yDPx93EiT10I
 rj+m8uhlKHiV3aEKDeamdSaKhVQZdCN1Giirge4eIuFZC93lSW137EDyrIUTyjBMD5bw
 HOtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=147UIFX9DA9SvYsUgY5biO/zYXvXueKjoVP+mGnAo6Q=;
 b=YvpMs1FnFVlAo+/h4JN5w9n7Wq6C6k5XoipSKeZ4mixOa+zc4qBcsKNRepmzARzeq8
 0qDnD4gckdpgbxg7FPVeTj1j6s/SlXrrk8GNgTYhvrre9SVZ/pkzn4Vbni4YdOi4ThxX
 p5OPFYGpDYH/ORUuvz3mz8o+cVKx4urY9DTW6s/fZUHtQDifDm/zCDz36sip3RAWs1qu
 AXvC6evBoueLDFHnQxmayM2FvKvG4dToVNbqP55YaboKCEaexUVhViNY4eWchS5FoKz1
 /kR0k/2QKsrOsV9BPwhn8gkG9e02MY188ZM2KNO2XAuMptOF095K/2hYdm+xVQ+hruf3
 JD7w==
X-Gm-Message-State: APjAAAUD0DN+jhJiCmO+jPPMz2VMOiX0O6vLpebte12JPsDt1cUymdc0
 Yd45yUzAlb43A99j1wphOoQ=
X-Google-Smtp-Source: APXvYqy9/3FWFJxlWdMewFGb1jP7tuiF9PZlPe111B5EpfQlyq1S5HyPMPjC1ihUplSJ6WZcUN+GOA==
X-Received: by 2002:a2e:3608:: with SMTP id d8mr9599742lja.140.1565762943470; 
 Tue, 13 Aug 2019 23:09:03 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id s10sm3124235ljm.35.2019.08.13.23.09.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 23:09:02 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v5 03/15] ASoC: sun4i-i2s: Correct divider calculations
Date: Wed, 14 Aug 2019 08:08:42 +0200
Message-Id: <20190814060854.26345-4-codekipper@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814060854.26345-1-codekipper@gmail.com>
References: <20190814060854.26345-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_230905_774861_B1ED5C93 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

The clock division circuitry is different on the H3 and later SoCs.
The division of bclk is now based on pll2.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 73 +++++++++++++++++++++++++------------
 1 file changed, 49 insertions(+), 24 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 7c37b6291df0..34f31439ae7b 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -127,8 +127,6 @@ struct sun4i_i2s;
  * @has_chsel_offset: SoC uses offset for selecting dai operational mode.
  * @reg_offset_txdata: offset of the tx fifo.
  * @sun4i_i2s_regmap: regmap config to use.
- * @mclk_offset: Value by which mclkdiv needs to be adjusted.
- * @bclk_offset: Value by which bclkdiv needs to be adjusted.
  * @field_clkdiv_mclk_en: regmap field to enable mclk output.
  * @field_fmt_wss: regmap field to set word select size.
  * @field_fmt_sr: regmap field to set sample resolution.
@@ -150,8 +148,6 @@ struct sun4i_i2s_quirks {
 	bool				has_chsel_offset;
 	unsigned int			reg_offset_txdata;	/* TX FIFO */
 	const struct regmap_config	*sun4i_i2s_regmap;
-	unsigned int			mclk_offset;
-	unsigned int			bclk_offset;
 
 	/* Register fields for i2s */
 	struct reg_field		field_clkdiv_mclk_en;
@@ -212,7 +208,25 @@ static const struct sun4i_i2s_clk_div sun4i_i2s_bclk_div[] = {
 	{ .div = 8, .val = 3 },
 	{ .div = 12, .val = 4 },
 	{ .div = 16, .val = 5 },
-	/* TODO - extend divide ratio supported by newer SoCs */
+};
+
+static const struct sun4i_i2s_clk_div sun8i_i2s_clk_div[] = {
+	{ .div = 0, .val = 0 },
+	{ .div = 1, .val = 1 },
+	{ .div = 2, .val = 2 },
+	{ .div = 4, .val = 3 },
+	{ .div = 6, .val = 4 },
+	{ .div = 8, .val = 5 },
+	{ .div = 12, .val = 6 },
+	{ .div = 16, .val = 7 },
+	{ .div = 24, .val = 8 },
+	{ .div = 32, .val = 9 },
+	{ .div = 48, .val = 10 },
+	{ .div = 64, .val = 11 },
+	{ .div = 96, .val = 12 },
+	{ .div = 128, .val = 13 },
+	{ .div = 176, .val = 14 },
+	{ .div = 192, .val = 15 },
 };
 
 static const struct sun4i_i2s_clk_div sun4i_i2s_mclk_div[] = {
@@ -224,21 +238,21 @@ static const struct sun4i_i2s_clk_div sun4i_i2s_mclk_div[] = {
 	{ .div = 12, .val = 5 },
 	{ .div = 16, .val = 6 },
 	{ .div = 24, .val = 7 },
-	/* TODO - extend divide ratio supported by newer SoCs */
 };
 
 static int sun4i_i2s_get_bclk_div(struct sun4i_i2s *i2s,
 				  unsigned int oversample_rate,
-				  unsigned int word_size)
+				  unsigned int word_size,
+				  const struct sun4i_i2s_clk_div *bdiv,
+				  unsigned int size)
 {
 	int div = oversample_rate / word_size / 2;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(sun4i_i2s_bclk_div); i++) {
-		const struct sun4i_i2s_clk_div *bdiv = &sun4i_i2s_bclk_div[i];
-
+	for (i = 0; i < size; i++) {
 		if (bdiv->div == div)
 			return bdiv->val;
+		bdiv++;
 	}
 
 	return -EINVAL;
@@ -247,16 +261,17 @@ static int sun4i_i2s_get_bclk_div(struct sun4i_i2s *i2s,
 static int sun4i_i2s_get_mclk_div(struct sun4i_i2s *i2s,
 				  unsigned int oversample_rate,
 				  unsigned int module_rate,
-				  unsigned int sampling_rate)
+				  unsigned int sampling_rate,
+				  const struct sun4i_i2s_clk_div *mdiv,
+				  unsigned int size)
 {
 	int div = module_rate / sampling_rate / oversample_rate;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(sun4i_i2s_mclk_div); i++) {
-		const struct sun4i_i2s_clk_div *mdiv = &sun4i_i2s_mclk_div[i];
-
+	for (i = 0; i < size; i++) {
 		if (mdiv->div == div)
 			return mdiv->val;
+		mdiv++;
 	}
 
 	return -EINVAL;
@@ -321,24 +336,36 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 		return -EINVAL;
 	}
 
-	bclk_div = sun4i_i2s_get_bclk_div(i2s, oversample_rate,
-					  word_size);
+	if (i2s->variant->has_fmt_set_lrck_period)
+		bclk_div = sun4i_i2s_get_bclk_div(i2s, clk_rate / rate,
+						  word_size,
+						  sun8i_i2s_clk_div,
+						  ARRAY_SIZE(sun8i_i2s_clk_div));
+	else
+		bclk_div = sun4i_i2s_get_bclk_div(i2s, oversample_rate,
+						  word_size,
+						  sun4i_i2s_bclk_div,
+						  ARRAY_SIZE(sun4i_i2s_bclk_div));
 	if (bclk_div < 0) {
 		dev_err(dai->dev, "Unsupported BCLK divider: %d\n", bclk_div);
 		return -EINVAL;
 	}
 
-	mclk_div = sun4i_i2s_get_mclk_div(i2s, oversample_rate,
-					  clk_rate, rate);
+	if (i2s->variant->has_fmt_set_lrck_period)
+		mclk_div = sun4i_i2s_get_mclk_div(i2s, oversample_rate,
+						  clk_rate, rate,
+						  sun8i_i2s_clk_div,
+						  ARRAY_SIZE(sun8i_i2s_clk_div));
+	else
+		mclk_div = sun4i_i2s_get_mclk_div(i2s, oversample_rate,
+						  clk_rate, rate,
+						  sun4i_i2s_mclk_div,
+						  ARRAY_SIZE(sun4i_i2s_mclk_div));
 	if (mclk_div < 0) {
 		dev_err(dai->dev, "Unsupported MCLK divider: %d\n", mclk_div);
 		return -EINVAL;
 	}
 
-	/* Adjust the clock division values if needed */
-	bclk_div += i2s->variant->bclk_offset;
-	mclk_div += i2s->variant->mclk_offset;
-
 	regmap_write(i2s->regmap, SUN4I_I2S_CLK_DIV_REG,
 		     SUN4I_I2S_CLK_DIV_BCLK(bclk_div) |
 		     SUN4I_I2S_CLK_DIV_MCLK(mclk_div));
@@ -994,8 +1021,6 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.has_reset		= true,
 	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
 	.sun4i_i2s_regmap	= &sun8i_i2s_regmap_config,
-	.mclk_offset		= 1,
-	.bclk_offset		= 2,
 	.has_fmt_set_lrck_period = true,
 	.has_chcfg		= true,
 	.has_chsel_tx_chen	= true,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

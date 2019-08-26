Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7649A9D576
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtKr0C/nsA3oPp/tpH8MKob5EuO1EnUYRATTHVdseRk=; b=T2ZWIY9qqjdnxl
	FPM6/74FpvFJerAhwl37P4QnOx/UkzL+icYRslIn9oUBkAcXymgE/hIDLRZCyb5ECsrdS+zn4t8El
	dmm9r1Fnegd3WKqcmSUl5zo+td5vePN2/OzUNdBJKRaDxRWf8A/QblUHMbbvOzcBZUgMvCinNE4vX
	bGdxqqYPMidSnsTErZG1jf8EkQi8mqitHs20wv/WfgU2sQnJEEFPUgBAAUBhcmOx73Tm7vlOxF9ny
	9Xcs6Y4ea2i/H22UoBnjkw5/yRBCdjGhZIPHRAQT6awEnQZrbq8N+Hj6N5UtRAb3Qru8jEHk/gCC8
	Mtx3h/zrKJcp3M4A2u4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JPs-0004Pt-7a; Mon, 26 Aug 2019 18:08:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JP2-0003y9-Vm
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:07:42 +0000
Received: by mail-lj1-x241.google.com with SMTP id x3so15968147lji.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ukuuUBdDBhaCevdSYR2WXtuXiYA+/tk7SlxUyZaPi3U=;
 b=X5ZI20/CE7C81ZGz/W4Y/X/QmOCV5xtQN4RNxkIU7eUjrSA0n/z9clpTiZX8hVFZoH
 HNGhFUWhuJTyoDCrhkWLZsZroLsojNdY+wFLYWSJWG1uyRHfg0sORzhZbRAip95gEy/7
 lqUNDC53zrLWta46uPCP0BcIrIrFO60CvRXNNG0KmVAB30fJrH62qtQY/mhNh6g0E1Q/
 yIJJ0HvGKPGAo+cp+UVVk3Y/8NQQKxsGBUpQ0lkk26zIGilaPpgZN1C+hNOQsHFNxntS
 XW44tdSO2UMcU70Gq8LOsItG6SnVdwyMPE5UtwaTK8Dv7qCbF9801WXmw5EC9N+ONuod
 k0Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ukuuUBdDBhaCevdSYR2WXtuXiYA+/tk7SlxUyZaPi3U=;
 b=U0cAd6EsmKZQ2Gv+2LRO7FxzsDBO2vKAoSKVQ+D4lCFYFRyAYCI8UQS8MYsOtvGHCB
 08hQOig0FIMiDr2Q1rggxP3kaOiWb9FTqNvsk67NpOXaB9uDm6mSNUIOqmeaJHqPUyjO
 AF/KY4A/TZhjyfv4O/iDwhhJvhvQ5GrgY7YRW1ycfnCOLgLHhpDit53EQ4M+LAxy99P7
 LmP7ktVc6qyB6PoJE/x2yxYtZvvpct1Dvg2JgL14uj0oNocj+s6MBo8xYRe7riHxDYah
 z1eol6iqIk0QaE+l5chs1g2ZJ4H+7WIJ4oe9T+NVndbhLSQ1R+dM7OwPkg4iQuA7DinF
 5ykA==
X-Gm-Message-State: APjAAAX1dlXk16dqlsgPzBUev4LVRoJCR6t04YWRn0BFPZzVt6zIh/J9
 ATxIfZPP9P9eWQCDESeXrhg=
X-Google-Smtp-Source: APXvYqyYEpihsZF+JV1SShitkdzIKCoMZNNq7L/fwZ9FV8upcocQMT8ztPvcFOkyMOEOCgpILghRAA==
X-Received: by 2002:a2e:6393:: with SMTP id s19mr11066423lje.46.1566842859207; 
 Mon, 26 Aug 2019 11:07:39 -0700 (PDT)
Received: from localhost.localdomain (c213-102-74-69.bredband.comhem.se.
 [213.102.74.69])
 by smtp.gmail.com with ESMTPSA id u3sm2215564lfm.16.2019.08.26.11.07.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:07:38 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 2/3] ASoC: sun4i-i2s: Add regmap field to sign extend sample
Date: Mon, 26 Aug 2019 20:07:33 +0200
Message-Id: <20190826180734.15801-3-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826180734.15801-1-codekipper@gmail.com>
References: <20190826180734.15801-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_110741_018111_251D17A3 
X-CRM114-Status: GOOD (  14.15  )
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

On the newer SoCs such as the H3 and A64 this is set by default
to transfer a 0 after each sample in each slot. However the A10
and A20 SoCs that this driver was developed on had a default
setting where it padded the audio gain with zeros.

This isn't a problem whilst we have only support for 16bit audio
but with larger sample resolution rates in the pipeline then SEXT
bits should be cleared so that they also pad at the LSB. Without
this the audio gets distorted.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 34575a8aa9f6..056a299c03fb 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -135,6 +135,7 @@ struct sun4i_i2s;
  * @field_clkdiv_mclk_en: regmap field to enable mclk output.
  * @field_fmt_wss: regmap field to set word select size.
  * @field_fmt_sr: regmap field to set sample resolution.
+ * @field_fmt_sext: regmap field to set the sign extension.
  */
 struct sun4i_i2s_quirks {
 	bool				has_reset;
@@ -145,6 +146,7 @@ struct sun4i_i2s_quirks {
 	struct reg_field		field_clkdiv_mclk_en;
 	struct reg_field		field_fmt_wss;
 	struct reg_field		field_fmt_sr;
+	struct reg_field		field_fmt_sext;
 
 	const struct sun4i_i2s_clk_div	*bclk_dividers;
 	unsigned int			num_bclk_dividers;
@@ -177,6 +179,7 @@ struct sun4i_i2s {
 	struct regmap_field	*field_clkdiv_mclk_en;
 	struct regmap_field	*field_fmt_wss;
 	struct regmap_field	*field_fmt_sr;
+	struct regmap_field	*field_fmt_sext;
 
 	const struct sun4i_i2s_quirks	*variant;
 };
@@ -354,6 +357,10 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 
 	regmap_field_write(i2s->field_clkdiv_mclk_en, 1);
 
+
+	/* Set sign extension to pad out LSB with 0 */
+	regmap_field_write(i2s->field_fmt_sext, 0);
+
 	return 0;
 }
 
@@ -1073,6 +1080,7 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.mclk_dividers		= sun4i_i2s_mclk_div,
 	.num_mclk_dividers	= ARRAY_SIZE(sun4i_i2s_mclk_div),
 	.get_bclk_parent_rate	= sun4i_i2s_get_bclk_parent_rate,
+	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
@@ -1091,6 +1099,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.mclk_dividers		= sun4i_i2s_mclk_div,
 	.num_mclk_dividers	= ARRAY_SIZE(sun4i_i2s_mclk_div),
 	.get_bclk_parent_rate	= sun4i_i2s_get_bclk_parent_rate,
+	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
@@ -1109,6 +1118,7 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.mclk_dividers		= sun8i_i2s_clk_div,
 	.num_mclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
 	.get_bclk_parent_rate	= sun8i_i2s_get_bclk_parent_rate,
+	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 4, 5),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
 	.set_chan_cfg		= sun8i_i2s_set_chan_cfg,
@@ -1127,6 +1137,7 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.mclk_dividers		= sun4i_i2s_mclk_div,
 	.num_mclk_dividers	= ARRAY_SIZE(sun4i_i2s_mclk_div),
 	.get_bclk_parent_rate	= sun4i_i2s_get_bclk_parent_rate,
+	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
@@ -1154,6 +1165,12 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
 	if (IS_ERR(i2s->field_fmt_sr))
 		return PTR_ERR(i2s->field_fmt_sr);
 
+	i2s->field_fmt_sext =
+			devm_regmap_field_alloc(dev, i2s->regmap,
+						i2s->variant->field_fmt_sext);
+	if (IS_ERR(i2s->field_fmt_sext))
+		return PTR_ERR(i2s->field_fmt_sext);
+
 	return 0;
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

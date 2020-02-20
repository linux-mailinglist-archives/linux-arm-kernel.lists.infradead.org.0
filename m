Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE4B166943
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 21:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYE45DGAx4q1IjSqsQlA/i7lb/0M8ccrmcWDiCxjMvE=; b=EWTrSxXG1RtdoF
	h8wU6d5i91aZPQefVaXwotfWtlez8WJUH43PNwBjaq3iMeyYEXb3Yda1j3z2r5ij1zeSgnzhKNDkn
	w6AGygGrmyKLJ7ZbFK3KmVTlAHyESqI1ld7eqGuDb8NafHji9ZYEcUwr0N4KSlPF+oqheJ+4bBQKT
	TiqyH/t9sIqMa0EimG7VuyuUPpz6wPLw1F5a0ajBtyxHvdKBzeayA4y1grM0EPdc+xYTxsMmgDrIB
	FviBkPCFSPDZviYoafF/q+93v/WoX8cdtZnoPppbBrfdph9A/f9UqMhQ+ZixcNvWZzuOHeV6jTA0d
	dKmK0FGhRFzUYvb8FkIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4su1-0004WK-W8; Thu, 20 Feb 2020 20:58:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4sst-0003en-0X; Thu, 20 Feb 2020 20:57:24 +0000
Received: by mail-wr1-x444.google.com with SMTP id w12so6204078wrt.2;
 Thu, 20 Feb 2020 12:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O9H0QZyYuaUeSBKWNz88pbKgmPYyIAQJ2VGIcN7sek0=;
 b=b6Q3mgJE/4X0ENVknSqB4BtsyvQ74D276ZzvnPLSb7sg7O+6chdR1qLWsLsIDf25vJ
 hFELriumpX90BRiMoHhBeLiOe+eK8z3s29hsNJM6JYhBpiUkFzlRJcjWkSslZANli+w3
 vizSo+w7cNiah9ptmHqyTO6fOJ2Z1FYUeP4uFO3SJra4UWofMbcgcO+jgcAQsPrYpQaZ
 hLQ/BJq3fiK5EZXom38aJkJ7xmL+cY2EVEFaK89D6wWp5vW0IJsCAQJd4siKS6m5Zs7u
 YuI7WrCS3XX656MKm9ELKGHESQ7YJG9OsD5J7FYsTdPx+PTKkmP6YVSbp3us4NI4sT6n
 Iyqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O9H0QZyYuaUeSBKWNz88pbKgmPYyIAQJ2VGIcN7sek0=;
 b=SizvXZiF318rGhj+1nltQ+TuDIaDM2RNsWTKwQalRNWl3NyJSG89xnFDgqfCOVnZFp
 Jg6fzSLEMK0tU7sEPySeRG20mj7EpyFkK04KPcl78CqjfLR3Ht2O18U9wskm4EmO3Oqs
 IJaBfZtiG8StfoSKz2fvaDPq/0+ks/tIKsTBUd6KZPLFoASz7RP/7HjzHKC9iN3rwRZe
 Tp6Eu2fxV9mYLdst4Dh5Dk4RAsImqdU4GLTL8xP83x3H2LZywSUa763YYKeypGcjUw48
 9san114e/onyWnmvv69sLO+MNPnSAJekS44H9DstlWzz+gHAgp9QPJHPrPz8y1t8Ut5W
 svpA==
X-Gm-Message-State: APjAAAVf5UTaYahVMak3+N+Ee9UvE7MeSPelnnLVcV7J6gv0VRApKDrb
 8itl6jBMf0p1QFO4PqIG8CY=
X-Google-Smtp-Source: APXvYqxYZID8xJsIWV9Ml8b2mVsDTj0py1fbWd0tADweJ9z/lQnfqtkr1cSxhaTtWPJxJis6vxvwGA==
X-Received: by 2002:adf:a39a:: with SMTP id l26mr43640993wrb.211.1582232241757; 
 Thu, 20 Feb 2020 12:57:21 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a184sm695039wmf.29.2020.02.20.12.57.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 12:57:21 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: jbrunet@baylibre.com, broonie@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 3/3] ASoC: meson: aiu: add support for the Meson8 and Meson8b
 SoC families
Date: Thu, 20 Feb 2020 21:57:11 +0100
Message-Id: <20200220205711.77953-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200220205711.77953-1-martin.blumenstingl@googlemail.com>
References: <20200220205711.77953-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_125723_121692_1A269019 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lgirdwood@gmail.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, tiwai@suse.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AIU audio controller on the Meson8 and Meson8b SoC families is
compatible with the one found in the later GXBB family. Add compatible
strings for these two older SoC families so the driver can be loaded for
them.

Instead of using the I2S divider from the AIU_CLK_CTRL_MORE register we
need to use the I2S divider from the AIU_CLK_CTRL register. This older
register is less flexible because it only supports four divider settings
(1, 2, 4, 8) compared to the AIU_CLK_CTRL_MORE register (which supports
dividers in the range 0..64).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 sound/soc/meson/Kconfig           |  2 +-
 sound/soc/meson/aiu-encoder-i2s.c | 92 +++++++++++++++++++++++--------
 sound/soc/meson/aiu.c             |  9 +++
 sound/soc/meson/aiu.h             |  1 +
 4 files changed, 81 insertions(+), 23 deletions(-)

diff --git a/sound/soc/meson/Kconfig b/sound/soc/meson/Kconfig
index 897a706dcda0..d27e9180b453 100644
--- a/sound/soc/meson/Kconfig
+++ b/sound/soc/meson/Kconfig
@@ -10,7 +10,7 @@ config SND_MESON_AIU
 	imply SND_SOC_HDMI_CODEC if DRM_MESON_DW_HDMI
 	help
 	  Select Y or M to add support for the Audio output subsystem found
-	  in the Amlogic GX SoC family
+	  in the Amlogic Meson8, Meson8b and GX SoC families
 
 config SND_MESON_AXG_FIFO
 	tristate
diff --git a/sound/soc/meson/aiu-encoder-i2s.c b/sound/soc/meson/aiu-encoder-i2s.c
index 4900e38e7e49..cc73b5d5c2b7 100644
--- a/sound/soc/meson/aiu-encoder-i2s.c
+++ b/sound/soc/meson/aiu-encoder-i2s.c
@@ -111,34 +111,40 @@ static int aiu_encoder_i2s_setup_desc(struct snd_soc_component *component,
 	return 0;
 }
 
-static int aiu_encoder_i2s_set_clocks(struct snd_soc_component *component,
-				      struct snd_pcm_hw_params *params)
+static int aiu_encoder_i2s_set_legacy_div(struct snd_soc_component *component,
+					  struct snd_pcm_hw_params *params,
+					  unsigned int bs)
 {
-	struct aiu *aiu = snd_soc_component_get_drvdata(component);
-	unsigned int srate = params_rate(params);
-	unsigned int fs, bs;
-
-	/* Get the oversampling factor */
-	fs = DIV_ROUND_CLOSEST(clk_get_rate(aiu->i2s.clks[MCLK].clk), srate);
+	switch (bs) {
+	case 1:
+	case 2:
+	case 4:
+	case 8:
+		/* These are the only valid legacy dividers */
+		break;
 
-	if (fs % 64)
+	default:
+		dev_err(component->dev, "Unsupported i2s divider: %u\n", bs);
 		return -EINVAL;
+	};
 
-	/* Send data MSB first */
-	snd_soc_component_update_bits(component, AIU_I2S_DAC_CFG,
-				      AIU_I2S_DAC_CFG_MSB_FIRST,
-				      AIU_I2S_DAC_CFG_MSB_FIRST);
+	snd_soc_component_update_bits(component, AIU_CLK_CTRL,
+				      AIU_CLK_CTRL_I2S_DIV,
+				      FIELD_PREP(AIU_CLK_CTRL_I2S_DIV,
+						 __ffs(bs)));
 
-	/* Set bclk to lrlck ratio */
-	snd_soc_component_update_bits(component, AIU_CODEC_DAC_LRCLK_CTRL,
-				      AIU_CODEC_DAC_LRCLK_CTRL_DIV,
-				      FIELD_PREP(AIU_CODEC_DAC_LRCLK_CTRL_DIV,
-						 64 - 1));
+	snd_soc_component_update_bits(component, AIU_CLK_CTRL_MORE,
+				      AIU_CLK_CTRL_MORE_I2S_DIV,
+				      FIELD_PREP(AIU_CLK_CTRL_MORE_I2S_DIV,
+						 0));
 
-	/* Use CLK_MORE for mclk to bclk divider */
-	snd_soc_component_update_bits(component, AIU_CLK_CTRL,
-				      AIU_CLK_CTRL_I2S_DIV, 0);
+	return 0;
+}
 
+static int aiu_encoder_i2s_set_more_div(struct snd_soc_component *component,
+					struct snd_pcm_hw_params *params,
+					unsigned int bs)
+{
 	/*
 	 * NOTE: this HW is odd.
 	 * In most configuration, the i2s divider is 'mclk / blck'.
@@ -146,7 +152,6 @@ static int aiu_encoder_i2s_set_clocks(struct snd_soc_component *component,
 	 * increased by 50% to get the correct output rate.
 	 * No idea why !
 	 */
-	bs = fs / 64;
 	if (params_width(params) == 16 && params_channels(params) == 8) {
 		if (bs % 2) {
 			dev_err(component->dev,
@@ -156,11 +161,54 @@ static int aiu_encoder_i2s_set_clocks(struct snd_soc_component *component,
 		bs += bs / 2;
 	}
 
+	/* Use CLK_MORE for mclk to bclk divider */
+	snd_soc_component_update_bits(component, AIU_CLK_CTRL,
+				      AIU_CLK_CTRL_I2S_DIV,
+				      FIELD_PREP(AIU_CLK_CTRL_I2S_DIV, 0));
+
 	snd_soc_component_update_bits(component, AIU_CLK_CTRL_MORE,
 				      AIU_CLK_CTRL_MORE_I2S_DIV,
 				      FIELD_PREP(AIU_CLK_CTRL_MORE_I2S_DIV,
 						 bs - 1));
 
+	return 0;
+}
+
+static int aiu_encoder_i2s_set_clocks(struct snd_soc_component *component,
+				      struct snd_pcm_hw_params *params)
+{
+	struct aiu *aiu = snd_soc_component_get_drvdata(component);
+	unsigned int srate = params_rate(params);
+	unsigned int fs, bs;
+	int ret;
+
+	/* Get the oversampling factor */
+	fs = DIV_ROUND_CLOSEST(clk_get_rate(aiu->i2s.clks[MCLK].clk), srate);
+
+	if (fs % 64)
+		return -EINVAL;
+
+	/* Send data MSB first */
+	snd_soc_component_update_bits(component, AIU_I2S_DAC_CFG,
+				      AIU_I2S_DAC_CFG_MSB_FIRST,
+				      AIU_I2S_DAC_CFG_MSB_FIRST);
+
+	/* Set bclk to lrlck ratio */
+	snd_soc_component_update_bits(component, AIU_CODEC_DAC_LRCLK_CTRL,
+				      AIU_CODEC_DAC_LRCLK_CTRL_DIV,
+				      FIELD_PREP(AIU_CODEC_DAC_LRCLK_CTRL_DIV,
+						 64 - 1));
+
+	bs = fs / 64;
+
+	if (aiu->platform->has_clk_ctrl_more_i2s_div)
+		ret = aiu_encoder_i2s_set_more_div(component, params, bs);
+	else
+		ret = aiu_encoder_i2s_set_legacy_div(component, params, bs);
+
+	if (ret)
+		return ret;
+
 	/* Make sure amclk is used for HDMI i2s as well */
 	snd_soc_component_update_bits(component, AIU_CLK_CTRL_MORE,
 				      AIU_CLK_CTRL_MORE_HDMI_AMCLK,
diff --git a/sound/soc/meson/aiu.c b/sound/soc/meson/aiu.c
index 38209312a8c3..dc35ca79021c 100644
--- a/sound/soc/meson/aiu.c
+++ b/sound/soc/meson/aiu.c
@@ -351,15 +351,24 @@ static int aiu_remove(struct platform_device *pdev)
 
 static const struct aiu_platform_data aiu_gxbb_pdata = {
 	.has_acodec = false,
+	.has_clk_ctrl_more_i2s_div = true,
 };
 
 static const struct aiu_platform_data aiu_gxl_pdata = {
 	.has_acodec = true,
+	.has_clk_ctrl_more_i2s_div = true,
+};
+
+static const struct aiu_platform_data aiu_meson8_pdata = {
+	.has_acodec = false,
+	.has_clk_ctrl_more_i2s_div = false,
 };
 
 static const struct of_device_id aiu_of_match[] = {
 	{ .compatible = "amlogic,aiu-gxbb", .data = &aiu_gxbb_pdata },
 	{ .compatible = "amlogic,aiu-gxl", .data = &aiu_gxl_pdata },
+	{ .compatible = "amlogic,aiu-meson8", .data = &aiu_meson8_pdata },
+	{ .compatible = "amlogic,aiu-meson8b", .data = &aiu_meson8_pdata },
 	{}
 };
 MODULE_DEVICE_TABLE(of, aiu_of_match);
diff --git a/sound/soc/meson/aiu.h b/sound/soc/meson/aiu.h
index ab003638d5e5..87aa19ac4af3 100644
--- a/sound/soc/meson/aiu.h
+++ b/sound/soc/meson/aiu.h
@@ -29,6 +29,7 @@ struct aiu_interface {
 
 struct aiu_platform_data {
 	bool has_acodec;
+	bool has_clk_ctrl_more_i2s_div;
 };
 
 struct aiu {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

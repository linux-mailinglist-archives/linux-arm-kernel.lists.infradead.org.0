Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3622C33729
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXUzj8/zlex4A+pdmkikE/ckmA6U4Q/k4nz3ZeF4RaE=; b=nFcvoMLlagGFFJ
	ptt6AOOv+mjJ2JUdBsk472ry/fAFdnI3Ljr9uElYhpiaQlg0kiQK9a+IP6AyNj2672lG/bFfru4o+
	vVhGrpXUumk0YHkRSFZ7BbJXWCd+Pp8XkZdhiRodVoBCVuD5Q6MLX2JyQgzn5rY8RGtZuP6KgB8Ja
	FfJ7kwJgOJJYjTuN53bMDnfOLCaR19IvMuIKiexi6InuPkP9f8sSGPpg3WzyzLz9ry6U7KtRnLgKL
	RMfLI2YBrzxBgIpwUsgupNrhMBchryPz4+CLNtVaHHZbmI5pLsficBxmN2SRVhxIN3gAPClLRhSIG
	wxF+v6vTy/xKF9XelE0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXr4g-00030f-Uw; Mon, 03 Jun 2019 17:48:46 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXr3e-0001mp-V7
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:47:46 +0000
Received: by mail-lf1-x142.google.com with SMTP id u10so7252080lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 10:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JwGUR02EDQ13UCHXrb89qrEiTxqnpniiixZ9ii9/brU=;
 b=fbvcavDwHCyV2dKEGAeUTgZUKMNr01Q6ULE8FaQUiQ0JNUrjsYilRijeWC2uCcENRm
 ncJuCkU64ceD57b3rxwPalvIbpznVZ7OkkJ4B0ZPwyGyAA2gs/VJl5rtG1a0rPbDNLBj
 Gq4NihVFfIedw9rSwdHTg7pv/zx/Am+uDPlXbJE8VRA2RBdGBsca4ykyyGNXAbwI0pRQ
 Zi/4ypd/JLnHATw3n1vJk8wIgXn44kMJB5tRTL7xqUpY5vhW8KTrfn17Secy0wGMPITQ
 JFijHJq9c8jmkEMhQN8AgIdRwr/DksdSrrCmnStyH+lY/STE05oQ5yB+q0o4EOFL8IDm
 z4Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JwGUR02EDQ13UCHXrb89qrEiTxqnpniiixZ9ii9/brU=;
 b=WuCAImCCxFLJiw3z1P4hCYzQMUHragUOvqEqMHR8yX9M3rhIIp6x9dMOaJDBOI3OE2
 uIxr1Jt5oMomhjSkj83joA+gnW/IZkIRHyjIjFODnAqdHf1sP9dSSpyJlv2cMM8PVRBX
 ZhDc99PFmBmlyK6m47ld0DjLQ02dvaXnWVaDSYtKtDEmQdLsazPQwTnm8oct9AhnTcRl
 vcPVlhN7fMnJ19WKqCMvb9hWfu4qglv4FjpAT6UwpCtlbjJvfAAPuJGWVLSiZ6Zyq6Nl
 tcp+SXI9SdW3ip0h9T13yiU9XECIR1sx85RVAsKdDKV7TTz73kAUVKjGlUcaGGohJCia
 BOIA==
X-Gm-Message-State: APjAAAUN9z65XnpmZkES9rBWZqy/9BOdS8/nu1XEC169oCRX8iNN4vc5
 C41L0EJwsMJuQ7JdIKHpgZY=
X-Google-Smtp-Source: APXvYqzhmC7VgtWYMxxp2kY23YtH8Ca0a0KQNKe2mlI1+BLdkn+mgGJp9VxVUIN/qnwBwT0R5uQVCQ==
X-Received: by 2002:a19:4f50:: with SMTP id a16mr13990334lfk.24.1559584061508; 
 Mon, 03 Jun 2019 10:47:41 -0700 (PDT)
Received: from localhost.localdomain ([188.150.253.81])
 by smtp.gmail.com with ESMTPSA id n7sm2803532lfi.68.2019.06.03.10.47.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 10:47:41 -0700 (PDT)
From: codekipper@gmail.com
To: maxime.ripard@free-electrons.com, wens@csie.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v4 4/9] ASoC: sun4i-i2s: Reduce quirks for sun8i-h3
Date: Mon,  3 Jun 2019 19:47:30 +0200
Message-Id: <20190603174735.21002-5-codekipper@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603174735.21002-1-codekipper@gmail.com>
References: <20190603174735.21002-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_104743_302045_BAC1D812 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

We have a number of flags used to identify the functionality
of the IP block found on the sun8i-h3 and later devices. As it
is only neccessary to identify this new block then replace
these flags with just one.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 23 +++++++----------------
 1 file changed, 7 insertions(+), 16 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index e2961d8f6e8c..329883750d6f 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -119,10 +119,7 @@
  *
  * @has_reset: SoC needs reset deasserted.
  * @has_slave_select_bit: SoC has a bit to enable slave mode.
- * @has_fmt_set_lrck_period: SoC requires lrclk period to be set.
- * @has_chcfg: tx and rx slot number need to be set.
- * @has_chsel_tx_chen: SoC requires that the tx channels are enabled.
- * @has_chsel_offset: SoC uses offset for selecting dai operational mode.
+ * @is_h3_i2s_based: This block is similiar to what is found on the h3.
  * @reg_offset_txdata: offset of the tx fifo.
  * @sun4i_i2s_regmap: regmap config to use.
  * @mclk_offset: Value by which mclkdiv needs to be adjusted.
@@ -143,10 +140,7 @@
 struct sun4i_i2s_quirks {
 	bool				has_reset;
 	bool				has_slave_select_bit;
-	bool				has_fmt_set_lrck_period;
-	bool				has_chcfg;
-	bool				has_chsel_tx_chen;
-	bool				has_chsel_offset;
+	bool				is_h3_i2s_based;
 	unsigned int			reg_offset_txdata;	/* TX FIFO */
 	const struct regmap_config	*sun4i_i2s_regmap;
 	unsigned int			mclk_offset;
@@ -340,7 +334,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 	regmap_field_write(i2s->field_clkdiv_mclk_en, 1);
 
 	/* Set sync period */
-	if (i2s->variant->has_fmt_set_lrck_period)
+	if (i2s->variant->is_h3_i2s_based)
 		regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
 				   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
 				   SUN8I_I2S_FMT0_LRCK_PERIOD(32));
@@ -366,7 +360,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 		return -EINVAL;
 	}
 
-	if (i2s->variant->has_chcfg) {
+	if (i2s->variant->is_h3_i2s_based) {
 		regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
 				   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
 				   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM(channels));
@@ -386,7 +380,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	regmap_field_write(i2s->field_rxchansel,
 			   SUN4I_I2S_CHAN_SEL(params_channels(params)));
 
-	if (i2s->variant->has_chsel_tx_chen)
+	if (i2s->variant->is_h3_i2s_based)
 		regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
 				   SUN8I_I2S_TX_CHAN_EN_MASK,
 				   SUN8I_I2S_TX_CHAN_EN(channels));
@@ -449,7 +443,7 @@ static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 		return -EINVAL;
 	}
 
-	if (i2s->variant->has_chsel_offset) {
+	if (i2s->variant->is_h3_i2s_based) {
 		/*
 		 * offset being set indicates that we're connected to an i2s
 		 * device, however offset is only used on the sun8i block and
@@ -942,10 +936,7 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.mclk_offset		= 1,
 	.bclk_offset		= 2,
 	.fmt_offset		= 3,
-	.has_fmt_set_lrck_period = true,
-	.has_chcfg		= true,
-	.has_chsel_tx_chen	= true,
-	.has_chsel_offset	= true,
+	.is_h3_i2s_based     = true,
 	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
 	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

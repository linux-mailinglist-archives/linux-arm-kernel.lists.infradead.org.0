Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3198D88FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:08:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lAcd92ebD5LoGCxMncrVyT8CrcblKsDU44kPkvLSus4=; b=dAd9ekLSKIzJcU
	zVZdb0eYTKT8CnoqcXsfckD+/xOZKkj2zTFPfOQNhha/EvFvEpCWxCx/U7eyErqxESagbRBnwzNfP
	Ngp8Y5xr96HZivAy5R0otXPVxXXh8mvrhKeh2dII3btO8WCOuaujgnRGroFiK8BQDC+Ern0aAklgN
	C6mkee0Rxy6ctS/RYDn+mMj35nlcO+Hs60N4glagcQ7ekTcQ51uQupP4VgwiD7ziIg88qv5cZsp6Z
	nU/Ozt9JUFzSEvzIqv3AuloSGrJQMdW+vAy0BZRfbuC8uqi/nPKAQdzHX5GQZ7rU8ROxswdLKoP3+
	ARKXbSy1uctfFpZkbHLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdPy-00008I-0r; Wed, 16 Oct 2019 07:08:22 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdPN-0008JO-5c
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:07:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id y23so22776067lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kDtdILcfLHoVejEtGgLfvnr1m900cxUvF44JNpWqBWQ=;
 b=XNEoslePrQiCPCXuOnDyy5PnKlhPhOjFeGvb9qfXg63GuYrL1wakT6kL3MgLI7npCd
 SICpSGkSVRWkjYZ64LBiiMnOtjDXe+5RnsP2Ko1deb/JUik1ialZMRvRvWzFV0ytNCNn
 C1mnQPSR+Zk1niRVJzjo5QCTHUIT+/KwUfAE41lqF0eF/L5vL99jfL/VXmKXS2fSeDEQ
 KjNG0lEiyju1a5qnai9EJJ0oHfwp54AG86k8qK3xtFDreiTsBoGoaZcZxMUeaHW6yPD9
 ynztCpZHXYXllLnfhQsUjlgGCuKzFq9CZmqkAderDUGu4nxmuDpPgqMlD1JuUDMYk1sk
 KJmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kDtdILcfLHoVejEtGgLfvnr1m900cxUvF44JNpWqBWQ=;
 b=au2S012eRi7gbH4cI20G68Q0NJt7SsdsEDq/a3k5IqqUPCabALp525r/tOH+O/+6Tr
 eMroNTGQWF9VRMzOpFpbGdgXTXMSztGywuVJJNkDonCyzUntnYGCrh1mHImL7yX9G/mO
 fRhpEzqyHyQb44N3bHkn0HCpcOB3lbsF7+fvI7DKI0SEwPEkJ4E8eODtowJSJslC0D8V
 iAL5lxtKQEPYsUXA3nUeEUqckDPuuBgvjmqwgpmeLaWfGCcDca4gxiYjod1jE+HjQwk9
 vH5T4E14wqq1x/xquy6SJ4tJGWP25fhNJoTjNiM6Hk8SVir6GRdlnYbMy2NCaU1lCzqV
 gVOA==
X-Gm-Message-State: APjAAAXSvPOoLRZS8BV3uHrT7Uv5g0xCwmw6IKWUvkiYXfaqYMHGLFGn
 L9r6W67mPaKCk0ZpOGRYB5oLYFXU
X-Google-Smtp-Source: APXvYqzPrA41KnDu7zXYKhTKIDFPIusxpkGfQ/f36MqaVUccNYdTjpt+jBN/sHBQmPMYw+AofQ+MZg==
X-Received: by 2002:a2e:9117:: with SMTP id m23mr24989061ljg.82.1571209663820; 
 Wed, 16 Oct 2019 00:07:43 -0700 (PDT)
Received: from localhost.localdomain (c213-102-65-51.bredband.comhem.se.
 [213.102.65.51])
 by smtp.gmail.com with ESMTPSA id j191sm1361493lfj.49.2019.10.16.00.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:07:43 -0700 (PDT)
From: codekipper@gmail.com
To: mripard@kernel.org,
	wens@csie.org,
	linux-sunxi@googlegroups.com
Subject: [PATCH v6 1/7] ASoC: sun4i-i2s: Move channel select offset
Date: Wed, 16 Oct 2019 09:07:34 +0200
Message-Id: <20191016070740.121435-2-codekipper@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016070740.121435-1-codekipper@gmail.com>
References: <20191016070740.121435-1-codekipper@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_000745_212763_5803AEC0 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

On the newer SoCs the offset is used to set the mode of the
connection. As it is to be used elsewhere then it makes sense
to move it to the main structure.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index d0a8d5810c0a..f1a80973c450 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -156,7 +156,7 @@ struct sun4i_i2s_quirks {
 	s8	(*get_wss)(const struct sun4i_i2s *, int);
 	int	(*set_chan_cfg)(const struct sun4i_i2s *,
 				const struct snd_pcm_hw_params *);
-	int	(*set_fmt)(const struct sun4i_i2s *, unsigned int);
+	int	(*set_fmt)(struct sun4i_i2s *, unsigned int);
 };
 
 struct sun4i_i2s {
@@ -169,6 +169,7 @@ struct sun4i_i2s {
 	unsigned int	mclk_freq;
 	unsigned int	slots;
 	unsigned int	slot_width;
+	unsigned int	offset;
 
 	struct snd_dmaengine_dai_dma_data	capture_dma_data;
 	struct snd_dmaengine_dai_dma_data	playback_dma_data;
@@ -516,7 +517,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 				      slots, slot_width);
 }
 
-static int sun4i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
+static int sun4i_i2s_set_soc_fmt(struct sun4i_i2s *i2s,
 				 unsigned int fmt)
 {
 	u32 val;
@@ -589,11 +590,10 @@ static int sun4i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
 	return 0;
 }
 
-static int sun8i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
+static int sun8i_i2s_set_soc_fmt(struct sun4i_i2s *i2s,
 				 unsigned int fmt)
 {
 	u32 mode, val;
-	u8 offset;
 
 	/*
 	 * DAI clock polarity
@@ -632,27 +632,27 @@ static int sun8i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
 	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 	case SND_SOC_DAIFMT_DSP_A:
 		mode = SUN8I_I2S_CTRL_MODE_PCM;
-		offset = 1;
+		i2s->offset = 1;
 		break;
 
 	case SND_SOC_DAIFMT_DSP_B:
 		mode = SUN8I_I2S_CTRL_MODE_PCM;
-		offset = 0;
+		i2s->offset = 0;
 		break;
 
 	case SND_SOC_DAIFMT_I2S:
 		mode = SUN8I_I2S_CTRL_MODE_LEFT;
-		offset = 1;
+		i2s->offset = 1;
 		break;
 
 	case SND_SOC_DAIFMT_LEFT_J:
 		mode = SUN8I_I2S_CTRL_MODE_LEFT;
-		offset = 0;
+		i2s->offset = 0;
 		break;
 
 	case SND_SOC_DAIFMT_RIGHT_J:
 		mode = SUN8I_I2S_CTRL_MODE_RIGHT;
-		offset = 0;
+		i2s->offset = 0;
 		break;
 
 	default:
@@ -663,10 +663,10 @@ static int sun8i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
 			   SUN8I_I2S_CTRL_MODE_MASK, mode);
 	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
 			   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
-			   SUN8I_I2S_TX_CHAN_OFFSET(offset));
+			   SUN8I_I2S_TX_CHAN_OFFSET(i2s->offset));
 	regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
 			   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
-			   SUN8I_I2S_TX_CHAN_OFFSET(offset));
+			   SUN8I_I2S_TX_CHAN_OFFSET(i2s->offset));
 
 	/* DAI clock master masks */
 	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

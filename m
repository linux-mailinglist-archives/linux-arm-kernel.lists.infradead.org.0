Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 938AF174B7C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 06:32:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3PBI+8NPrid0BR62tcwoqC4d+KZDHgupoftBFVq3goI=; b=Z1rdT3LKKPQaACg5kex4OZ/vMj
	bijdigyWF0AvDyx4NS0hUPPcJL6YpmoGO6qVxrvPh6yJabPMQI80GPfDqXt0HVtgxrtxYorwzeQ9g
	NTyMB9Iom2wxyXPSlyC2yNfBdDVN7vZqVecmojsqgajj0UbcmikAEjdFov+AfUSgQ8iCpUL4zcyaz
	D4vodtX1khCF3iZbo6jAJG3X5eM8lKrZ49iaHsGd/yY6OJStADiLj9fobi+c6BCPPI6idzu3JcTeE
	OoWK66bmGvTG9TSpExmzVqRyROH/NswkMmrO+DvDWjkt0pBbjVX2YASTeArKDbSF5LdNZDXyQFQbM
	1vLY7XpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8HD6-0001Ic-2k; Sun, 01 Mar 2020 05:32:16 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8HBb-0008LP-6D
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 05:30:45 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2B4F21A09C6;
 Sun,  1 Mar 2020 06:30:40 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B19B41A09CD;
 Sun,  1 Mar 2020 06:30:30 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9095F402ED;
 Sun,  1 Mar 2020 13:30:19 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: timur@kernel.org, nicoleotsuka@gmail.com, Xiubo.Lee@gmail.com,
 festevam@gmail.com, broonie@kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, robh+dt@kernel.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 4/8] ASoC: fsl_asrc: Change asrc_width to asrc_format
Date: Sun,  1 Mar 2020 13:24:15 +0800
Message-Id: <c5f0e275a1f2da9bd72e29b85e973baa1cb1d6a4.1583039752.git.shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1583039752.git.shengjiu.wang@nxp.com>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
In-Reply-To: <cover.1583039752.git.shengjiu.wang@nxp.com>
References: <cover.1583039752.git.shengjiu.wang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_213043_510351_0C7E173B 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

asrc_format is more inteligent, which is align with the alsa
definition snd_pcm_format_t, we don't need to convert it to
format in driver, and it can distinguish S24_LE & S24_3LE.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 sound/soc/fsl/fsl_asrc.c     | 19 ++++++-------------
 sound/soc/fsl/fsl_asrc.h     |  4 ++--
 sound/soc/fsl/fsl_asrc_dma.c | 15 ++++++++++++---
 3 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/sound/soc/fsl/fsl_asrc.c b/sound/soc/fsl/fsl_asrc.c
index 0dcebc24c312..3460ff7f92e2 100644
--- a/sound/soc/fsl/fsl_asrc.c
+++ b/sound/soc/fsl/fsl_asrc.c
@@ -589,7 +589,6 @@ static int fsl_asrc_dai_hw_params(struct snd_pcm_substream *substream,
 	unsigned int channels = params_channels(params);
 	unsigned int rate = params_rate(params);
 	struct asrc_config config;
-	snd_pcm_format_t format;
 	int ret;
 
 	ret = fsl_asrc_request_pair(channels, pair);
@@ -600,11 +599,6 @@ static int fsl_asrc_dai_hw_params(struct snd_pcm_substream *substream,
 
 	pair->config = &config;
 
-	if (asrc_priv->asrc_width == 16)
-		format = SNDRV_PCM_FORMAT_S16_LE;
-	else
-		format = SNDRV_PCM_FORMAT_S24_LE;
-
 	config.pair = pair->index;
 	config.channel_num = channels;
 	config.inclk = INCLK_NONE;
@@ -612,11 +606,11 @@ static int fsl_asrc_dai_hw_params(struct snd_pcm_substream *substream,
 
 	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
 		config.input_format   = params_format(params);
-		config.output_format  = format;
+		config.output_format  = asrc_priv->asrc_format;
 		config.input_sample_rate  = rate;
 		config.output_sample_rate = asrc_priv->asrc_rate;
 	} else {
-		config.input_format   = format;
+		config.input_format   = asrc_priv->asrc_format;
 		config.output_format  = params_format(params);
 		config.input_sample_rate  = asrc_priv->asrc_rate;
 		config.output_sample_rate = rate;
@@ -1052,16 +1046,15 @@ static int fsl_asrc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = of_property_read_u32(np, "fsl,asrc-width",
-				   &asrc_priv->asrc_width);
+	ret = of_property_read_u32(np, "fsl,asrc-format", &asrc_priv->asrc_format);
 	if (ret) {
 		dev_err(&pdev->dev, "failed to get output width\n");
 		return ret;
 	}
 
-	if (asrc_priv->asrc_width != 16 && asrc_priv->asrc_width != 24) {
-		dev_warn(&pdev->dev, "unsupported width, switching to 24bit\n");
-		asrc_priv->asrc_width = 24;
+	if (!(FSL_ASRC_FORMATS & (1ULL << asrc_priv->asrc_format))) {
+		dev_warn(&pdev->dev, "unsupported format, switching to S24_LE\n");
+		asrc_priv->asrc_format = SNDRV_PCM_FORMAT_S24_LE;
 	}
 
 	platform_set_drvdata(pdev, asrc_priv);
diff --git a/sound/soc/fsl/fsl_asrc.h b/sound/soc/fsl/fsl_asrc.h
index 8a821132d9d0..4940fa0a7542 100644
--- a/sound/soc/fsl/fsl_asrc.h
+++ b/sound/soc/fsl/fsl_asrc.h
@@ -493,7 +493,7 @@ struct fsl_asrc_pair {
  * @channel_avail: non-occupied channel numbers
  * @clk_map: clock map for input/output clock
  * @asrc_rate: default sample rate for ASoC Back-Ends
- * @asrc_width: default sample width for ASoC Back-Ends
+ * @asrc_format: default sample format for ASoC Back-Ends
  * @regcache_cfg: store register value of REG_ASRCFG
  */
 struct fsl_asrc {
@@ -514,7 +514,7 @@ struct fsl_asrc {
 	unsigned char *clk_map[2];
 
 	int asrc_rate;
-	int asrc_width;
+	snd_pcm_format_t asrc_format;
 
 	u32 regcache_cfg;
 };
diff --git a/sound/soc/fsl/fsl_asrc_dma.c b/sound/soc/fsl/fsl_asrc_dma.c
index 44e5924be870..af6b583aa71e 100644
--- a/sound/soc/fsl/fsl_asrc_dma.c
+++ b/sound/soc/fsl/fsl_asrc_dma.c
@@ -146,7 +146,7 @@ static int fsl_asrc_dma_hw_params(struct snd_soc_component *component,
 	struct device *dev_be;
 	u8 dir = tx ? OUT : IN;
 	dma_cap_mask_t mask;
-	int ret;
+	int ret, bits;
 
 	/* Fetch the Back-End dma_data from DPCM */
 	for_each_dpcm_be(rtd, stream, dpcm) {
@@ -230,10 +230,19 @@ static int fsl_asrc_dma_hw_params(struct snd_soc_component *component,
 		return -EINVAL;
 	}
 
-	if (asrc_priv->asrc_width == 16)
+	bits = snd_pcm_format_physical_width(asrc_priv->asrc_format);
+	if (bits < 8 || bits > 64)
+		return -EINVAL;
+	else if (bits == 8)
+		buswidth = DMA_SLAVE_BUSWIDTH_1_BYTE;
+	else if (bits == 16)
 		buswidth = DMA_SLAVE_BUSWIDTH_2_BYTES;
-	else
+	else if (bits == 24)
+		buswidth = DMA_SLAVE_BUSWIDTH_3_BYTES;
+	else if (bits <= 32)
 		buswidth = DMA_SLAVE_BUSWIDTH_4_BYTES;
+	else
+		buswidth = DMA_SLAVE_BUSWIDTH_8_BYTES;
 
 	config_be.direction = DMA_DEV_TO_DEV;
 	config_be.src_addr_width = buswidth;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

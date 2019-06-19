Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022CD4B735
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 13:40:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aWh0pnax+g+VfIFdQhfVuOYoI2uFQmQ/0sfg1xKS2m0=; b=fNdk+2tbTsHWJV
	8ky/0MxFHEzhhIGRInJakhhX/ZJaPNJUq46B3yKTE47udj/Ifg13Lgx4HwnvC/08abSDMKzcFETk3
	AyuFD6oN+uhnvll33AzfStYsg5F1GoVKdlZlpn/zrmCrCsahPm/HAOpy2Ub7PHEG9WVNUvI3zBepi
	rcwnN73VIHkXO2RhDMncexvLIP507gsb+LjJfMqLF5vmJyr2uL+J/dU4r2HCmqfBP8+kr/vjusq71
	FQxCnEBxDBIDNC4uCto6kQNq38JRbQKY3/W50C0vst2jcSlCPQQOt2Yd4S9xl77QvVBL++PLxzRyG
	ZlXqEklOwIgbTVNwrDHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYwz-0006pI-St; Wed, 19 Jun 2019 11:40:25 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYwq-0006oc-MT
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 11:40:18 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5JBV2Qb027524; Wed, 19 Jun 2019 13:40:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=STywHjeMiZssNI+UTkVh5oLxGP1CkwSOM/Df8W6afIc=;
 b=kFj2Lc1xJjAFkVEonzO/1hpGabemD/IxS2GvtHTU1BMV3Fivl7IpaHhW3INs+YX1kOHN
 Y+XBU6LSjqGikqRXPxjawzWrgXRWjnF1H2ukTZmpFl/r69C7wOJ5NiwxIZqRKbsmA7x9
 ls0Mr4Nt5N922wdRW6QYM7sj+vikuuSl+XQRSnA6nP07iHWeoumOzTwXMKkANWjLANlC
 uz2L0bwNxPVD8y9BtEmpml+1vdz+8wayCToZhD594HDY+y8a3whiMoCgQ/x4BJWSkZre
 77yEGx6wOGouhBmOR7X14GxWNktWodim7UPRef7TG8Qh4uLJLaHE0uTYrwEuO7yaiG+l 4g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t7813bkt4-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 19 Jun 2019 13:40:06 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F017731;
 Wed, 19 Jun 2019 11:40:05 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AF8A826C0;
 Wed, 19 Jun 2019 11:40:05 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun
 2019 13:40:05 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 19 Jun 2019 13:40:05
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>,
 <arnaud.pouliquen@st.com>
Subject: [PATCH] ASoC: stm32: dfsdm: add 16 bits audio record support
Date: Wed, 19 Jun 2019 13:40:02 +0200
Message-ID: <1560944402-8115-1-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-19_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_044017_182532_8E8824B2 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support of audio 16 bits format record to STM32
DFSDM driver.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 sound/soc/stm/stm32_adfsdm.c | 49 +++++++++++++++++++++++++++++++++++---------
 1 file changed, 39 insertions(+), 10 deletions(-)

diff --git a/sound/soc/stm/stm32_adfsdm.c b/sound/soc/stm/stm32_adfsdm.c
index cc517e007039..3c9a9deec9af 100644
--- a/sound/soc/stm/stm32_adfsdm.c
+++ b/sound/soc/stm/stm32_adfsdm.c
@@ -45,7 +45,7 @@ struct stm32_adfsdm_priv {
 static const struct snd_pcm_hardware stm32_adfsdm_pcm_hw = {
 	.info = SNDRV_PCM_INFO_INTERLEAVED | SNDRV_PCM_INFO_BLOCK_TRANSFER |
 		SNDRV_PCM_INFO_MMAP | SNDRV_PCM_INFO_PAUSE,
-	.formats = SNDRV_PCM_FMTBIT_S32_LE,
+	.formats = SNDRV_PCM_FMTBIT_S16_LE | SNDRV_PCM_FMTBIT_S32_LE,
 
 	.rate_min = 8000,
 	.rate_max = 32000,
@@ -141,7 +141,8 @@ static const struct snd_soc_dai_driver stm32_adfsdm_dai = {
 	.capture = {
 		    .channels_min = 1,
 		    .channels_max = 1,
-		    .formats = SNDRV_PCM_FMTBIT_S32_LE,
+		    .formats = SNDRV_PCM_FMTBIT_S16_LE |
+			       SNDRV_PCM_FMTBIT_S32_LE,
 		    .rates = (SNDRV_PCM_RATE_8000 | SNDRV_PCM_RATE_16000 |
 			      SNDRV_PCM_RATE_32000),
 		    },
@@ -152,30 +153,58 @@ static const struct snd_soc_component_driver stm32_adfsdm_dai_component = {
 	.name = "stm32_dfsdm_audio",
 };
 
+static void memcpy_32to16(void *dest, const void *src, size_t n)
+{
+	unsigned int i = 0;
+	u16 *d = (u16 *)dest, *s = (u16 *)src;
+
+	s++;
+	for (i = n; i > 0; i--) {
+		*d++ = *s++;
+		s++;
+	}
+}
+
 static int stm32_afsdm_pcm_cb(const void *data, size_t size, void *private)
 {
 	struct stm32_adfsdm_priv *priv = private;
 	struct snd_soc_pcm_runtime *rtd = priv->substream->private_data;
 	u8 *pcm_buff = priv->pcm_buff;
 	u8 *src_buff = (u8 *)data;
-	unsigned int buff_size = snd_pcm_lib_buffer_bytes(priv->substream);
-	unsigned int period_size = snd_pcm_lib_period_bytes(priv->substream);
 	unsigned int old_pos = priv->pos;
-	unsigned int cur_size = size;
+	size_t buff_size = snd_pcm_lib_buffer_bytes(priv->substream);
+	size_t period_size = snd_pcm_lib_period_bytes(priv->substream);
+	size_t cur_size, src_size = size;
+	snd_pcm_format_t format = priv->substream->runtime->format;
+
+	if (format == SNDRV_PCM_FORMAT_S16_LE)
+		src_size >>= 1;
+	cur_size = src_size;
 
 	dev_dbg(rtd->dev, "%s: buff_add :%pK, pos = %d, size = %zu\n",
-		__func__, &pcm_buff[priv->pos], priv->pos, size);
+		__func__, &pcm_buff[priv->pos], priv->pos, src_size);
 
-	if ((priv->pos + size) > buff_size) {
-		memcpy(&pcm_buff[priv->pos], src_buff, buff_size - priv->pos);
+	if ((priv->pos + src_size) > buff_size) {
+		if (format == SNDRV_PCM_FORMAT_S16_LE)
+			memcpy_32to16(&pcm_buff[priv->pos], src_buff,
+				      buff_size - priv->pos);
+		else
+			memcpy(&pcm_buff[priv->pos], src_buff,
+			       buff_size - priv->pos);
 		cur_size -= buff_size - priv->pos;
 		priv->pos = 0;
 	}
 
-	memcpy(&pcm_buff[priv->pos], &src_buff[size - cur_size], cur_size);
+	if (format == SNDRV_PCM_FORMAT_S16_LE)
+		memcpy_32to16(&pcm_buff[priv->pos],
+			      &src_buff[src_size - cur_size], cur_size);
+	else
+		memcpy(&pcm_buff[priv->pos], &src_buff[src_size - cur_size],
+		       cur_size);
+
 	priv->pos = (priv->pos + cur_size) % buff_size;
 
-	if (cur_size != size || (old_pos && (old_pos % period_size < size)))
+	if (cur_size != src_size || (old_pos && (old_pos % period_size < size)))
 		snd_pcm_period_elapsed(priv->substream);
 
 	return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

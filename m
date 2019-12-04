Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045B1112EDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:44:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=miOiClSO9tbXGqSLVeSatUiwpVgzFxKp42BVbaX9FfM=; b=XtGt+BcCh2ilGB
	WEuukG/zTqMLDjPQ1SDfgEHE5d+MlAUZT6cVkucUICzHMqpYSUdlbmgiXldEo0QE6GppdE93LpX/V
	jb2tkQE+5p50nPK53m3M19y2567gzaHy0y6NEjLVX/ngdQMo4yE/N0b9c4/2/a/E/OWzQQGSlHZHV
	GbAHkjgvrNWDV4DuQxLTnsghdl+ETQpkYIy3T7UGe6jdsCc4ySbkDGFYKz44YGxvsNrnmmTWTMqH7
	LQBi7W1iKcyVprEkiGuE6DGSJiFpKgsBcFniF1b6SiT33xgLO41zcdymE5cX7Pfb6WHEWEOhWfNVN
	ZSAq8+bRYEyLl2+9Z+2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWpR-00010s-QS; Wed, 04 Dec 2019 15:44:37 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWoh-0000KI-Jf
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:43:54 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB4FgVgC032652; Wed, 4 Dec 2019 16:43:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=/Ivbs5G2+L1Rrc5+1dFeG7M8SNidljHJiN8CJkige+g=;
 b=h8Tme4nvLLlY/9qoSFvj6UuDZ/eEfS5kNssmr9SCyoK4sxvBsGhjzsaXDXFbjARmksMv
 dleCQqMEJB09ZnXODnuwjk39/byMd+xTuzJP/iC3ZHMMQ9MBvP9Pn7UN8aPL5UeGTHqo
 notwOfy9lY7iaqP82hBIIsMagJrvUom+jYSdIASNO/eRqcAZBQx2yvDRTQsArACHOZxv
 RdHJtVTaoagpZia1p3zWPQbfGIkkxKM4d+cMave7DSatLl+h4dQY2hVLUf/BwY+BHCwc
 1T3nU5ggx8WrlA2o+St0sVZd9oi3ECJpB+QsWMNZYVVbYwOmEu0hnGvtwwSWkWMx1Pu+ hA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wkes2wxy7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Dec 2019 16:43:43 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4B83310002A;
 Wed,  4 Dec 2019 16:43:43 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3EFAD2C71B5;
 Wed,  4 Dec 2019 16:43:43 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Wed, 4 Dec 2019 16:43:42 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <alsa-devel@alsa-project.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH 2/3] ASoC: stm32: spdifrx: fix race condition in irq handler
Date: Wed, 4 Dec 2019 16:43:32 +0100
Message-ID: <20191204154333.7152-3-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204154333.7152-1-olivier.moysan@st.com>
References: <20191204154333.7152-1-olivier.moysan@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-04_03:2019-12-04,2019-12-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_074351_939482_23C830CC 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When snd_pcm_stop() is called in interrupt routine,
substream context may have already been released.
Add protection on substream context.

Fixes: 03e4d5d56fa5 ("ASoC: stm32: Add SPDIFRX support")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 sound/soc/stm/stm32_spdifrx.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/sound/soc/stm/stm32_spdifrx.c b/sound/soc/stm/stm32_spdifrx.c
index 9c6beb610c17..3cb8e6db3eeb 100644
--- a/sound/soc/stm/stm32_spdifrx.c
+++ b/sound/soc/stm/stm32_spdifrx.c
@@ -220,6 +220,7 @@
  * @slave_config: dma slave channel runtime config pointer
  * @phys_addr: SPDIFRX registers physical base address
  * @lock: synchronization enabling lock
+ * @irq_lock: prevent race condition with IRQ on stream state
  * @cs: channel status buffer
  * @ub: user data buffer
  * @irq: SPDIFRX interrupt line
@@ -240,6 +241,7 @@ struct stm32_spdifrx_data {
 	struct dma_slave_config slave_config;
 	dma_addr_t phys_addr;
 	spinlock_t lock;  /* Sync enabling lock */
+	spinlock_t irq_lock; /* Prevent race condition on stream state */
 	unsigned char cs[SPDIFRX_CS_BYTES_NB];
 	unsigned char ub[SPDIFRX_UB_BYTES_NB];
 	int irq;
@@ -667,7 +669,6 @@ static const struct regmap_config stm32_h7_spdifrx_regmap_conf = {
 static irqreturn_t stm32_spdifrx_isr(int irq, void *devid)
 {
 	struct stm32_spdifrx_data *spdifrx = (struct stm32_spdifrx_data *)devid;
-	struct snd_pcm_substream *substream = spdifrx->substream;
 	struct platform_device *pdev = spdifrx->pdev;
 	unsigned int cr, mask, sr, imr;
 	unsigned int flags, sync_state;
@@ -747,14 +748,19 @@ static irqreturn_t stm32_spdifrx_isr(int irq, void *devid)
 			return IRQ_HANDLED;
 		}
 
-		if (substream)
-			snd_pcm_stop(substream, SNDRV_PCM_STATE_DISCONNECTED);
+		spin_lock(&spdifrx->irq_lock);
+		if (spdifrx->substream)
+			snd_pcm_stop(spdifrx->substream,
+				     SNDRV_PCM_STATE_DISCONNECTED);
+		spin_unlock(&spdifrx->irq_lock);
 
 		return IRQ_HANDLED;
 	}
 
-	if (err_xrun && substream)
-		snd_pcm_stop_xrun(substream);
+	spin_lock(&spdifrx->irq_lock);
+	if (err_xrun && spdifrx->substream)
+		snd_pcm_stop_xrun(spdifrx->substream);
+	spin_unlock(&spdifrx->irq_lock);
 
 	return IRQ_HANDLED;
 }
@@ -763,9 +769,12 @@ static int stm32_spdifrx_startup(struct snd_pcm_substream *substream,
 				 struct snd_soc_dai *cpu_dai)
 {
 	struct stm32_spdifrx_data *spdifrx = snd_soc_dai_get_drvdata(cpu_dai);
+	unsigned long flags;
 	int ret;
 
+	spin_lock_irqsave(&spdifrx->irq_lock, flags);
 	spdifrx->substream = substream;
+	spin_unlock_irqrestore(&spdifrx->irq_lock, flags);
 
 	ret = clk_prepare_enable(spdifrx->kclk);
 	if (ret)
@@ -841,8 +850,12 @@ static void stm32_spdifrx_shutdown(struct snd_pcm_substream *substream,
 				   struct snd_soc_dai *cpu_dai)
 {
 	struct stm32_spdifrx_data *spdifrx = snd_soc_dai_get_drvdata(cpu_dai);
+	unsigned long flags;
 
+	spin_lock_irqsave(&spdifrx->irq_lock, flags);
 	spdifrx->substream = NULL;
+	spin_unlock_irqrestore(&spdifrx->irq_lock, flags);
+
 	clk_disable_unprepare(spdifrx->kclk);
 }
 
@@ -946,6 +959,7 @@ static int stm32_spdifrx_probe(struct platform_device *pdev)
 	spdifrx->pdev = pdev;
 	init_completion(&spdifrx->cs_completion);
 	spin_lock_init(&spdifrx->lock);
+	spin_lock_init(&spdifrx->irq_lock);
 
 	platform_set_drvdata(pdev, spdifrx);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

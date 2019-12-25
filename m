Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095F212A514
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 01:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=76tl/HxDZyy/f8R4P/A4HHL/W6opR2DHX6YgRS3dB3Y=; b=OTY
	h+6Uon+x7HfrSTWtZD6zXspm42XpkMB5aMvQLvVc0enQ6lpp/7K8jLBOkHQ9hmlkgSk41zo9sj0f5
	tU4QJ0Xfv4OXH/IS6e0p71bBZWS6ELrP4MbCONSPBrJSmy7dl4DzNFQQ48hdrz4H/tCVVCwUw93Ld
	iQ6ymyfkqdaO2eqO/OUIJb03717PbtUBRPJOxVqHQVo3eURPSRxSOpUMtusyRVXAOeYHDmLF/x+sH
	IY+kSuakgp6LVUpIUDUAz3wT4GZEquQCXIrCS3jp3Z16rurwvrde05+UemCt25v4DGlBri3YHPnF9
	oyIJ6rLFH6yJdqKAaXVt/r5fAxuWXow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijuFB-0004vD-OG; Wed, 25 Dec 2019 00:09:41 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijuEg-0004eg-18
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 00:09:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=kl38DjUk9o2U/FwQRMbYB7NV347FDsumGC5L5YiNVQ0=; b=u6NttF2u5BRh
 5nhem86XSs2X/DlZxobkKy+mRK2TXg4SLI+xhrAorgkCUJ4p610ldGWpRMdag6pU4LViRd8HiTMsR
 gGzvGriqTlbHgNguWO5Lk47jwJPlKJK9oWqT/Jdakpirgfxjw+Y14+Zxo/LSNIsXy2R5NivfFDE2K
 JOW3g=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ijuEc-0007Lq-1I; Wed, 25 Dec 2019 00:09:06 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 8B1C6D01957; Wed, 25 Dec 2019 00:09:05 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Applied "ASoC: stm32: spdifrx: fix race condition in irq handler" to
 the asoc tree
In-Reply-To: <20191204154333.7152-3-olivier.moysan@st.com>
Message-Id: <applied-20191204154333.7152-3-olivier.moysan@st.com>
X-Patchwork-Hint: ignore
Date: Wed, 25 Dec 2019 00:09:05 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_160910_074339_6D112C8E 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, olivier.moysan@st.com, alexandre.torgue@st.com,
 tiwai@suse.com, linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
 Mark Brown <broonie@kernel.org>, mcoquelin.stm32@gmail.com, perex@perex.cz,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: stm32: spdifrx: fix race condition in irq handler

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 86e1956af4c863d653136fd6e5694adf2054dbaa Mon Sep 17 00:00:00 2001
From: Olivier Moysan <olivier.moysan@st.com>
Date: Wed, 4 Dec 2019 16:43:32 +0100
Subject: [PATCH] ASoC: stm32: spdifrx: fix race condition in irq handler

When snd_pcm_stop() is called in interrupt routine,
substream context may have already been released.
Add protection on substream context.

Fixes: 03e4d5d56fa5 ("ASoC: stm32: Add SPDIFRX support")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Link: https://lore.kernel.org/r/20191204154333.7152-3-olivier.moysan@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

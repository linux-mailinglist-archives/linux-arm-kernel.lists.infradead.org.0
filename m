Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3097713627C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 22:29:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=X8IUvASqBXsChbHOm44QijOUfWYTkOCasNXSgAzee+A=; b=l2K
	YQGr3Cm/mGtZFYOze7oWvRbJC1AkajounoiSqsnQCUjZXWJVTft6chnrSnau2g9S/9mldX6yKOxtG
	Hjo03ERzPr6xyu8GSf6gPXOaaLxfeE7+jd8ykwfmcXRZINOa9ZLKmRcQKj+fNmw8HIy58OYYARXZs
	5jt2u7tVtyG75FHggZIVVm0GO4CsX247tcr9z9R1++ucHBHWeoaPRt6eplpxDT3pG5iqwdu5xkjCX
	m59FMFMsgzg55RZkWsWnHXwqnF5Cj/wGa6XdsakdOJi0b9sI8PbvAI+gSKx2K8bzquHCovgAHfota
	fJQoyyVzicAzFpvPeP/fQGcIpjjkPew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipfN1-0007cs-DY; Thu, 09 Jan 2020 21:29:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipfMq-0007bj-RC
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 21:29:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63D701007;
 Thu,  9 Jan 2020 13:29:23 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC26A3F534;
 Thu,  9 Jan 2020 13:29:22 -0800 (PST)
Date: Thu, 09 Jan 2020 21:29:21 +0000
From: Mark Brown <broonie@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Applied "ASoC: stm32: sai: fix possible circular locking" to the asoc
 tree
In-Reply-To: <20200109083254.478-1-olivier.moysan@st.com>
Message-Id: <applied-20200109083254.478-1-olivier.moysan@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_132926_570224_859210A6 
X-CRM114-Status: GOOD (  23.87  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

   ASoC: stm32: sai: fix possible circular locking

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.5

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

From a14bf98c045bf119b7e779f186528e38c6428830 Mon Sep 17 00:00:00 2001
From: Olivier Moysan <olivier.moysan@st.com>
Date: Thu, 9 Jan 2020 09:32:54 +0100
Subject: [PATCH] ASoC: stm32: sai: fix possible circular locking

In current driver, locks can be taken as follows:
- Register access: take a lock on regmap config and then on clock.
- Master clock provider: take a lock on clock and then on regmap config.
This can lead to the circular locking summarized below.

Remove peripheral clock management through regmap framework, and manage
peripheral clock in driver instead. On register access, lock on clock
is taken first, which allows to avoid possible locking issue.

[ 6696.561513] ======================================================
[ 6696.567670] WARNING: possible circular locking dependency detected
[ 6696.573842] 4.19.49 #866 Not tainted
[ 6696.577397] ------------------------------------------------------
[ 6696.583566] pulseaudio/6439 is trying to acquire lock:
[ 6696.588697] 87b0a25b (enable_lock){..-.}, at: clk_enable_lock+0x64/0x128
[ 6696.595377]
[ 6696.595377] but task is already holding lock:
[ 6696.601197] d858f825 (stm32_sai_sub:1342:(sai->regmap_config)->lock){....}
...
[ 6696.812513]  Possible unsafe locking scenario:
[ 6696.812513]
[ 6696.818418]        CPU0                    CPU1
[ 6696.822935]        ----                    ----
[ 6696.827451]   lock(stm32_sai_sub:1342:(sai->regmap_config)->lock);
[ 6696.833618]                                lock(enable_lock);
[ 6696.839350]                                lock(stm32_sai_sub:1342:
                                              (sai->regmap_config)->lock);
[ 6696.848035]   lock(enable_lock);

Fixes: 03e78a242a15 ("ASoC: stm32: sai: add h7 support")

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Link: https://lore.kernel.org/r/20200109083254.478-1-olivier.moysan@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/stm/stm32_sai_sub.c | 194 ++++++++++++++++++++++++----------
 1 file changed, 140 insertions(+), 54 deletions(-)

diff --git a/sound/soc/stm/stm32_sai_sub.c b/sound/soc/stm/stm32_sai_sub.c
index 48e629ac2d88..30bcd5d3a32a 100644
--- a/sound/soc/stm/stm32_sai_sub.c
+++ b/sound/soc/stm/stm32_sai_sub.c
@@ -184,6 +184,56 @@ static bool stm32_sai_sub_writeable_reg(struct device *dev, unsigned int reg)
 	}
 }
 
+static int stm32_sai_sub_reg_up(struct stm32_sai_sub_data *sai,
+				unsigned int reg, unsigned int mask,
+				unsigned int val)
+{
+	int ret;
+
+	ret = clk_enable(sai->pdata->pclk);
+	if (ret < 0)
+		return ret;
+
+	ret = regmap_update_bits(sai->regmap, reg, mask, val);
+
+	clk_disable(sai->pdata->pclk);
+
+	return ret;
+}
+
+static int stm32_sai_sub_reg_wr(struct stm32_sai_sub_data *sai,
+				unsigned int reg, unsigned int mask,
+				unsigned int val)
+{
+	int ret;
+
+	ret = clk_enable(sai->pdata->pclk);
+	if (ret < 0)
+		return ret;
+
+	ret = regmap_write_bits(sai->regmap, reg, mask, val);
+
+	clk_disable(sai->pdata->pclk);
+
+	return ret;
+}
+
+static int stm32_sai_sub_reg_rd(struct stm32_sai_sub_data *sai,
+				unsigned int reg, unsigned int *val)
+{
+	int ret;
+
+	ret = clk_enable(sai->pdata->pclk);
+	if (ret < 0)
+		return ret;
+
+	ret = regmap_read(sai->regmap, reg, val);
+
+	clk_disable(sai->pdata->pclk);
+
+	return ret;
+}
+
 static const struct regmap_config stm32_sai_sub_regmap_config_f4 = {
 	.reg_bits = 32,
 	.reg_stride = 4,
@@ -295,7 +345,7 @@ static int stm32_sai_set_clk_div(struct stm32_sai_sub_data *sai,
 
 	mask = SAI_XCR1_MCKDIV_MASK(SAI_XCR1_MCKDIV_WIDTH(version));
 	cr1 = SAI_XCR1_MCKDIV_SET(div);
-	ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, mask, cr1);
+	ret = stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX, mask, cr1);
 	if (ret < 0)
 		dev_err(&sai->pdev->dev, "Failed to update CR1 register\n");
 
@@ -372,8 +422,8 @@ static int stm32_sai_mclk_enable(struct clk_hw *hw)
 
 	dev_dbg(&sai->pdev->dev, "Enable master clock\n");
 
-	return regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
-				  SAI_XCR1_MCKEN, SAI_XCR1_MCKEN);
+	return stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX,
+				    SAI_XCR1_MCKEN, SAI_XCR1_MCKEN);
 }
 
 static void stm32_sai_mclk_disable(struct clk_hw *hw)
@@ -383,7 +433,7 @@ static void stm32_sai_mclk_disable(struct clk_hw *hw)
 
 	dev_dbg(&sai->pdev->dev, "Disable master clock\n");
 
-	regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, SAI_XCR1_MCKEN, 0);
+	stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX, SAI_XCR1_MCKEN, 0);
 }
 
 static const struct clk_ops mclk_ops = {
@@ -446,15 +496,15 @@ static irqreturn_t stm32_sai_isr(int irq, void *devid)
 	unsigned int sr, imr, flags;
 	snd_pcm_state_t status = SNDRV_PCM_STATE_RUNNING;
 
-	regmap_read(sai->regmap, STM_SAI_IMR_REGX, &imr);
-	regmap_read(sai->regmap, STM_SAI_SR_REGX, &sr);
+	stm32_sai_sub_reg_rd(sai, STM_SAI_IMR_REGX, &imr);
+	stm32_sai_sub_reg_rd(sai, STM_SAI_SR_REGX, &sr);
 
 	flags = sr & imr;
 	if (!flags)
 		return IRQ_NONE;
 
-	regmap_write_bits(sai->regmap, STM_SAI_CLRFR_REGX, SAI_XCLRFR_MASK,
-			  SAI_XCLRFR_MASK);
+	stm32_sai_sub_reg_wr(sai, STM_SAI_CLRFR_REGX, SAI_XCLRFR_MASK,
+			     SAI_XCLRFR_MASK);
 
 	if (!sai->substream) {
 		dev_err(&pdev->dev, "Device stopped. Spurious IRQ 0x%x\n", sr);
@@ -503,8 +553,8 @@ static int stm32_sai_set_sysclk(struct snd_soc_dai *cpu_dai,
 	int ret;
 
 	if (dir == SND_SOC_CLOCK_OUT && sai->sai_mclk) {
-		ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
-					 SAI_XCR1_NODIV,
+		ret = stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX,
+					   SAI_XCR1_NODIV,
 					 freq ? 0 : SAI_XCR1_NODIV);
 		if (ret < 0)
 			return ret;
@@ -583,7 +633,7 @@ static int stm32_sai_set_dai_tdm_slot(struct snd_soc_dai *cpu_dai, u32 tx_mask,
 
 	slotr_mask |= SAI_XSLOTR_SLOTEN_MASK;
 
-	regmap_update_bits(sai->regmap, STM_SAI_SLOTR_REGX, slotr_mask, slotr);
+	stm32_sai_sub_reg_up(sai, STM_SAI_SLOTR_REGX, slotr_mask, slotr);
 
 	sai->slot_width = slot_width;
 	sai->slots = slots;
@@ -665,7 +715,7 @@ static int stm32_sai_set_dai_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
 	cr1_mask |= SAI_XCR1_CKSTR;
 	frcr_mask |= SAI_XFRCR_FSPOL;
 
-	regmap_update_bits(sai->regmap, STM_SAI_FRCR_REGX, frcr_mask, frcr);
+	stm32_sai_sub_reg_up(sai, STM_SAI_FRCR_REGX, frcr_mask, frcr);
 
 	/* DAI clock master masks */
 	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
@@ -693,7 +743,7 @@ static int stm32_sai_set_dai_fmt(struct snd_soc_dai *cpu_dai, unsigned int fmt)
 	cr1_mask |= SAI_XCR1_SLAVE;
 
 conf_update:
-	ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, cr1_mask, cr1);
+	ret = stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX, cr1_mask, cr1);
 	if (ret < 0) {
 		dev_err(cpu_dai->dev, "Failed to update CR1 register\n");
 		return ret;
@@ -730,12 +780,12 @@ static int stm32_sai_startup(struct snd_pcm_substream *substream,
 	}
 
 	/* Enable ITs */
-	regmap_write_bits(sai->regmap, STM_SAI_CLRFR_REGX,
-			  SAI_XCLRFR_MASK, SAI_XCLRFR_MASK);
+	stm32_sai_sub_reg_wr(sai, STM_SAI_CLRFR_REGX,
+			     SAI_XCLRFR_MASK, SAI_XCLRFR_MASK);
 
 	imr = SAI_XIMR_OVRUDRIE;
 	if (STM_SAI_IS_CAPTURE(sai)) {
-		regmap_read(sai->regmap, STM_SAI_CR2_REGX, &cr2);
+		stm32_sai_sub_reg_rd(sai, STM_SAI_CR2_REGX, &cr2);
 		if (cr2 & SAI_XCR2_MUTECNT_MASK)
 			imr |= SAI_XIMR_MUTEDETIE;
 	}
@@ -745,8 +795,8 @@ static int stm32_sai_startup(struct snd_pcm_substream *substream,
 	else
 		imr |= SAI_XIMR_AFSDETIE | SAI_XIMR_LFSDETIE;
 
-	regmap_update_bits(sai->regmap, STM_SAI_IMR_REGX,
-			   SAI_XIMR_MASK, imr);
+	stm32_sai_sub_reg_up(sai, STM_SAI_IMR_REGX,
+			     SAI_XIMR_MASK, imr);
 
 	return 0;
 }
@@ -763,10 +813,10 @@ static int stm32_sai_set_config(struct snd_soc_dai *cpu_dai,
 	 * SAI fifo threshold is set to half fifo, to keep enough space
 	 * for DMA incoming bursts.
 	 */
-	regmap_write_bits(sai->regmap, STM_SAI_CR2_REGX,
-			  SAI_XCR2_FFLUSH | SAI_XCR2_FTH_MASK,
-			  SAI_XCR2_FFLUSH |
-			  SAI_XCR2_FTH_SET(STM_SAI_FIFO_TH_HALF));
+	stm32_sai_sub_reg_wr(sai, STM_SAI_CR2_REGX,
+			     SAI_XCR2_FFLUSH | SAI_XCR2_FTH_MASK,
+			     SAI_XCR2_FFLUSH |
+			     SAI_XCR2_FTH_SET(STM_SAI_FIFO_TH_HALF));
 
 	/* DS bits in CR1 not set for SPDIF (size forced to 24 bits).*/
 	if (STM_SAI_PROTOCOL_IS_SPDIF(sai)) {
@@ -795,7 +845,7 @@ static int stm32_sai_set_config(struct snd_soc_dai *cpu_dai,
 	if ((sai->slots == 2) && (params_channels(params) == 1))
 		cr1 |= SAI_XCR1_MONO;
 
-	ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, cr1_mask, cr1);
+	ret = stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX, cr1_mask, cr1);
 	if (ret < 0) {
 		dev_err(cpu_dai->dev, "Failed to update CR1 register\n");
 		return ret;
@@ -809,7 +859,7 @@ static int stm32_sai_set_slots(struct snd_soc_dai *cpu_dai)
 	struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 	int slotr, slot_sz;
 
-	regmap_read(sai->regmap, STM_SAI_SLOTR_REGX, &slotr);
+	stm32_sai_sub_reg_rd(sai, STM_SAI_SLOTR_REGX, &slotr);
 
 	/*
 	 * If SLOTSZ is set to auto in SLOTR, align slot width on data size
@@ -831,16 +881,16 @@ static int stm32_sai_set_slots(struct snd_soc_dai *cpu_dai)
 		sai->slots = 2;
 
 	/* The number of slots in the audio frame is equal to NBSLOT[3:0] + 1*/
-	regmap_update_bits(sai->regmap, STM_SAI_SLOTR_REGX,
-			   SAI_XSLOTR_NBSLOT_MASK,
-			   SAI_XSLOTR_NBSLOT_SET((sai->slots - 1)));
+	stm32_sai_sub_reg_up(sai, STM_SAI_SLOTR_REGX,
+			     SAI_XSLOTR_NBSLOT_MASK,
+			     SAI_XSLOTR_NBSLOT_SET((sai->slots - 1)));
 
 	/* Set default slots mask if not already set from DT */
 	if (!(slotr & SAI_XSLOTR_SLOTEN_MASK)) {
 		sai->slot_mask = (1 << sai->slots) - 1;
-		regmap_update_bits(sai->regmap,
-				   STM_SAI_SLOTR_REGX, SAI_XSLOTR_SLOTEN_MASK,
-				   SAI_XSLOTR_SLOTEN_SET(sai->slot_mask));
+		stm32_sai_sub_reg_up(sai,
+				     STM_SAI_SLOTR_REGX, SAI_XSLOTR_SLOTEN_MASK,
+				     SAI_XSLOTR_SLOTEN_SET(sai->slot_mask));
 	}
 
 	dev_dbg(cpu_dai->dev, "Slots %d, slot width %d\n",
@@ -870,14 +920,14 @@ static void stm32_sai_set_frame(struct snd_soc_dai *cpu_dai)
 	dev_dbg(cpu_dai->dev, "Frame length %d, frame active %d\n",
 		sai->fs_length, fs_active);
 
-	regmap_update_bits(sai->regmap, STM_SAI_FRCR_REGX, frcr_mask, frcr);
+	stm32_sai_sub_reg_up(sai, STM_SAI_FRCR_REGX, frcr_mask, frcr);
 
 	if ((sai->fmt & SND_SOC_DAIFMT_FORMAT_MASK) == SND_SOC_DAIFMT_LSB) {
 		offset = sai->slot_width - sai->data_size;
 
-		regmap_update_bits(sai->regmap, STM_SAI_SLOTR_REGX,
-				   SAI_XSLOTR_FBOFF_MASK,
-				   SAI_XSLOTR_FBOFF_SET(offset));
+		stm32_sai_sub_reg_up(sai, STM_SAI_SLOTR_REGX,
+				     SAI_XSLOTR_FBOFF_MASK,
+				     SAI_XSLOTR_FBOFF_SET(offset));
 	}
 }
 
@@ -994,9 +1044,9 @@ static int stm32_sai_configure_clock(struct snd_soc_dai *cpu_dai,
 					return -EINVAL;
 				}
 
-				regmap_update_bits(sai->regmap,
-						   STM_SAI_CR1_REGX,
-						   SAI_XCR1_OSR, cr1);
+				stm32_sai_sub_reg_up(sai,
+						     STM_SAI_CR1_REGX,
+						     SAI_XCR1_OSR, cr1);
 
 				div = stm32_sai_get_clk_div(sai, sai_clk_rate,
 							    sai->mclk_rate);
@@ -1058,12 +1108,12 @@ static int stm32_sai_trigger(struct snd_pcm_substream *substream, int cmd,
 	case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
 		dev_dbg(cpu_dai->dev, "Enable DMA and SAI\n");
 
-		regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
-				   SAI_XCR1_DMAEN, SAI_XCR1_DMAEN);
+		stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX,
+				     SAI_XCR1_DMAEN, SAI_XCR1_DMAEN);
 
 		/* Enable SAI */
-		ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
-					 SAI_XCR1_SAIEN, SAI_XCR1_SAIEN);
+		ret = stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX,
+					   SAI_XCR1_SAIEN, SAI_XCR1_SAIEN);
 		if (ret < 0)
 			dev_err(cpu_dai->dev, "Failed to update CR1 register\n");
 		break;
@@ -1072,16 +1122,16 @@ static int stm32_sai_trigger(struct snd_pcm_substream *substream, int cmd,
 	case SNDRV_PCM_TRIGGER_STOP:
 		dev_dbg(cpu_dai->dev, "Disable DMA and SAI\n");
 
-		regmap_update_bits(sai->regmap, STM_SAI_IMR_REGX,
-				   SAI_XIMR_MASK, 0);
+		stm32_sai_sub_reg_up(sai, STM_SAI_IMR_REGX,
+				     SAI_XIMR_MASK, 0);
 
-		regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
-				   SAI_XCR1_SAIEN,
-				   (unsigned int)~SAI_XCR1_SAIEN);
+		stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX,
+				     SAI_XCR1_SAIEN,
+				     (unsigned int)~SAI_XCR1_SAIEN);
 
-		ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX,
-					 SAI_XCR1_DMAEN,
-					 (unsigned int)~SAI_XCR1_DMAEN);
+		ret = stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX,
+					   SAI_XCR1_DMAEN,
+					   (unsigned int)~SAI_XCR1_DMAEN);
 		if (ret < 0)
 			dev_err(cpu_dai->dev, "Failed to update CR1 register\n");
 
@@ -1101,7 +1151,7 @@ static void stm32_sai_shutdown(struct snd_pcm_substream *substream,
 	struct stm32_sai_sub_data *sai = snd_soc_dai_get_drvdata(cpu_dai);
 	unsigned long flags;
 
-	regmap_update_bits(sai->regmap, STM_SAI_IMR_REGX, SAI_XIMR_MASK, 0);
+	stm32_sai_sub_reg_up(sai, STM_SAI_IMR_REGX, SAI_XIMR_MASK, 0);
 
 	clk_disable_unprepare(sai->sai_ck);
 
@@ -1169,7 +1219,7 @@ static int stm32_sai_dai_probe(struct snd_soc_dai *cpu_dai)
 	cr1_mask |= SAI_XCR1_SYNCEN_MASK;
 	cr1 |= SAI_XCR1_SYNCEN_SET(sai->sync);
 
-	return regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, cr1_mask, cr1);
+	return stm32_sai_sub_reg_up(sai, STM_SAI_CR1_REGX, cr1_mask, cr1);
 }
 
 static const struct snd_soc_dai_ops stm32_sai_pcm_dai_ops = {
@@ -1322,8 +1372,13 @@ static int stm32_sai_sub_parse_of(struct platform_device *pdev,
 	if (STM_SAI_HAS_PDM(sai) && STM_SAI_IS_SUB_A(sai))
 		sai->regmap_config = &stm32_sai_sub_regmap_config_h7;
 
-	sai->regmap = devm_regmap_init_mmio_clk(&pdev->dev, "sai_ck",
-						base, sai->regmap_config);
+	/*
+	 * Do not manage peripheral clock through regmap framework as this
+	 * can lead to circular locking issue with sai master clock provider.
+	 * Manage peripheral clock directly in driver instead.
+	 */
+	sai->regmap = devm_regmap_init_mmio(&pdev->dev, base,
+					    sai->regmap_config);
 	if (IS_ERR(sai->regmap)) {
 		dev_err(&pdev->dev, "Failed to initialize MMIO\n");
 		return PTR_ERR(sai->regmap);
@@ -1420,6 +1475,10 @@ static int stm32_sai_sub_parse_of(struct platform_device *pdev,
 		return PTR_ERR(sai->sai_ck);
 	}
 
+	ret = clk_prepare(sai->pdata->pclk);
+	if (ret < 0)
+		return ret;
+
 	if (STM_SAI_IS_F4(sai->pdata))
 		return 0;
 
@@ -1501,22 +1560,48 @@ static int stm32_sai_sub_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static int stm32_sai_sub_remove(struct platform_device *pdev)
+{
+	struct stm32_sai_sub_data *sai = dev_get_drvdata(&pdev->dev);
+
+	clk_unprepare(sai->pdata->pclk);
+
+	return 0;
+}
+
 #ifdef CONFIG_PM_SLEEP
 static int stm32_sai_sub_suspend(struct device *dev)
 {
 	struct stm32_sai_sub_data *sai = dev_get_drvdata(dev);
+	int ret;
+
+	ret = clk_enable(sai->pdata->pclk);
+	if (ret < 0)
+		return ret;
 
 	regcache_cache_only(sai->regmap, true);
 	regcache_mark_dirty(sai->regmap);
+
+	clk_disable(sai->pdata->pclk);
+
 	return 0;
 }
 
 static int stm32_sai_sub_resume(struct device *dev)
 {
 	struct stm32_sai_sub_data *sai = dev_get_drvdata(dev);
+	int ret;
+
+	ret = clk_enable(sai->pdata->pclk);
+	if (ret < 0)
+		return ret;
 
 	regcache_cache_only(sai->regmap, false);
-	return regcache_sync(sai->regmap);
+	ret = regcache_sync(sai->regmap);
+
+	clk_disable(sai->pdata->pclk);
+
+	return ret;
 }
 #endif /* CONFIG_PM_SLEEP */
 
@@ -1531,6 +1616,7 @@ static struct platform_driver stm32_sai_sub_driver = {
 		.pm = &stm32_sai_sub_pm_ops,
 	},
 	.probe = stm32_sai_sub_probe,
+	.remove = stm32_sai_sub_remove,
 };
 
 module_platform_driver(stm32_sai_sub_driver);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

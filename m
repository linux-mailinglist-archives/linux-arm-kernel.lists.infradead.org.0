Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138231593BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:50:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=DMtdtQwkcMwbmmdgxxC5ziW9o0+vEpET06zOjfhdT5E=; b=RQn
	kjFeUDXDuDMyzSbCigB3GMPEtMkgnGb9kUnjWn0U7NtRRCaWYJlhFaeIXvJZbBge3WfEiwYBl+x6u
	iOI3Y4MZLcu/XV+1S+VWTAjOzBL+U8Z5bdegRy5gsvKAf501zA9vRMChus4jRIOIPgscyZhU5t1+I
	Yg/wTGLHh9J0/Icdd7lNXaljBEnMvn0WTrgK12QhvNIEF6tMokw/7H09s6MVw0PN4LdD1mEUCocfJ
	mmw+o+uubAtGGnD76AO11f/57ntGvUhp6bmE6mRCxvxpNSChaMHi7l6i1KljMLBGiccvW76Ez2HRF
	gmF5RGNLj7nF3UJbXDdKmLg2Dqh7noQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1XoD-0005Qf-3l; Tue, 11 Feb 2020 15:50:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Xn7-0003TF-3G
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:49:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14B86139F;
 Tue, 11 Feb 2020 07:49:34 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8F4663F68E;
 Tue, 11 Feb 2020 07:49:33 -0800 (PST)
Date: Tue, 11 Feb 2020 15:49:32 +0000
From: Mark Brown <broonie@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Applied "ASoC: stm32: spdifrx: improve error management on probe
 deferral" to the asoc tree
In-Reply-To: <20200203100814.22944-6-olivier.moysan@st.com>
Message-Id: <applied-20200203100814.22944-6-olivier.moysan@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_074937_512153_7C52E85D 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Etienne Carriere <etienne.carriere@st.com>, alsa-devel@alsa-project.org,
 olivier.moysan@st.com, alexandre.torgue@st.com, tiwai@suse.com,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, mcoquelin.stm32@gmail.com, perex@perex.cz,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: stm32: spdifrx: improve error management on probe deferral

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.7

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

From d49bd5ed24163a1a1c81d40e84295731ddd17b1c Mon Sep 17 00:00:00 2001
From: Olivier Moysan <olivier.moysan@st.com>
Date: Mon, 3 Feb 2020 11:08:13 +0100
Subject: [PATCH] ASoC: stm32: spdifrx: improve error management on probe
 deferral

Do not print an error trace when deferring probe for SPDIFRX driver.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Link: https://lore.kernel.org/r/20200203100814.22944-6-olivier.moysan@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/stm/stm32_spdifrx.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/sound/soc/stm/stm32_spdifrx.c b/sound/soc/stm/stm32_spdifrx.c
index 9f80ddf34443..49766afdae61 100644
--- a/sound/soc/stm/stm32_spdifrx.c
+++ b/sound/soc/stm/stm32_spdifrx.c
@@ -406,7 +406,9 @@ static int stm32_spdifrx_dma_ctrl_register(struct device *dev,
 
 	spdifrx->ctrl_chan = dma_request_chan(dev, "rx-ctrl");
 	if (IS_ERR(spdifrx->ctrl_chan)) {
-		dev_err(dev, "dma_request_slave_channel failed\n");
+		if (PTR_ERR(spdifrx->ctrl_chan) != -EPROBE_DEFER)
+			dev_err(dev, "dma_request_slave_channel error %ld\n",
+				PTR_ERR(spdifrx->ctrl_chan));
 		return PTR_ERR(spdifrx->ctrl_chan);
 	}
 
@@ -929,7 +931,9 @@ static int stm32_spdifrx_parse_of(struct platform_device *pdev,
 
 	spdifrx->kclk = devm_clk_get(&pdev->dev, "kclk");
 	if (IS_ERR(spdifrx->kclk)) {
-		dev_err(&pdev->dev, "Could not get kclk\n");
+		if (PTR_ERR(spdifrx->kclk) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Could not get kclk: %ld\n",
+				PTR_ERR(spdifrx->kclk));
 		return PTR_ERR(spdifrx->kclk);
 	}
 
@@ -967,7 +971,9 @@ static int stm32_spdifrx_probe(struct platform_device *pdev)
 						    spdifrx->base,
 						    spdifrx->regmap_conf);
 	if (IS_ERR(spdifrx->regmap)) {
-		dev_err(&pdev->dev, "Regmap init failed\n");
+		if (PTR_ERR(spdifrx->regmap) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Regmap init error %ld\n",
+				PTR_ERR(spdifrx->regmap));
 		return PTR_ERR(spdifrx->regmap);
 	}
 
@@ -1003,7 +1009,8 @@ static int stm32_spdifrx_probe(struct platform_device *pdev)
 	pcm_config = &stm32_spdifrx_pcm_config;
 	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, pcm_config, 0);
 	if (ret) {
-		dev_err(&pdev->dev, "PCM DMA register returned %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "PCM DMA register error %d\n", ret);
 		goto error;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDED1593BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=n1hHWRdzi0Z7ayhAHT+UwShmBXGM+ugQaituh49UF5Q=; b=VuB
	4KnGCVlkUY400b9ymfpqHevWMzn4iv/CBkKbHItTbF7oi8iTnERbTgI3Yv5EfmF/YsxCrQ82dwzya
	cy/s/18tRStuE1mq2Mxzkm/+v3WehYSVe+8lH4jpyRzlpeI87uPwaRHB1A77SB6gs1z2pkk55vrXx
	lCJlPsj7CBB2fUgji5RGNG1b75tz9XmqF83ik8V9qz5ytWAII2ZdnIbwBd6C1EEjnxrKB2iemXQ3Q
	nvN0yCHX2DBMI9NWadyZMRwPHS6QX3ALH00LUfADXeBursTOzsP0i+ufkiFq1fWB0ozN/t1LWEepO
	3SmH60caydfHlbhMiSar8qOmB4SVj5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Xnz-0005D2-8n; Tue, 11 Feb 2020 15:50:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Xn7-0003T6-5f
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:49:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 695FB1396;
 Tue, 11 Feb 2020 07:49:36 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E23393F68E;
 Tue, 11 Feb 2020 07:49:35 -0800 (PST)
Date: Tue, 11 Feb 2020 15:49:34 +0000
From: Mark Brown <broonie@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Applied "ASoC: stm32: sai: improve error management on probe
 deferral" to the asoc tree
In-Reply-To: <20200203100814.22944-5-olivier.moysan@st.com>
Message-Id: <applied-20200203100814.22944-5-olivier.moysan@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_074937_524010_9A30EA06 
X-CRM114-Status: GOOD (  14.58  )
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

   ASoC: stm32: sai: improve error management on probe deferral

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

From 5183e85423070d088aaf1ed07ab260e03d5a4e20 Mon Sep 17 00:00:00 2001
From: Olivier Moysan <olivier.moysan@st.com>
Date: Mon, 3 Feb 2020 11:08:12 +0100
Subject: [PATCH] ASoC: stm32: sai: improve error management on probe deferral

Do not print an error trace when deferring probe for SAI driver.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Link: https://lore.kernel.org/r/20200203100814.22944-5-olivier.moysan@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/stm/stm32_sai.c     | 12 +++++++++---
 sound/soc/stm/stm32_sai_sub.c | 11 ++++++++---
 2 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/sound/soc/stm/stm32_sai.c b/sound/soc/stm/stm32_sai.c
index b824ba6cb028..058757c721f0 100644
--- a/sound/soc/stm/stm32_sai.c
+++ b/sound/soc/stm/stm32_sai.c
@@ -174,20 +174,26 @@ static int stm32_sai_probe(struct platform_device *pdev)
 	if (!STM_SAI_IS_F4(sai)) {
 		sai->pclk = devm_clk_get(&pdev->dev, "pclk");
 		if (IS_ERR(sai->pclk)) {
-			dev_err(&pdev->dev, "missing bus clock pclk\n");
+			if (PTR_ERR(sai->pclk) != -EPROBE_DEFER)
+				dev_err(&pdev->dev, "missing bus clock pclk: %ld\n",
+					PTR_ERR(sai->pclk));
 			return PTR_ERR(sai->pclk);
 		}
 	}
 
 	sai->clk_x8k = devm_clk_get(&pdev->dev, "x8k");
 	if (IS_ERR(sai->clk_x8k)) {
-		dev_err(&pdev->dev, "missing x8k parent clock\n");
+		if (PTR_ERR(sai->clk_x8k) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "missing x8k parent clock: %ld\n",
+				PTR_ERR(sai->clk_x8k));
 		return PTR_ERR(sai->clk_x8k);
 	}
 
 	sai->clk_x11k = devm_clk_get(&pdev->dev, "x11k");
 	if (IS_ERR(sai->clk_x11k)) {
-		dev_err(&pdev->dev, "missing x11k parent clock\n");
+		if (PTR_ERR(sai->clk_x11k) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "missing x11k parent clock: %ld\n",
+				PTR_ERR(sai->clk_x11k));
 		return PTR_ERR(sai->clk_x11k);
 	}
 
diff --git a/sound/soc/stm/stm32_sai_sub.c b/sound/soc/stm/stm32_sai_sub.c
index 30bcd5d3a32a..0bbf9ed5e48b 100644
--- a/sound/soc/stm/stm32_sai_sub.c
+++ b/sound/soc/stm/stm32_sai_sub.c
@@ -1380,7 +1380,9 @@ static int stm32_sai_sub_parse_of(struct platform_device *pdev,
 	sai->regmap = devm_regmap_init_mmio(&pdev->dev, base,
 					    sai->regmap_config);
 	if (IS_ERR(sai->regmap)) {
-		dev_err(&pdev->dev, "Failed to initialize MMIO\n");
+		if (PTR_ERR(sai->regmap) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Regmap init error %ld\n",
+				PTR_ERR(sai->regmap));
 		return PTR_ERR(sai->regmap);
 	}
 
@@ -1471,7 +1473,9 @@ static int stm32_sai_sub_parse_of(struct platform_device *pdev,
 	of_node_put(args.np);
 	sai->sai_ck = devm_clk_get(&pdev->dev, "sai_ck");
 	if (IS_ERR(sai->sai_ck)) {
-		dev_err(&pdev->dev, "Missing kernel clock sai_ck\n");
+		if (PTR_ERR(sai->sai_ck) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Missing kernel clock sai_ck: %ld\n",
+				PTR_ERR(sai->sai_ck));
 		return PTR_ERR(sai->sai_ck);
 	}
 
@@ -1553,7 +1557,8 @@ static int stm32_sai_sub_probe(struct platform_device *pdev)
 
 	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, conf, 0);
 	if (ret) {
-		dev_err(&pdev->dev, "Could not register pcm dma\n");
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "PCM DMA register error %d\n", ret);
 		return ret;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

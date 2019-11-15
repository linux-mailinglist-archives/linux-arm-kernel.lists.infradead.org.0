Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5213FDDCB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:27:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=zZi9GkO2Ii+wjjlLPu0mQe7NDikQyc/W3zDDsA/TeEo=; b=itn
	g/oF6X0wgf5TvMu0s9gQVpu5IVUaAUOfV4lUhrS5OuUsCqEF1RUEtXqywnm0gCVZkdJByx5nD4Vu2
	mk6N2g3yesJV4NA5BErRgHx5OYacdY+CoM30gH2KfjVgOh/P+1OLWP8e+Vxut1VSzHpSyyw7VfpSd
	nCXSJJ38KiKM9Psaoh6iNDcr6puKBokfYje44GG8yTdGNlGkM9LiWalvj7pA1SdZoL9G/u7XGCeFz
	cFHifiyeW5/6+amtsDmWnBf+5Xaj08cWVa7uEQLR9Pbuk+lNvSDb3JWEXj73wParKXG3hhytsMrm/
	YSzSVhKXEUiHPuGS8h8AelOjkenugmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVahR-0004TU-HL; Fri, 15 Nov 2019 12:27:41 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVafA-0002YJ-8R
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:25:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=EO3rudpnfcccYyMUNmyp4oGPCnW+dbhX3sMWKHNEwxo=; b=a1rlZPt3qEzb
 Lo8Yf1dY4Yz8qk3abOygFP2yrG79Z/KY2T69+QaJ1uwtIHuD4dQIGK8W1Ix0ZsHDOKvceMQZD+ZIq
 7sV4veiF7GhHf9Y4CmDC546zXoM4ZcEnCA8vuqUuMLC7br1B84o5xj4vNz7PTdw0gWm/9sglVsLVA
 lHsR8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iVaf6-0000M8-1A; Fri, 15 Nov 2019 12:25:16 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 78769274162A; Fri, 15 Nov 2019 12:25:15 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Applied "spi: pl022: Use dma_request_chan() directly for channel
 request" to the spi tree
In-Reply-To: <20191113094256.1108-6-peter.ujfalusi@ti.com>
X-Patchwork-Hint: ignore
Message-Id: <20191115122515.78769274162A@ypsilon.sirena.org.uk>
Date: Fri, 15 Nov 2019 12:25:15 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_042520_358294_3F362422 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: radu_nicolae.pirea@upb.ro, alexandre.belloni@bootlin.com,
 s.hauer@pengutronix.de, linux-arm-msm@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, jonathanh@nvidia.com,
 vkoul@kernel.org, agross@kernel.org, ldewangan@nvidia.com, kgene@kernel.org,
 andi@etezian.org, linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 bjorn.andersson@linaro.org, shawnguo@kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: pl022: Use dma_request_chan() directly for channel request

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.5

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

From c1008957ff1aee0ac92c28c55947173fb68cd451 Mon Sep 17 00:00:00 2001
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Date: Wed, 13 Nov 2019 11:42:52 +0200
Subject: [PATCH] spi: pl022: Use dma_request_chan() directly for channel
 request

dma_request_slave_channel_reason() is:
#define dma_request_slave_channel_reason(dev, name) \
	dma_request_chan(dev, name)

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
Link: https://lore.kernel.org/r/20191113094256.1108-6-peter.ujfalusi@ti.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-pl022.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-pl022.c b/drivers/spi/spi-pl022.c
index 3024c30e7f2e..66028ebbc336 100644
--- a/drivers/spi/spi-pl022.c
+++ b/drivers/spi/spi-pl022.c
@@ -1158,7 +1158,7 @@ static int pl022_dma_autoprobe(struct pl022 *pl022)
 	int err;
 
 	/* automatically configure DMA channels from platform, normally using DT */
-	chan = dma_request_slave_channel_reason(dev, "rx");
+	chan = dma_request_chan(dev, "rx");
 	if (IS_ERR(chan)) {
 		err = PTR_ERR(chan);
 		goto err_no_rxchan;
@@ -1166,7 +1166,7 @@ static int pl022_dma_autoprobe(struct pl022 *pl022)
 
 	pl022->dma_rx_channel = chan;
 
-	chan = dma_request_slave_channel_reason(dev, "tx");
+	chan = dma_request_chan(dev, "tx");
 	if (IS_ERR(chan)) {
 		err = PTR_ERR(chan);
 		goto err_no_txchan;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D80A3FDDCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 13:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=3YUbxQO4xTB2KdlmguDZzGJdw2MvRkKPZa67+TCULsU=; b=iG8
	u0FCKF7z3Kr20OMbs5SUdfaGk+gEM+geVgE5eb6znCCmr3nptxdphBFCc54AzD/Fjz6oUWtHexZoc
	Qk3Pfrj9BIGyCk74cofFgTyJoxNoDsqZx/3ux+FkLqAj2zPkyIKd5vSdqkRMwPF1/Zg1iKwuFJzlj
	7OvauhgWQL71neySRb5kh0HT7mtNDkqocrYaHJxyBV5gIeV2mzQZZVQcKZmIQPDR0vrM3SFsmv3sM
	cydS4Jd/vGxjo+QbOK7L4eLxzt9lg5dG+zl6I2iQ/Icx4Mdg2IvrWnOc62lWvVjGNUFdEjFyHO5vP
	4W2eHEguwf9c1R4IyDfmAC+0zw1xkOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVaho-0004xK-00; Fri, 15 Nov 2019 12:28:04 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVafA-0002YE-8F
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 12:25:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=QN4aYBjvPkYWcAEdyVdCD60J+0aOlMsoc1odzZylDvY=; b=HlDYky63BVWE
 xiYEScODyHPKkmDKxC9aQ84WkNBRAde9qVkfxAYoRwTD5rGqehP9jdghXR85TOTcbH2RlotY95xj4
 xLRqZ4guJty9FOhO0IZRRRjd6IDIFIDmoJ9nUXDqrlpqlPwkSHnbu1biwEQF3sgMgQx96Du8U2Zc8
 udpqE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iVaf5-0000Lw-FI; Fri, 15 Nov 2019 12:25:15 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id E3EF42741609; Fri, 15 Nov 2019 12:25:14 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Applied "spi: s3c64xx: Use dma_request_chan() directly for channel
 request" to the spi tree
In-Reply-To: <20191113094256.1108-8-peter.ujfalusi@ti.com>
X-Patchwork-Hint: ignore
Message-Id: <20191115122514.E3EF42741609@ypsilon.sirena.org.uk>
Date: Fri, 15 Nov 2019 12:25:14 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_042520_330690_A38A48FE 
X-CRM114-Status: GOOD (  13.05  )
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
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 jonathanh@nvidia.com, vkoul@kernel.org, agross@kernel.org,
 ldewangan@nvidia.com, kgene@kernel.org, Andi Shyti <andi@etezian.org>,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com,
 bjorn.andersson@linaro.org, shawnguo@kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: s3c64xx: Use dma_request_chan() directly for channel request

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

From df1b0141788527c032a9851c0589a1712d7e46b8 Mon Sep 17 00:00:00 2001
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Date: Wed, 13 Nov 2019 11:42:54 +0200
Subject: [PATCH] spi: s3c64xx: Use dma_request_chan() directly for channel
 request

dma_request_slave_channel_reason() is:
#define dma_request_slave_channel_reason(dev, name) \
	dma_request_chan(dev, name)

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Andi Shyti <andi@etezian.org>
Link: https://lore.kernel.org/r/20191113094256.1108-8-peter.ujfalusi@ti.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-s3c64xx.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
index 7b7151ec14c8..cf67ea60dc0e 100644
--- a/drivers/spi/spi-s3c64xx.c
+++ b/drivers/spi/spi-s3c64xx.c
@@ -1154,15 +1154,13 @@ static int s3c64xx_spi_probe(struct platform_device *pdev)
 
 	if (!is_polling(sdd)) {
 		/* Acquire DMA channels */
-		sdd->rx_dma.ch = dma_request_slave_channel_reason(&pdev->dev,
-								  "rx");
+		sdd->rx_dma.ch = dma_request_chan(&pdev->dev, "rx");
 		if (IS_ERR(sdd->rx_dma.ch)) {
 			dev_err(&pdev->dev, "Failed to get RX DMA channel\n");
 			ret = PTR_ERR(sdd->rx_dma.ch);
 			goto err_disable_io_clk;
 		}
-		sdd->tx_dma.ch = dma_request_slave_channel_reason(&pdev->dev,
-								  "tx");
+		sdd->tx_dma.ch = dma_request_chan(&pdev->dev, "tx");
 		if (IS_ERR(sdd->tx_dma.ch)) {
 			dev_err(&pdev->dev, "Failed to get TX DMA channel\n");
 			ret = PTR_ERR(sdd->tx_dma.ch);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

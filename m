Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA56F52CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=J0OBUtIlsELn0pp+06NIiKEll4LDypPzq213aSDX/G8=; b=fH1
	UB8Z1lMDdonh02K2HElNL00HtYT+tkt7ZSjXguhMlWxF60Wbh6aEVyf1TxpfdSgpgSPCwYyue/Fct
	H8Vbj+ivULFxmgzxzkhIL7j6yirp2soF6Osd7lbjAYFq9ZSAIbAjHxYYZzfOk/His/xq9D3y4+q1p
	lJiISYXXVoBU/0AR5KJRZGT5qHkS9yZVSN6wU9xHQiuMXKdqRyMm4P8yA3+omljXRg7uEJQ34UFi6
	gTY+/GLKrzAIDe2MrllPNHjiXGDUFbYYrefuEgMayPAycuubGvkPAvXpMPB3gcOD/cxm3Tq1/TXbn
	UQJQqCN6WsUv4Gbsoxisy3PP4H/02FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8LF-0001Md-05; Fri, 08 Nov 2019 17:46:37 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8KQ-0000ne-CV
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:45:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=DMUVFTdCbC7Gxi5sCnOhp5LoH9fF6ZNavOGSLsOo8EM=; b=MpCdeyALQ1b8
 l1ZcztoM2Sh6pgjU25g3x65GQiOK7DXRBDAJE6pRhpukakFQa62cdk88IKAiOi580CCJwZqi2sxxm
 Az+lY1mgVs/u64EMr2FrFElRGnTnWbLtXIrS6fzLHSkymN3nqr5hE1dFG3ejgTvAbc5FWEvntFH4l
 u0zi8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT8KN-0007qI-Rn; Fri, 08 Nov 2019 17:45:43 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 40D712741702; Fri,  8 Nov 2019 17:45:43 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Applied "spi: zynq-qspi: Do the actual hardware initialization later
 in the probe" to the spi tree
In-Reply-To: <20191108140744.1734-7-miquel.raynal@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20191108174543.40D712741702@ypsilon.sirena.org.uk>
Date: Fri,  8 Nov 2019 17:45:43 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_094546_554459_16D636C9 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: zynq-qspi: Do the actual hardware initialization later in the probe

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

From 8f16292d8b492ca6b0d58ac0769de1c1a7bbb544 Mon Sep 17 00:00:00 2001
From: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Fri, 8 Nov 2019 15:07:43 +0100
Subject: [PATCH] spi: zynq-qspi: Do the actual hardware initialization later
 in the probe

Supporting more than one CS will need some tweaking of the linear
configuration register which is (rightfully) initialized in the
hardware initialization helper. The extra initialization needs the
knowledge of the actual number of CS, which is retrieved by reading
the value of the num-cs DT property.

As the initialization helper is called pretty early and might be
called much later in the probe without side effect, let's delay it a
bit so that the number of CS will be available when running this
helper. This way, adding support for multiple CS lines in a next patch
will be eased.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Link: https://lore.kernel.org/r/20191108140744.1734-7-miquel.raynal@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-zynq-qspi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 80e51c894eaa..e76f9c9738f0 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -657,9 +657,6 @@ static int zynq_qspi_probe(struct platform_device *pdev)
 		goto clk_dis_pclk;
 	}
 
-	/* QSPI controller initializations */
-	zynq_qspi_init_hw(xqspi);
-
 	xqspi->irq = platform_get_irq(pdev, 0);
 	if (xqspi->irq <= 0) {
 		ret = -ENXIO;
@@ -690,6 +687,10 @@ static int zynq_qspi_probe(struct platform_device *pdev)
 	ctlr->setup = zynq_qspi_setup_op;
 	ctlr->max_speed_hz = clk_get_rate(xqspi->refclk) / 2;
 	ctlr->dev.of_node = np;
+
+	/* QSPI controller initializations */
+	zynq_qspi_init_hw(xqspi);
+
 	ret = devm_spi_register_controller(&pdev->dev, ctlr);
 	if (ret) {
 		dev_err(&pdev->dev, "spi_register_master failed\n");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

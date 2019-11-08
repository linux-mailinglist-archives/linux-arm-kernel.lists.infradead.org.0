Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601EDF52D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:47:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=/2QdRJixen24NZq5kVIAKYH7+A4tY9+uslUU/SApS7w=; b=IOa
	WAY4e3CQzA9XCODtxMcUceTK7AlbrDojemokwflzzRfic6opIrjxowcCQdSxGyc0+hFHp0216osUm
	gMXMu0ljZn822KZqQVHpYdKjxsWvIEKbVUG0nCOyRypa2cgr8liL9WvncpLeeMhwMZfPTEySQtkFR
	9qmH0sznq+Nf1c48odMadCJU/p7zAa+4RMGUsGnB6xUhBWwU+zxrjXYG8zBG+ydPwEs1h91HxL/+z
	nlaT8CNABricjD1gYIQ/Vjkzxu3W8mxgB7Mz2JEZxoBSim2hWiZddFapJ0UuWrFqZCtRdfbiMAVXt
	ISJduhHrYdH6dDNRxalt+NNnptkgvFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8Ll-0001y6-0z; Fri, 08 Nov 2019 17:47:09 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8KQ-0000nq-UD
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:45:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=b3C7gijS/8kKmdHw0Z9BScpM80WNvZGBHgxJyi74e4w=; b=kWYYL+yr8lt5
 ojW52H7Al0bOFfMD9+FpIl4i0Rm2RVSZwQIDl7sOEqpHv6sA269A1ppVp0AroJD6Kl8kgLB/Bwsrj
 NSRCBySkXlEMUYFBCLkhS5LphiA4YLkbosTjxz79DAUxpct8yEK2IU/HZtDZoGD6WXJn0oow+Pl1N
 f68dI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT8KO-0007qU-NI; Fri, 08 Nov 2019 17:45:44 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 3BA1A2741460; Fri,  8 Nov 2019 17:45:44 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Applied "spi: zynq-qspi: Anything else than CS0 is not supported yet"
 to the spi tree
In-Reply-To: <20191108140744.1734-2-miquel.raynal@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20191108174544.3BA1A2741460@ypsilon.sirena.org.uk>
Date: Fri,  8 Nov 2019 17:45:44 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_094546_972113_71D62718 
X-CRM114-Status: GOOD (  16.54  )
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

   spi: zynq-qspi: Anything else than CS0 is not supported yet

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

From 087622d09472f96f1f5d6ced36ca75c92e86af21 Mon Sep 17 00:00:00 2001
From: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Fri, 8 Nov 2019 15:07:38 +0100
Subject: [PATCH] spi: zynq-qspi: Anything else than CS0 is not supported yet

Unlike what the driver is currently advertizing, CS0 only can be used,
CS1 is not supported at all. Prevent people to use CS1.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Link: https://lore.kernel.org/r/20191108140744.1734-2-miquel.raynal@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-zynq-qspi.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index b1c56e9d7c94..9f53ea08adf7 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -680,10 +680,14 @@ static int zynq_qspi_probe(struct platform_device *pdev)
 
 	ret = of_property_read_u32(np, "num-cs",
 				   &num_cs);
-	if (ret < 0)
+	if (ret < 0) {
 		ctlr->num_chipselect = ZYNQ_QSPI_DEFAULT_NUM_CS;
-	else
+	} else if (num_cs > ZYNQ_QSPI_DEFAULT_NUM_CS) {
+		dev_err(&pdev->dev, "anything but CS0 is not yet supported\n");
+		goto remove_master;
+	} else {
 		ctlr->num_chipselect = num_cs;
+	}
 
 	ctlr->mode_bits =  SPI_RX_DUAL | SPI_RX_QUAD |
 			    SPI_TX_DUAL | SPI_TX_QUAD;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

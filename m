Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73488E484F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=JRlB9UE2NszESPkOvrGBcFqdlSjEdZmUA3PlqOat49U=; b=faQ
	YHm9vVuOWLFc0IBwTKswSqgWp9nPTOHbVFI4byZTj9/67AkGB8h5pBej+eGTb5GqVzWHXJlyxarXJ
	KX/CNWP7Wa0oY+KxCpBdBcD7LfvZapRA/roCF1p8WAAWdQ3LofZWeGwlI+Q0+u17GmEgIPuwTt2gR
	cdiQC33PSnGjdKfPVpAiL6uGQn52F4rUvThyRFraQ1XMoDcRgm9H8g8Rl4EBpLwUHEhberFHCja/q
	0pe040v6CJiQ4o0XrDyZpNIQE7RnmGL5k1xsk2fqm5zm/oJp3AgQ2nrRDUc2datukneLquNdyYaxc
	DZNj/f9SDtb4gx89FLOIf6oXgVcdTeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwaj-0005ox-Hm; Fri, 25 Oct 2019 10:13:09 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwZy-00059e-0O
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Yy1N99wP67dEUw7vaVycqULwr8xkNWW2mZ04PDc3zpQ=; b=gkXX+Sr/Wpc7
 w8gZO9hvIQI4ZU+6ZVx9DpyUm+/4YVOcxgvlzR5UGTk6mS9Ne+KCiTJX1peajDn17q4JyuHh4kv0T
 ohZqZacTxTC314Ihm0rC9HKQNg0LD9LV3AHF+o2Kbr5UwAIJb6Z7GV46G7sqQy8YeA4SKidQc/c/H
 wG5Ek=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNwZv-0006fF-6m; Fri, 25 Oct 2019 10:12:19 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A913F2743267; Fri, 25 Oct 2019 11:12:18 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Applied "spi: Fix NULL pointer when setting SPI_CS_HIGH for GPIO CS"
 to the spi tree
In-Reply-To: <20191024141309.22434-1-gregory.clement@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20191025101218.A913F2743267@ypsilon.sirena.org.uk>
Date: Fri, 25 Oct 2019 11:12:18 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_031222_092457_7A554E97 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "kernelci.org bot" <bot@kernelci.org>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-spi@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: Fix NULL pointer when setting SPI_CS_HIGH for GPIO CS

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.4

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

From 15f794bd977a0135328fbdd8a83cc64c1d267b39 Mon Sep 17 00:00:00 2001
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Thu, 24 Oct 2019 16:13:09 +0200
Subject: [PATCH] spi: Fix NULL pointer when setting SPI_CS_HIGH for GPIO CS

Even if the flag use_gpio_descriptors is set, it is possible that
cs_gpiods was not allocated, which leads to a kernel crash.

Reported-by: "kernelci.org bot" <bot@kernelci.org>
Fixes: 3e5ec1db8bfe ("spi: Fix SPI_CS_HIGH setting when using native and GPIO CS")
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Link: https://lore.kernel.org/r/20191024141309.22434-1-gregory.clement@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: <stable@vger.kernel.org>
---
 drivers/spi/spi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 38699eaebcea..26b91ee0855d 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1780,7 +1780,8 @@ static int of_spi_parse_dt(struct spi_controller *ctlr, struct spi_device *spi,
 	 * handled in the gpiolib, so all gpio chip selects are "active high"
 	 * in the logical sense, the gpiolib will invert the line if need be.
 	 */
-	if ((ctlr->use_gpio_descriptors) && ctlr->cs_gpiods[spi->chip_select])
+	if ((ctlr->use_gpio_descriptors) && ctlr->cs_gpiods &&
+	    ctlr->cs_gpiods[spi->chip_select])
 		spi->mode |= SPI_CS_HIGH;
 
 	/* Device speed */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

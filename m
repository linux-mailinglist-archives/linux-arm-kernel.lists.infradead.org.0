Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D001E174AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 11:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Bj4k/1Ttx22pUsjGPNhOvwHFJ1VOQ5Zb5cfYnk+WlyE=; b=eiv
	Th71CPUBTJ8FC6o8p3yTd8bzfkgNQF5eIi0AtWmhmhSwDNsm7oUdoTTX34iCDUBuBQXjl3t9M/nYT
	mzPBSxFtuzBXQcX3m4nHTVt4x2dk07QMfrib7Q8RpIgnc2wNTKyXPj4BYvt84Iey7TmHqCHqbFJZH
	rmf5EdpyUuvIqbLRHW6PJtB5iQSWfQnmojOa9UlQDprJ8vhef8mMcQBZPPM6c3J3iDWeMI+VS/Xvt
	5/dnDYY5EQB/pmIcA++sNCc3hL9oCC8ZzGK5wejDaovG8uumvACHfxEgS/EH9iIPwESNVAUCJ0huU
	6N1KXdsA2ERTTBY0BPo3TTdOfghWALA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIa8-0000IK-8n; Wed, 08 May 2019 09:09:44 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIZd-0008GF-95; Wed, 08 May 2019 09:09:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=f24yIUqKY62IUeKCB9wagap3Ak2+vXM3hqhMbChgSU4=; b=SG64waa3mliC
 f9LkGEKXMhvjLx9PwgFbIeoIFO90JDC0Hc0nypkmHCg6dI4hkIKbCq2tEuYVesAKzMy1cye0jhfs9
 pQG7JO3CI6xkiY+BRbmMwh2up+cr0/MfKb1nSpcbyzmchoxYfoJmPGbUhI8H3K2Tx5ah1T4bILDL2
 lPWV0=;
Received: from [61.199.190.11] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hOIZU-0007gI-Cp; Wed, 08 May 2019 09:09:09 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 3E3B3440036; Wed,  8 May 2019 10:08:55 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Martin Sperl <kernel@martin.sperl.org>
Subject: Applied "spi: bcm2835: added comment about different bus behaviour of
 DMA mode" to the spi tree
In-Reply-To: <20190423201513.8073-4-kernel@martin.sperl.org>
X-Patchwork-Hint: ignore
Message-Id: <20190508090855.3E3B3440036@finisterre.sirena.org.uk>
Date: Wed,  8 May 2019 10:08:55 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_020913_458549_92C7E4E5 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-spi@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: bcm2835: added comment about different bus behaviour of DMA mode

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

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

From c41d62b06cb92289ab5db9d37a0f27fe6271fa34 Mon Sep 17 00:00:00 2001
From: Martin Sperl <kernel@martin.sperl.org>
Date: Tue, 23 Apr 2019 20:15:10 +0000
Subject: [PATCH] spi: bcm2835: added comment about different bus behaviour of
 DMA mode

The DMA mode behaves slightly different than polling or interrupt driven
mode, so just document the fact

Signed-off-by: Martin Sperl <kernel@martin.sperl.org>

Changelog:
  V1 -> V2: applied feedback by Stefan Wahren
            new in V2
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-bcm2835.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index b7bb07c9507d..0d8c97502f14 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -800,7 +800,10 @@ static int bcm2835_spi_transfer_one(struct spi_master *master,
 	if (tfr->len < spi_used_hz / HZ_PER_BYTE)
 		return bcm2835_spi_transfer_one_poll(master, spi, tfr, cs);
 
-	/* run in dma mode if conditions are right */
+	/* run in dma mode if conditions are right
+	 * Note that unlike poll or interrupt mode DMA mode does not have
+	 * this 1 idle clock cycle pattern but runs the spi clock without gaps
+	 */
 	if (master->can_dma && bcm2835_spi_can_dma(master, spi, tfr))
 		return bcm2835_spi_transfer_one_dma(master, spi, tfr, cs);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

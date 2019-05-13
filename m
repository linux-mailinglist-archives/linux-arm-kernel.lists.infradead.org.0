Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A9D1B5FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 14:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=hjAqi+epTxtHG+GsQcEyK2pqMYrCtqwQ6JoLiETdyM4=; b=ID3
	x11Xt3nZ3dRVRto37UlQreHk8ojX9rErF0wNeMSQNut/VJ1gJPlMtxC2CNTmF2o0aoyrZHR2iyIJW
	3o0/juWKMy0Bm5SwStwM/KwPuIs2mXh3cp4OIKVE4DlAbPATZ3qOPcrbH0LiCqfnpslLfNDT/AGtx
	iCCIwzT2c9fwzEyZtNdc1x5SVBrf8hKJdk0UeqwEVomZYffjtLgvm1hPmnQPnUNMd8kNH3K5BGkxD
	2rh0S2f2+NBfV/p3dtslXchISA9U9d1O3qQdoQNwjxlZe8jXshohFBdgj5UfETBvfPWE0Z13AbN2x
	kiz6FVcxr68q9Zh9jXBqc4MZcxglWww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQA7i-0007m6-Ek; Mon, 13 May 2019 12:32:06 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQA7a-0007l2-Nc; Mon, 13 May 2019 12:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=DyTZZDy5htEJd2c/YmV8wjqlvgY0f2BXhVkZBBNvqiE=; b=IV919rFLx6om
 DyIVwo56mxJ6+h6MnNq6mGysv0T4liq5xv+7APMr00Zo7QjeuiX8ECkHnjImlnqjUtpx8B2f7FCZk
 IwteVlmk2WbDvGa3N787pcjfzjPZOeTPDNYnLDE6dx/9zMnituqhl9af1OpalungI3u986EibQnVh
 cu78U=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hQA7T-0006aR-QN; Mon, 13 May 2019 12:31:51 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 6CC771129232; Mon, 13 May 2019 13:31:51 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Applied "spi: bcm2835: only split transfers that exceed DLEN if DMA
 available" to the spi tree
In-Reply-To: <20190509144000.681-1-nsaenzjulienne@suse.de>
X-Patchwork-Hint: ignore
Message-Id: <20190513123151.6CC771129232@debutante.sirena.org.uk>
Date: Mon, 13 May 2019 13:31:51 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_053158_914130_97B0CABE 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: bcm2835: only split transfers that exceed DLEN if DMA available

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

From 3393f7d924510cfdb2ff9594eac2590d5de16d92 Mon Sep 17 00:00:00 2001
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date: Thu, 9 May 2019 16:39:59 +0200
Subject: [PATCH] spi: bcm2835: only split transfers that exceed DLEN if DMA
 available

There is no use for this when performing non DMA operations. So we
bypass the split.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-bcm2835.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 3a9b2187787a..f87a023a445a 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -895,15 +895,17 @@ static int bcm2835_spi_prepare_message(struct spi_master *master,
 	u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);
 	int ret;
 
-	/*
-	 * DMA transfers are limited to 16 bit (0 to 65535 bytes) by the SPI HW
-	 * due to DLEN. Split up transfers (32-bit FIFO aligned) if the limit is
-	 * exceeded.
-	 */
-	ret = spi_split_transfers_maxsize(master, msg, 65532,
-					  GFP_KERNEL | GFP_DMA);
-	if (ret)
-		return ret;
+	if (master->can_dma) {
+		/*
+		 * DMA transfers are limited to 16 bit (0 to 65535 bytes) by
+		 * the SPI HW due to DLEN. Split up transfers (32-bit FIFO
+		 * aligned) if the limit is exceeded.
+		 */
+		ret = spi_split_transfers_maxsize(master, msg, 65532,
+						  GFP_KERNEL | GFP_DMA);
+		if (ret)
+			return ret;
+	}
 
 	cs &= ~(BCM2835_SPI_CS_CPOL | BCM2835_SPI_CS_CPHA);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

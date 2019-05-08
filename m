Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843E81760F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=VXFIaz8r9aGcHa+x1Q1ivHXLTBtGUqJRA28IMO1dijI=; b=KxR
	PKTNRw1qLOfNsUnLiRFp0GFIKOMVgESGLjoHrX6sMESVrFyBAZckdTIoOaudmLG6aWhHeD1ZwX4vB
	EIbWr4rpr0tWZ4R64VUrySTO7har3/IsMlw/ZYg1j+z3htytnD3uZe+/i6ijDc0IFOinsPHHbdOe/
	dMpYtyNPk2+tbmtFK9wK2U+EzyYluaJ9N3GNYR/qg1lsnyll0Duqj2J4nDwOOB/5rPseAJU1RgDtH
	XA+n7vcWBEIxDWaY3giZ/6TWOCrx78Bi6t4Lc76EPrgeSSfa9yVKuDrZPMirpNOat1vtK7KBifdyG
	QH/WPPVBYGQHf7asQKPNDbbjS+nIHgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJu2-0007pV-Ob; Wed, 08 May 2019 10:34:22 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJtw-0007p7-1H; Wed, 08 May 2019 10:34:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=5XX6yQwWLlHH3i6hXnK8Nh0JB85+4JdaLeEd/oN5bak=; b=Ryv6B6KJvKip
 Yr6+OPtL0vJu1hWewaMYdus0SKmvm9gLodp3sqYolTMw+a28cOU22u1q5wCkHDIpeZCfwqpP/asaI
 42Ii1ED1Xe10k482gZn4rYmBeeagDH2LPGd3hL4ay1WvQwfnWlH/76mcqs+u0AUAhVvBFCy1bWEaC
 AbVfE=;
Received: from [61.199.190.11] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hOJto-0007t9-RK; Wed, 08 May 2019 10:34:09 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 5C7EB440010; Wed,  8 May 2019 11:33:58 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Emil Renner Berthing <kernel@esmil.dk>
Subject: Applied "spi: rockchip: turn down tx dma bursts" to the spi tree
In-Reply-To: <20190412105320.2924-1-kernel@esmil.dk>
X-Patchwork-Hint: ignore
Message-Id: <20190508103358.5C7EB440010@finisterre.sirena.org.uk>
Date: Wed,  8 May 2019 11:33:58 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_033416_222822_50E27EAA 
X-CRM114-Status: GOOD (  16.10  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Vicente Bergas <vicencb@gmail.com>, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: rockchip: turn down tx dma bursts

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git 

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

From 47300728fb213486a830565d2af49da967c9d16a Mon Sep 17 00:00:00 2001
From: Emil Renner Berthing <kernel@esmil.dk>
Date: Fri, 12 Apr 2019 12:53:20 +0200
Subject: [PATCH] spi: rockchip: turn down tx dma bursts

This fixes tx and bi-directional dma transfers on rk3399-gru-kevin.

It seems the SPI fifo must have room for 2 bursts when the dma_tx_req
signal is generated or it might skip some words. This in turn makes
the rx dma channel never complete for bi-directional transfers.

Fix it by setting tx burst length to fifo_len / 4 and the dma
watermark to fifo_len / 2.

However the rk3399 TRM says (sic):
"DMAC support incrementing-address burst and fixed-address burst. But in
the case of access SPI and UART at byte or halfword size, DMAC only
support fixed-address burst and the address must be aligned to word."

So this relies on fifo_len being a multiple of 16 such that the
burst length (= fifo_len / 4) is a multiple of 4 and the addresses
will be word-aligned.

Fixes: dcfc861d24ec ("spi: rockchip: adjust dma watermark and burstlen")
Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 3912526ead66..19f6a76f1c07 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -425,7 +425,7 @@ static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
 			.direction = DMA_MEM_TO_DEV,
 			.dst_addr = rs->dma_addr_tx,
 			.dst_addr_width = rs->n_bytes,
-			.dst_maxburst = rs->fifo_len / 2,
+			.dst_maxburst = rs->fifo_len / 4,
 		};
 
 		dmaengine_slave_config(master->dma_tx, &txconf);
@@ -526,7 +526,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
 	else
 		writel_relaxed(rs->fifo_len / 2 - 1, rs->regs + ROCKCHIP_SPI_RXFTLR);
 
-	writel_relaxed(rs->fifo_len / 2 - 1, rs->regs + ROCKCHIP_SPI_DMATDLR);
+	writel_relaxed(rs->fifo_len / 2, rs->regs + ROCKCHIP_SPI_DMATDLR);
 	writel_relaxed(0, rs->regs + ROCKCHIP_SPI_DMARDLR);
 	writel_relaxed(dmacr, rs->regs + ROCKCHIP_SPI_DMACR);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3C15D020
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=o7bAHtlCn/TGhcBh6RElFEV3Cu9Z1c6ZZIa6167xq9w=; b=sg1
	liuSuo7oP94Ao04h4bGwrylk+BD1SFotdTvLeZ5LDsdvRpNRHk3erehNXkY1e0PgUC7ouLw7C1APy
	QMErXT+/HW6jSlOhlEJP8DspcJvljAEPqhzysLRzngJ1gtVdJCZSugcebIlVVKKSEaaGhdm+KaBM/
	NmVDHx07nFMJgbtn69jnCRmOEx/z3fTCWLhKZC3b23VulTDS3QeXMM6Uowh1IV2ENFE00DTh9GIie
	7rpq9fJ3K/ybmt8mWY+/BQvITgPf3r4oz+5D6/kamcBc0LfSCs/OEc9ChB9zqf0muBt/uF3skfiP/
	4YRgcn5i7i4z9M+w56OrPmoOntGXIrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiITy-0004tq-Qj; Tue, 02 Jul 2019 13:06:02 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiISw-00033H-FW
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:05:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=EXZcCEZ51ZisvJHtaBCKmIdJTSbF5mTt/3It5b3+/0s=; b=Sdx1KffC6Q07
 BdBYw5jsi3uIXUS8PUpC1FrUMHCcvFtyixsFOQdnjfv7tGBEkcAn4hE+aLqdAIir8P6xKliy50bBq
 j4m0ucYg27bYQCn0zxK4ouRyxM2yOdW9M36bij9+J+QdiOlpnv21l56Dzh3iLYSGZ/nOpvgk+cYwg
 dHA+g=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45]
 (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hiISt-0002Oc-4C; Tue, 02 Jul 2019 13:04:55 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 6FCC0440046; Tue,  2 Jul 2019 14:04:54 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: Applied "spi: atmel-quadspi: fix resume call" to the spi tree
In-Reply-To: <20190628153009.7571-3-tudor.ambarus@microchip.com>
X-Patchwork-Hint: ignore
Message-Id: <20190702130454.6FCC0440046@finisterre.sirena.org.uk>
Date: Tue,  2 Jul 2019 14:04:54 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_060458_663586_B0973170 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 mdeneen@gmail.com, linux-spi@vger.kernel.org, Ludovic.Desroches@microchip.com,
 Mark Brown <broonie@kernel.org>, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: atmel-quadspi: fix resume call

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

From 0db3a61b4b3ceaea68b748ee63cc88f110757b7f Mon Sep 17 00:00:00 2001
From: Tudor Ambarus <tudor.ambarus@microchip.com>
Date: Fri, 28 Jun 2019 15:30:34 +0000
Subject: [PATCH] spi: atmel-quadspi: fix resume call

When waking up from the Suspend-to-RAM state, the following error
was seen:

m25p80 spi2.0: flash operation timed out

The flash remained in an undefined state, returning 0xFFs.
Fix it by setting the Serial Clock Baud Rate, as it was set
before the conversion to SPIMEM.

Tested with sama5d2_xplained and mx25l25673g spi-nor in
Backup + Self-Refresh and Suspend modes.

Fixes: 0e6aae08e9ae ("spi: Add QuadSPI driver for Atmel SAMA5D2")
Reported-by: Mark Deneen <mdeneen@gmail.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/atmel-quadspi.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 32eb7447c31a..6a7d7b553d95 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -151,6 +151,7 @@ struct atmel_qspi {
 	const struct atmel_qspi_caps *caps;
 	u32			pending;
 	u32			mr;
+	u32			scr;
 	struct completion	cmd_completion;
 };
 
@@ -382,7 +383,7 @@ static int atmel_qspi_setup(struct spi_device *spi)
 	struct spi_controller *ctrl = spi->master;
 	struct atmel_qspi *aq = spi_controller_get_devdata(ctrl);
 	unsigned long src_rate;
-	u32 scr, scbr;
+	u32 scbr;
 
 	if (ctrl->busy)
 		return -EBUSY;
@@ -399,8 +400,8 @@ static int atmel_qspi_setup(struct spi_device *spi)
 	if (scbr > 0)
 		scbr--;
 
-	scr = QSPI_SCR_SCBR(scbr);
-	writel_relaxed(scr, aq->regs + QSPI_SCR);
+	aq->scr = QSPI_SCR_SCBR(scbr);
+	writel_relaxed(aq->scr, aq->regs + QSPI_SCR);
 
 	return 0;
 }
@@ -584,6 +585,9 @@ static int __maybe_unused atmel_qspi_resume(struct device *dev)
 	clk_prepare_enable(aq->qspick);
 
 	atmel_qspi_init(aq);
+
+	writel_relaxed(aq->scr, aq->regs + QSPI_SCR);
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

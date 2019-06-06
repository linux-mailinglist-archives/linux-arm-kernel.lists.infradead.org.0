Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD0637F8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 23:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=cYF1Pk/xvY8OJpDjqlBSGzeo2wTs7H3EC9lya9eIvNI=; b=TWb
	mq4DP3+kMbY0WhfL5Cg0XMZJGkYaya4cOiFz/LGPaPQqPkwtXiyOtm+xT44VAKcqBptC734yoi2T8
	9b/6QptD0YA0EoTmqgwUcELUlPE6L2P5kUEN02+2Ep9Rty4pskwLzLZrAKurjUPj2F2jTQbt8BQtA
	JRIvXsdNY8fqxA0bLN1lbvIhfPnC94xqDL+MV2ICnIIPPSYXhqjzsqvJkjfhTd/bJWFyFzgVuIMkD
	VMqEsMCC1PZPsDlARS/pk37MiYviXLU/Bl9ZTyr0zgJxlMdxHDHhMhsxD4UEXsgbyojcHFhMfJ8m4
	HzlQ3D/kQIkJOXtfJ4QqflK4bcCAwXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYzvO-0006RN-2j; Thu, 06 Jun 2019 21:27:54 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYzv8-0006Hx-Dn; Thu, 06 Jun 2019 21:27:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=iTBpUenYt5TRt0pKN2VQcUXbaHgvcGjOjaOWkyUYusc=; b=ACrAPspd8ob8
 SUn7J5Coyi9qIqntZ2TxVhuJuOW+cVduSwxFu5B4nnyVH+i5icsnWRzNIf0EzuFRJ2jE4tyCR9K/8
 XNEFRjkGsHsC/m1yvZpwkAF9+MQOP7Emw/e8XNVKjzeG2M0B94l2/wTWk28iCbL+VzCd7gM3h6RGQ
 Mubas=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hYzv3-0007Wf-RB; Thu, 06 Jun 2019 21:27:33 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 5E2FE440046; Thu,  6 Jun 2019 22:27:33 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Leilk Liu <leilk.liu@mediatek.com>
Subject: Applied "spi: mediatek: add SPI_LSB_FIRST support" to the spi tree
In-Reply-To: <1559704024-5369-1-git-send-email-leilk.liu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20190606212733.5E2FE440046@finisterre.sirena.org.uk>
Date: Thu,  6 Jun 2019 22:27:33 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_142738_906297_C35C18FC 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, fparent@baylibre.com,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: mediatek: add SPI_LSB_FIRST support

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

From 3e582c6e911ffe6c90b9f90324bdf85fc728d0c3 Mon Sep 17 00:00:00 2001
From: Leilk Liu <leilk.liu@mediatek.com>
Date: Wed, 5 Jun 2019 11:07:04 +0800
Subject: [PATCH] spi: mediatek: add SPI_LSB_FIRST support

this patch add SPI_LSB_FIRST feature support.

Signed-off-by: Leilk Liu <leilk.liu@mediatek.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-mt65xx.c                 | 15 ++++++---------
 include/linux/platform_data/spi-mt65xx.h |  2 --
 2 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/spi-mt65xx.c b/drivers/spi/spi-mt65xx.c
index 0cce6f0ba824..7f4dc1844789 100644
--- a/drivers/spi/spi-mt65xx.c
+++ b/drivers/spi/spi-mt65xx.c
@@ -131,8 +131,6 @@ static const struct mtk_spi_compatible mt8183_compat = {
  * supplies it.
  */
 static const struct mtk_chip_config mtk_default_chip_info = {
-	.rx_mlsb = 1,
-	.tx_mlsb = 1,
 	.cs_pol = 0,
 	.sample_sel = 0,
 };
@@ -203,14 +201,13 @@ static int mtk_spi_prepare_message(struct spi_master *master,
 		reg_val &= ~SPI_CMD_CPOL;
 
 	/* set the mlsbx and mlsbtx */
-	if (chip_config->tx_mlsb)
-		reg_val |= SPI_CMD_TXMSBF;
-	else
+	if (spi->mode & SPI_LSB_FIRST) {
 		reg_val &= ~SPI_CMD_TXMSBF;
-	if (chip_config->rx_mlsb)
-		reg_val |= SPI_CMD_RXMSBF;
-	else
 		reg_val &= ~SPI_CMD_RXMSBF;
+	} else {
+		reg_val |= SPI_CMD_TXMSBF;
+		reg_val |= SPI_CMD_RXMSBF;
+	}
 
 	/* set the tx/rx endian */
 #ifdef __LITTLE_ENDIAN
@@ -607,7 +604,7 @@ static int mtk_spi_probe(struct platform_device *pdev)
 
 	master->auto_runtime_pm = true;
 	master->dev.of_node = pdev->dev.of_node;
-	master->mode_bits = SPI_CPOL | SPI_CPHA;
+	master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LSB_FIRST;
 
 	master->set_cs = mtk_spi_set_cs;
 	master->prepare_message = mtk_spi_prepare_message;
diff --git a/include/linux/platform_data/spi-mt65xx.h b/include/linux/platform_data/spi-mt65xx.h
index ba4e4bb70262..8d5df58a13ef 100644
--- a/include/linux/platform_data/spi-mt65xx.h
+++ b/include/linux/platform_data/spi-mt65xx.h
@@ -14,8 +14,6 @@
 
 /* Board specific platform_data */
 struct mtk_chip_config {
-	u32 tx_mlsb;
-	u32 rx_mlsb;
 	u32 cs_pol;
 	u32 sample_sel;
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

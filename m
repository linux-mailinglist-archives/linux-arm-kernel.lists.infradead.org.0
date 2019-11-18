Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC8B100AC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 18:49:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=hUoX5dhfzk+HwurXZlpbWJzdWqTZk5ux1IjAMhSeAqg=; b=LRa
	tDfPdVbS++fC+UtDHsx014NnYroPrtzsr0ewo9UqrGShBdPmTbnw+ZouOpcoHyoaD0g+waD3n7I6E
	XPc5vB8uadUVkNyfyHkZt5xcMrzi6qp9zMSAeZVR3EmGDReSELqKh7v8FEFVfcD/rZAQdoX3aFfEj
	c3MsIIDkOVnJS0tukSVkinmC1AUJwBPATKsl4kHZZblNS6kEZ2KLZZ3LDaDgY1E2e/bAH3XYEJtps
	R5VPfU6iW/5vkAMXkEoyxzOXc2R2gL0g0im8m83h2YljAf80ONWLLl776Ftq9+lrL/tkmGj/DlbTv
	yAi7rtlw5fmBJrlUfx7fFMxt2++KaPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWl9G-0002lV-SZ; Mon, 18 Nov 2019 17:49:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWl97-0002kY-7r; Mon, 18 Nov 2019 17:49:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EE9EDA7;
 Mon, 18 Nov 2019 09:49:03 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72FE23F703;
 Mon, 18 Nov 2019 09:49:02 -0800 (PST)
Date: Mon, 18 Nov 2019 17:49:00 +0000
From: Mark Brown <broonie@kernel.org>
To: Luhua Xu <luhua.xu@mediatek.com>
Subject: Applied "spi: mediatek: add SPI_CS_HIGH support" to the spi tree
In-Reply-To: <1574053037-26721-2-git-send-email-luhua.xu@mediatek.com>
Message-Id: <applied-1574053037-26721-2-git-send-email-luhua.xu@mediatek.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_094905_370761_80B70C7D 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Leilk Liu <leilk.liu@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Allison Randal <allison@lohutok.net>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: mediatek: add SPI_CS_HIGH support

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

From ae7c2d342a10dbef1e054482f46498b6282a1df0 Mon Sep 17 00:00:00 2001
From: Luhua Xu <luhua.xu@mediatek.com>
Date: Mon, 18 Nov 2019 12:57:16 +0800
Subject: [PATCH] spi: mediatek: add SPI_CS_HIGH support

Change to use SPI_CS_HIGH to support spi CS polarity setting
for chips support enhance_timing.

Signed-off-by: Luhua Xu <luhua.xu@mediatek.com>
Link: https://lore.kernel.org/r/1574053037-26721-2-git-send-email-luhua.xu@mediatek.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-mt65xx.c                 | 12 ++++++++++--
 include/linux/platform_data/spi-mt65xx.h |  1 -
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-mt65xx.c b/drivers/spi/spi-mt65xx.c
index 25fe149a8d9a..6783e12c40c2 100644
--- a/drivers/spi/spi-mt65xx.c
+++ b/drivers/spi/spi-mt65xx.c
@@ -139,7 +139,6 @@ static const struct mtk_spi_compatible mt8183_compat = {
  * supplies it.
  */
 static const struct mtk_chip_config mtk_default_chip_info = {
-	.cs_pol = 0,
 	.sample_sel = 0,
 };
 
@@ -230,10 +229,12 @@ static int mtk_spi_prepare_message(struct spi_master *master,
 #endif
 
 	if (mdata->dev_comp->enhance_timing) {
-		if (chip_config->cs_pol)
+		/* set CS polarity */
+		if (spi->mode & SPI_CS_HIGH)
 			reg_val |= SPI_CMD_CS_POL;
 		else
 			reg_val &= ~SPI_CMD_CS_POL;
+
 		if (chip_config->sample_sel)
 			reg_val |= SPI_CMD_SAMPLE_SEL;
 		else
@@ -264,6 +265,9 @@ static void mtk_spi_set_cs(struct spi_device *spi, bool enable)
 	u32 reg_val;
 	struct mtk_spi *mdata = spi_master_get_devdata(spi->master);
 
+	if (spi->mode & SPI_CS_HIGH)
+		enable = !enable;
+
 	reg_val = readl(mdata->base + SPI_CMD_REG);
 	if (!enable) {
 		reg_val |= SPI_CMD_PAUSE_EN;
@@ -646,6 +650,10 @@ static int mtk_spi_probe(struct platform_device *pdev)
 
 	mdata = spi_master_get_devdata(master);
 	mdata->dev_comp = of_id->data;
+
+	if (mdata->dev_comp->enhance_timing)
+		master->mode_bits |= SPI_CS_HIGH;
+
 	if (mdata->dev_comp->must_tx)
 		master->flags = SPI_MASTER_MUST_TX;
 
diff --git a/include/linux/platform_data/spi-mt65xx.h b/include/linux/platform_data/spi-mt65xx.h
index f0e6d6483e62..65fd5ffd257c 100644
--- a/include/linux/platform_data/spi-mt65xx.h
+++ b/include/linux/platform_data/spi-mt65xx.h
@@ -11,7 +11,6 @@
 
 /* Board specific platform_data */
 struct mtk_chip_config {
-	u32 cs_pol;
 	u32 sample_sel;
 };
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

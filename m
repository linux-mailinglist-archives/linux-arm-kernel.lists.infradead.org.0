Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D828A67F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 13:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Y2FEy0kQiOcjj6vAnFojOEM3RX126dp2kvhF55Y+0T0=; b=FSN
	NhhdqWHD0T+0vPYEN7Rz4LYvE0mijVjfo9Rcvn7VaLaaCoTNN/jNmUy1Z+hHd7vf6biUtRIgvasT+
	AHe8F5LK3vAYR2oBWDcaeF+XnwPmLsKNJNryZjAs6B7TzkrG3UZD/qk9Cd4IoZRKmGIV1NKBSIITr
	GQLTKN+WrVpBNTUluvU6us9SPF3lp//UpjQhj5LEYw6rfhRdT5N13pUvysjmVSKS25RK8ZOZWAlfJ
	2B4+RayxCoBYykCSgMJEjm+DOBxCT5d99Kn+jqfJQ4Mrha/eumfuK6yyHxcRCvb/I5sHHvndZYESb
	mEG1uuAd2QjIuCpv9FlKESdL2L3NBsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57SN-0004yI-7y; Tue, 03 Sep 2019 11:58:43 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57Rb-0004WG-85
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 11:57:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=1sZR0jM6bSKmi2RDe14AoOgOh3ZcP38nZLHlmDYc7z8=; b=msNKnC9/TNrR
 UlW226Cz+yKvUAC86LEjs3KYAnXCDCXeYLouIltTnS/EVUrdG3b+QMX+SP/GllbYwrlxRZ7yMNn1T
 k59Q8GzHYkbfLm9mKpgYmZabOYarOdIducgyDlrzo+Me4GUvQ10unTQsWn/1P0ERCft8G5eX8ScpN
 Dh9k4=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i57RV-0008Ly-Cv; Tue, 03 Sep 2019 11:57:49 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id D6F002742D39; Tue,  3 Sep 2019 12:57:48 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Subject: Applied "spi: uniphier: introduce polling mode" to the spi tree
In-Reply-To: <1567488661-11428-4-git-send-email-hayashibara.keiji@socionext.com>
X-Patchwork-Hint: ignore
Message-Id: <20190903115748.D6F002742D39@ypsilon.sirena.org.uk>
Date: Tue,  3 Sep 2019 12:57:48 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_045755_312873_B3849203 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: masami.hiramatsu@linaro.org, hayashibara.keiji@socionext.com,
 yamada.masahiro@socionext.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, jaswinder.singh@linaro.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: uniphier: introduce polling mode

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

From 37ffab81709805c674f164948e03ba0d3fe371b6 Mon Sep 17 00:00:00 2001
From: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Date: Tue, 3 Sep 2019 14:31:01 +0900
Subject: [PATCH] spi: uniphier: introduce polling mode

Introduce new polling mode for short size transfer. Either the estimated
transfer time is estimated to exceed 200us, or polling loop actually exceeds
200us, it switches to irq mode.

Signed-off-by: Keiji Hayashibara <hayashibara.keiji@socionext.com>
Link: https://lore.kernel.org/r/1567488661-11428-4-git-send-email-hayashibara.keiji@socionext.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-uniphier.c | 81 +++++++++++++++++++++++++++++++-------
 1 file changed, 66 insertions(+), 15 deletions(-)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index 226f8508bff2..938f8873e63f 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -7,6 +7,7 @@
 #include <linux/bitfield.h>
 #include <linux/bitops.h>
 #include <linux/clk.h>
+#include <linux/delay.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/module.h>
@@ -16,6 +17,7 @@
 #include <asm/unaligned.h>
 
 #define SSI_TIMEOUT_MS		2000
+#define SSI_POLL_TIMEOUT_US	200
 #define SSI_MAX_CLK_DIVIDER	254
 #define SSI_MIN_CLK_DIVIDER	4
 
@@ -289,21 +291,23 @@ static void uniphier_spi_recv(struct uniphier_spi_priv *priv)
 
 static void uniphier_spi_fill_tx_fifo(struct uniphier_spi_priv *priv)
 {
-	unsigned int tx_count;
+	unsigned int fifo_threshold, fill_bytes;
 	u32 val;
 
-	tx_count = DIV_ROUND_UP(priv->tx_bytes,
+	fifo_threshold = DIV_ROUND_UP(priv->rx_bytes,
 				bytes_per_word(priv->bits_per_word));
-	tx_count = min(tx_count, SSI_FIFO_DEPTH);
+	fifo_threshold = min(fifo_threshold, SSI_FIFO_DEPTH);
+
+	fill_bytes = fifo_threshold - (priv->rx_bytes - priv->tx_bytes);
 
 	/* set fifo threshold */
 	val = readl(priv->base + SSI_FC);
 	val &= ~(SSI_FC_TXFTH_MASK | SSI_FC_RXFTH_MASK);
-	val |= FIELD_PREP(SSI_FC_TXFTH_MASK, tx_count);
-	val |= FIELD_PREP(SSI_FC_RXFTH_MASK, tx_count);
+	val |= FIELD_PREP(SSI_FC_TXFTH_MASK, fifo_threshold);
+	val |= FIELD_PREP(SSI_FC_RXFTH_MASK, fifo_threshold);
 	writel(val, priv->base + SSI_FC);
 
-	while (tx_count--)
+	while (fill_bytes--)
 		uniphier_spi_send(priv);
 }
 
@@ -322,20 +326,14 @@ static void uniphier_spi_set_cs(struct spi_device *spi, bool enable)
 	writel(val, priv->base + SSI_FPS);
 }
 
-static int uniphier_spi_transfer_one(struct spi_master *master,
-				     struct spi_device *spi,
-				     struct spi_transfer *t)
+static int uniphier_spi_transfer_one_irq(struct spi_master *master,
+					 struct spi_device *spi,
+					 struct spi_transfer *t)
 {
 	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
 	struct device *dev = master->dev.parent;
 	unsigned long time_left;
 
-	/* Terminate and return success for 0 byte length transfer */
-	if (!t->len)
-		return 0;
-
-	uniphier_spi_setup_transfer(spi, t);
-
 	reinit_completion(&priv->xfer_done);
 
 	uniphier_spi_fill_tx_fifo(priv);
@@ -355,6 +353,59 @@ static int uniphier_spi_transfer_one(struct spi_master *master,
 	return priv->error;
 }
 
+static int uniphier_spi_transfer_one_poll(struct spi_master *master,
+					  struct spi_device *spi,
+					  struct spi_transfer *t)
+{
+	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
+	int loop = SSI_POLL_TIMEOUT_US * 10;
+
+	while (priv->tx_bytes) {
+		uniphier_spi_fill_tx_fifo(priv);
+
+		while ((priv->rx_bytes - priv->tx_bytes) > 0) {
+			while (!(readl(priv->base + SSI_SR) & SSI_SR_RNE)
+								&& loop--)
+				ndelay(100);
+
+			if (loop == -1)
+				goto irq_transfer;
+
+			uniphier_spi_recv(priv);
+		}
+	}
+
+	return 0;
+
+irq_transfer:
+	return uniphier_spi_transfer_one_irq(master, spi, t);
+}
+
+static int uniphier_spi_transfer_one(struct spi_master *master,
+				     struct spi_device *spi,
+				     struct spi_transfer *t)
+{
+	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
+	unsigned long threshold;
+
+	/* Terminate and return success for 0 byte length transfer */
+	if (!t->len)
+		return 0;
+
+	uniphier_spi_setup_transfer(spi, t);
+
+	/*
+	 * If the transfer operation will take longer than
+	 * SSI_POLL_TIMEOUT_US, it should use irq.
+	 */
+	threshold = DIV_ROUND_UP(SSI_POLL_TIMEOUT_US * priv->speed_hz,
+					USEC_PER_SEC * BITS_PER_BYTE);
+	if (t->len > threshold)
+		return uniphier_spi_transfer_one_irq(master, spi, t);
+	else
+		return uniphier_spi_transfer_one_poll(master, spi, t);
+}
+
 static int uniphier_spi_prepare_transfer_hardware(struct spi_master *master)
 {
 	struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

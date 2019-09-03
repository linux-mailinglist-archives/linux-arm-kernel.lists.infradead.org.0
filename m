Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F496A60A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 07:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mFUA549bWROxg2gOlCtYJmIuA6J7ZwsiFUd+/X+ITEA=; b=i8IRc2iNO9zXbjvh3JV3y+hVkn
	VSn56D4wbok7SYHvCOV4uqjBLl+px/08K8TPi7jkbT2w/DLLCWs3OcKcjsgx4uLB8so/rIN2lKDrT
	CNsVwavMfeE+q2cFX7bPuPoY5dG15Qewt6cX/kKfrrOU/7XNi5U/oomkJLzr9eHyjkLxsqOl+DAB6
	p65cJRSPvKWj2ZqxN9H8C3csxZZsEFrT+dwYOOcbJXAe44hRj845zlimT7FeEvH2klMCJs6+jbV5Q
	65uZjEDDTkr7iN4ZJmVFPrfu2J/Uj1EoRoJmSdbWRQNfV18wq7AmEpgdhxBt+7P5qn5lXnCK+3IFB
	UR9A7QdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i51QM-0000UC-EZ; Tue, 03 Sep 2019 05:32:14 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i51PM-0008Bt-Fb
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 05:31:13 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 03 Sep 2019 14:31:05 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 64817605F8;
 Tue,  3 Sep 2019 14:31:05 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 3 Sep 2019 14:31:05 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 41A2A1A0E9F;
 Tue,  3 Sep 2019 14:31:05 +0900 (JST)
Received: from hamster.e01.socionext.com (unknown [10.213.134.20])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 21B151204B3;
 Tue,  3 Sep 2019 14:31:05 +0900 (JST)
From: Keiji Hayashibara <hayashibara.keiji@socionext.com>
To: broonie@kernel.org, yamada.masahiro@socionext.com,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] spi: uniphier: introduce polling mode
Date: Tue,  3 Sep 2019 14:31:01 +0900
Message-Id: <1567488661-11428-4-git-send-email-hayashibara.keiji@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567488661-11428-1-git-send-email-hayashibara.keiji@socionext.com>
References: <1567488661-11428-1-git-send-email-hayashibara.keiji@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_223112_629559_0E87762F 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jaswinder.singh@linaro.org, linux-kernel@vger.kernel.org,
 masami.hiramatsu@linaro.org, hayashibara.keiji@socionext.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce new polling mode for short size transfer. Either the estimated
transfer time is estimated to exceed 200us, or polling loop actually exceeds
200us, it switches to irq mode.

Signed-off-by: Keiji Hayashibara <hayashibara.keiji@socionext.com>
---
 drivers/spi/spi-uniphier.c | 81 +++++++++++++++++++++++++++++++++++++---------
 1 file changed, 66 insertions(+), 15 deletions(-)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index d40ad93..6b83b25 100644
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
 
@@ -290,21 +292,23 @@ static void uniphier_spi_recv(struct uniphier_spi_priv *priv)
 
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
 
@@ -323,20 +327,14 @@ static void uniphier_spi_set_cs(struct spi_device *spi, bool enable)
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
@@ -356,6 +354,59 @@ static int uniphier_spi_transfer_one(struct spi_master *master,
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
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

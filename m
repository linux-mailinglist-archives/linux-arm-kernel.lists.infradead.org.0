Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988B917512
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 11:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=u83YscJFPs+J1CYfRuAXT1iMkdkyfiu6L+x1FfQPQJg=; b=UxG
	+rWYdwOpH3/JOeKipEF5OtcakqzpYl/JAbZD8v9ichUd8Ya7jfO1Gz3UOK9ik2VPGm1l6U7fIGqCr
	otQPcNjjJXNIz/zpRqhDAEhuYGtfXuD5cs4dLPC07sZ5dVDpg8/KqaborxvVXkPT6zCn51Tw4XQhu
	EQ8MZrEVZeyhKR8Qk/6k6wUzjk4ZVLQNiBrQE2tCveRiBNdRHQjCAb3Ourq1TbvcsIMWTVoQ8GviE
	j8h29p28EQHV5671Fn6nA773rQbYGW365snM/i4cGPhDqGS6/xwuW+84faeSuuaPcd9xlNq1cqDEO
	tBdsU6hnCO9tdtE+weJ1qIfNXPQdXNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIo6-00078f-Mh; Wed, 08 May 2019 09:24:10 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOInz-00078H-5M; Wed, 08 May 2019 09:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=gXJ1mcvnfd2Lr4CrzMcsy+xEMcAnrSJHRAZiquY3mjg=; b=lnZ0uiyuXjmV
 cTb7XBg4vRrnA8RPiKD5d9635w6YGUCJ/CdS7YsfVQ8NsJYiGA28b6YqKxdwlULwjDWPZrHsSMeZl
 PkftqRGTKymYkYpRuhwcMd3Mk/zsthh1Kcy+6wKBCrvyYFdQ3hfwbY++5p3Iq0QiR/IZwgpvIe4Ek
 csjkw=;
Received: from [61.199.190.11] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hOInt-0007jg-7R; Wed, 08 May 2019 09:23:58 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 0A5F2440034; Wed,  8 May 2019 10:08:54 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Martin Sperl <kernel@martin.sperl.org>
Subject: Applied "spi: bcm2835: add driver stats to debugfs" to the spi tree
In-Reply-To: <20190423201513.8073-7-kernel@martin.sperl.org>
X-Patchwork-Hint: ignore
Message-Id: <20190508090854.0A5F2440034@finisterre.sirena.org.uk>
Date: Wed,  8 May 2019 10:08:53 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_022403_354034_52959A92 
X-CRM114-Status: GOOD (  18.73  )
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

   spi: bcm2835: add driver stats to debugfs

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

From 154f7da56f1ecba42021d550c9e8432ac8d32c26 Mon Sep 17 00:00:00 2001
From: Martin Sperl <kernel@martin.sperl.org>
Date: Tue, 23 Apr 2019 20:15:13 +0000
Subject: [PATCH] spi: bcm2835: add driver stats to debugfs

To estimate efficiency add statistics on transfer types
(polling, interrupt and dma) used to debugfs.

Signed-off-by: Martin Sperl <kernel@martin.sperl.org>

Changelog:
  V1 -> V2: applied feedback by Stefan Wahren
            reorganized patchset
	    added extra rational, descriptions
	    fixed compile issue when CONFIG_DEBUG_FS is unset
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-bcm2835.c | 74 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 3230d37fa89a..eb67da697ef5 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -22,6 +22,7 @@
 
 #include <linux/clk.h>
 #include <linux/completion.h>
+#include <linux/debugfs.h>
 #include <linux/delay.h>
 #include <linux/dma-mapping.h>
 #include <linux/dmaengine.h>
@@ -101,6 +102,15 @@ MODULE_PARM_DESC(polling_limit_us,
  *	length is not a multiple of 4 (to overcome hardware limitation)
  * @tx_spillover: whether @tx_prologue spills over to second TX sglist entry
  * @dma_pending: whether a DMA transfer is in progress
+ * @debugfs_dir: the debugfs directory - neede to remove debugfs when
+ *      unloading the module
+ * @count_transfer_polling: count of how often polling mode is used
+ * @count_transfer_irq: count of how often interrupt mode is used
+ * @count_transfer_irq_after_polling: count of how often we fall back to
+ *      interrupt mode after starting in polling mode.
+ *      These are counted as well in @count_transfer_polling and
+ *      @count_transfer_irq
+ * @count_transfer_dma: count how often dma mode is used
  */
 struct bcm2835_spi {
 	void __iomem *regs;
@@ -115,8 +125,55 @@ struct bcm2835_spi {
 	int rx_prologue;
 	unsigned int tx_spillover;
 	unsigned int dma_pending;
+
+	struct dentry *debugfs_dir;
+	u64 count_transfer_polling;
+	u64 count_transfer_irq;
+	u64 count_transfer_irq_after_polling;
+	u64 count_transfer_dma;
 };
 
+#if defined(CONFIG_DEBUG_FS)
+static void bcm2835_debugfs_create(struct bcm2835_spi *bs,
+				   const char *dname)
+{
+	char name[64];
+	struct dentry *dir;
+
+	/* get full name */
+	snprintf(name, sizeof(name), "spi-bcm2835-%s", dname);
+
+	/* the base directory */
+	dir = debugfs_create_dir(name, NULL);
+	bs->debugfs_dir = dir;
+
+	/* the counters */
+	debugfs_create_u64("count_transfer_polling", 0444, dir,
+			   &bs->count_transfer_polling);
+	debugfs_create_u64("count_transfer_irq", 0444, dir,
+			   &bs->count_transfer_irq);
+	debugfs_create_u64("count_transfer_irq_after_polling", 0444, dir,
+			   &bs->count_transfer_irq_after_polling);
+	debugfs_create_u64("count_transfer_dma", 0444, dir,
+			   &bs->count_transfer_dma);
+}
+
+static void bcm2835_debugfs_remove(struct bcm2835_spi *bs)
+{
+	debugfs_remove_recursive(bs->debugfs_dir);
+	bs->debugfs_dir = NULL;
+}
+#else
+static void bcm2835_debugfs_create(struct bcm2835_spi *bs,
+				   const char *dname)
+{
+}
+
+static void bcm2835_debugfs_remove(struct bcm2835_spi *bs)
+{
+}
+#endif /* CONFIG_DEBUG_FS */
+
 static inline u32 bcm2835_rd(struct bcm2835_spi *bs, unsigned reg)
 {
 	return readl(bs->regs + reg);
@@ -320,6 +377,9 @@ static int bcm2835_spi_transfer_one_irq(struct spi_master *master,
 {
 	struct bcm2835_spi *bs = spi_master_get_devdata(master);
 
+	/* update usage statistics */
+	bs->count_transfer_irq++;
+
 	/*
 	 * Enable HW block, but with interrupts still disabled.
 	 * Otherwise the empty TX FIFO would immediately trigger an interrupt.
@@ -564,6 +624,9 @@ static int bcm2835_spi_transfer_one_dma(struct spi_master *master,
 	struct bcm2835_spi *bs = spi_master_get_devdata(master);
 	int ret;
 
+	/* update usage statistics */
+	bs->count_transfer_dma++;
+
 	/*
 	 * Transfer first few bytes without DMA if length of first TX or RX
 	 * sglist entry is not a multiple of 4 bytes (hardware limitation).
@@ -706,6 +769,9 @@ static int bcm2835_spi_transfer_one_poll(struct spi_master *master,
 	struct bcm2835_spi *bs = spi_master_get_devdata(master);
 	unsigned long timeout;
 
+	/* update usage statistics */
+	bs->count_transfer_polling++;
+
 	/* enable HW block without interrupts */
 	bcm2835_wr(bs, BCM2835_SPI_CS, cs | BCM2835_SPI_CS_TA);
 
@@ -735,6 +801,10 @@ static int bcm2835_spi_transfer_one_poll(struct spi_master *master,
 					    jiffies - timeout,
 					    bs->tx_len, bs->rx_len);
 			/* fall back to interrupt mode */
+
+			/* update usage statistics */
+			bs->count_transfer_irq_after_polling++;
+
 			return bcm2835_spi_transfer_one_irq(master, spi,
 							    tfr, cs, false);
 		}
@@ -982,6 +1052,8 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 		goto out_clk_disable;
 	}
 
+	bcm2835_debugfs_create(bs, dev_name(&pdev->dev));
+
 	return 0;
 
 out_clk_disable:
@@ -996,6 +1068,8 @@ static int bcm2835_spi_remove(struct platform_device *pdev)
 	struct spi_master *master = platform_get_drvdata(pdev);
 	struct bcm2835_spi *bs = spi_master_get_devdata(master);
 
+	bcm2835_debugfs_remove(bs);
+
 	/* Clear FIFOs, and disable the HW block */
 	bcm2835_wr(bs, BCM2835_SPI_CS,
 		   BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0F912A526
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 01:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Tu7dxgeqMRnF6Irtrkc1t63/wVX+C6Ol6NDlVYk2UTs=; b=SdK
	yOtl3kWtIzy07CWrFHZVzOYjOYMJUS8W2iiiCdh9n+kMSPjn5Tbe2cHeJFSKMOtkTmWFvkXpyOM0n
	UuPYU19jyACkvPr71n2Cxk6joIDOWp0iXKkNZnuKP+MuCOoqbpfQv5q7y7lG6f3veDVexfFzWILlG
	mlDXGn+zniZW88SCb11ufpbJDmQ5dkAzVX4dAMmLINjJXU1WGY+vyaIyYBmRP97uOy5FIKTrhiZ65
	bQgIOX4vTiQKmGT+aVmz5pRCBNax0EaswhR0D8Z/8v9c3IbBVqjCOtgyZeEKesK0C6a43fCj23c+n
	sa/CexOkcEm6klNI6Kz2U24RuABRmgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijuGE-0006pR-MR; Wed, 25 Dec 2019 00:10:46 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijuEs-0004pG-7B
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 00:09:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=XHO12lr1qLB4FKdbh6ys7+jy8rW61hg1/mw41eet/vI=; b=Mtpl63TU2Fv6
 qcc+jUPgG3t3sObYqw3qJntc+jQ4uZINU2M1k868I2OCc5Pud3blFUcYCeHQIkBzsOsgptBIZ54Cj
 ZWXWfzCq8Qz+RUCkV5eUOepHvLvxwtoNAl0nxJRNCa3qrtS83ZQXcggQNxHstk4cbci6icVmJdT6e
 x6aVo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ijuEp-0007N2-Fd; Wed, 25 Dec 2019 00:09:19 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 00AA5D01963; Wed, 25 Dec 2019 00:09:18 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Applied "spi: uniphier: Change argument of irq functions to private
 structure" to the spi tree
In-Reply-To: <1577149107-30670-3-git-send-email-hayashi.kunihiko@socionext.com>
Message-Id: <applied-1577149107-30670-3-git-send-email-hayashi.kunihiko@socionext.com>
X-Patchwork-Hint: ignore
Date: Wed, 25 Dec 2019 00:09:18 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_160922_270025_8BB07C0D 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Keiji Hayashibara <hayashibara.keiji@socionext.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: uniphier: Change argument of irq functions to private structure

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.6

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

From 9859db51387df8a7e8564a211158ff8bf263b0a8 Mon Sep 17 00:00:00 2001
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Date: Tue, 24 Dec 2019 09:58:24 +0900
Subject: [PATCH] spi: uniphier: Change argument of irq functions to private
 structure

This changes each argument of functions uniphier_irq_{enable,disable}()
to uniphier_spi_priv because these functions are used not only for
spi_device but also for the entire controller.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Link: https://lore.kernel.org/r/1577149107-30670-3-git-send-email-hayashi.kunihiko@socionext.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-uniphier.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi-uniphier.c b/drivers/spi/spi-uniphier.c
index 47cde1864630..a44a1a5fb7b0 100644
--- a/drivers/spi/spi-uniphier.c
+++ b/drivers/spi/spi-uniphier.c
@@ -93,9 +93,9 @@ static inline unsigned int bytes_per_word(unsigned int bits)
 	return bits <= 8 ? 1 : (bits <= 16 ? 2 : 4);
 }
 
-static inline void uniphier_spi_irq_enable(struct spi_device *spi, u32 mask)
+static inline void uniphier_spi_irq_enable(struct uniphier_spi_priv *priv,
+					   u32 mask)
 {
-	struct uniphier_spi_priv *priv = spi_master_get_devdata(spi->master);
 	u32 val;
 
 	val = readl(priv->base + SSI_IE);
@@ -103,9 +103,9 @@ static inline void uniphier_spi_irq_enable(struct spi_device *spi, u32 mask)
 	writel(val, priv->base + SSI_IE);
 }
 
-static inline void uniphier_spi_irq_disable(struct spi_device *spi, u32 mask)
+static inline void uniphier_spi_irq_disable(struct uniphier_spi_priv *priv,
+					    u32 mask)
 {
-	struct uniphier_spi_priv *priv = spi_master_get_devdata(spi->master);
 	u32 val;
 
 	val = readl(priv->base + SSI_IE);
@@ -339,12 +339,12 @@ static int uniphier_spi_transfer_one_irq(struct spi_master *master,
 
 	uniphier_spi_fill_tx_fifo(priv);
 
-	uniphier_spi_irq_enable(spi, SSI_IE_RCIE | SSI_IE_RORIE);
+	uniphier_spi_irq_enable(priv, SSI_IE_RCIE | SSI_IE_RORIE);
 
 	time_left = wait_for_completion_timeout(&priv->xfer_done,
 					msecs_to_jiffies(SSI_TIMEOUT_MS));
 
-	uniphier_spi_irq_disable(spi, SSI_IE_RCIE | SSI_IE_RORIE);
+	uniphier_spi_irq_disable(priv, SSI_IE_RCIE | SSI_IE_RORIE);
 
 	if (!time_left) {
 		dev_err(dev, "transfer timeout.\n");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B234F1113D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 04:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=NG0iG1/9t2HKxnpmvLTqhc1m+YYnGAenJ/sQvbqsSsE=; b=NJC
	shP/ZB+QXC2Fmj+Al0oKtdU5PwZdxLjlT7WRcAmIEhfXH1YFVbDlLa7vh9xIULl09brw4uwEq6KtP
	Js7edhj3vRc7YNdxJr29rOQKA5dxeqLl6Qwoz62bBEJs7uatwTd9tH1mXqGvFarSdV+DYMWOxC0/W
	kIl0LiAJAUEl8DiBvt3HE2Lc5jR1Z7knaLx+vX1XzFlqFttRt/Ih+Rfbw8Q3VQheEzRVJr2vml0+P
	j/t3l9LkAagItTenJHn4hYyOgZDTeZB3Co944CFEdnGv+j+E7ttfqLRZrVbCQi1LG271XDOQVcjM5
	Eyk1mZFn3hDR+qj/M9a9G+wJbgmv2fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM1K4-0005Iu-0N; Thu, 02 May 2019 02:19:44 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM1JT-0004f7-BT
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 02:19:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=EVE8bSshKnItl0eubjnAOH03ySne216GQtby64RJnLw=; b=o/KTDwk9QvFN
 JbyIwDUjCkoApEnDiMcp9eGEfksDBNbbkmixJ9q/eSkc5uf5H6M0obEMaeddqAgL8hk/PRnu4e9Te
 5mKxR1TIbJaifkAs6AjbZ1aGIhQliBJMt8vkmthjnB1bHjAT38RgLDP9jzaUe7RLx+kCGXaUb4K+M
 JYbLE=;
Received: from [211.55.52.15] (helo=finisterre.ee.mobilebroadband)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hM1JJ-0005ul-Lx; Thu, 02 May 2019 02:18:58 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
 id C9DFB441D3C; Thu,  2 May 2019 03:18:54 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Applied "spi: stm32: return the get_irq error" to the spi tree
In-Reply-To: <1556109524-21874-1-git-send-email-fabien.dessenne@st.com>
X-Patchwork-Hint: ignore
Message-Id: <20190502021854.C9DFB441D3C@finisterre.ee.mobilebroadband>
Date: Thu,  2 May 2019 03:18:54 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_191908_129047_DC3F8CBE 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Amelie Delaunay <amelie.delaunay@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: stm32: return the get_irq error

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.1

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

From 8d1467a68426c61807c97163459b481ecb714523 Mon Sep 17 00:00:00 2001
From: Fabien Dessenne <fabien.dessenne@st.com>
Date: Wed, 24 Apr 2019 14:38:44 +0200
Subject: [PATCH] spi: stm32: return the get_irq error

During probe, return the "get_irq" error value instead of -ENOENT. This
allows the driver to be defer probed if needed.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
Acked-by: Amelie Delaunay <amelie.delaunay@st.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-stm32.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-stm32.c b/drivers/spi/spi-stm32.c
index 4186ed20d796..b222ce8d083e 100644
--- a/drivers/spi/spi-stm32.c
+++ b/drivers/spi/spi-stm32.c
@@ -1839,8 +1839,9 @@ static int stm32_spi_probe(struct platform_device *pdev)
 
 	spi->irq = platform_get_irq(pdev, 0);
 	if (spi->irq <= 0) {
-		dev_err(&pdev->dev, "no irq: %d\n", spi->irq);
-		ret = -ENOENT;
+		ret = spi->irq;
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "failed to get irq: %d\n", ret);
 		goto err_master_put;
 	}
 	ret = devm_request_threaded_irq(&pdev->dev, spi->irq,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

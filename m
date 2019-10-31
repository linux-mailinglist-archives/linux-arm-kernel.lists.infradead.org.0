Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC4BEB11C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:24:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=YnNVtgK0feG3vwPNdzYVnWf2tz/niTrnMjrl8dAv1Ts=; b=Yar
	QoiiE/IVsiQKQRoYRCa6VGzrzX4aM5Kjbiv1TGHf2HX4wm7rFkI38LvdmgguLVtvE8ihUhS4ksNOH
	jNLAH/k6I3A1E/XXp+NHdgvYXMfu96+BmWkfyvemSw3Z7gCwihxaLcwwkVcPlY/4WDMnfSnD7T3bI
	5lW3g9XYMZzJiNDLCLVvHFqIBvVFqXr9Unv77EB7cSrQq2f3ysVczoUmjDyTYUBRv/Uszq42X4M60
	Q+7xXW+coWuRe2uueilm7ETRzTQDgzuEO/reUGnkSB+T34CLn03ib6CCqI41ExhHNj3fyNtQnTRnp
	F72QP3RPA3XNZh8Dm+U5Pk7gGZsDPNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAQe-0005LK-EP; Thu, 31 Oct 2019 13:23:56 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAQS-0005Kl-H6; Thu, 31 Oct 2019 13:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=cX2GQwx79KGhyI+8o2ddFRP7SU55uxLjju8Bx0zNqbU=; b=w1GXU7OLZ6V9
 NOlCeGWK+uVSClvkjcRzuo/o3l28fh9fTqmntUC3CxAMXZbyyEhVLz8thrd9JSq8WC+IZJcgUheOy
 AswowT/c5ZDEURBcNqn1LcApNg7ae2XT2Rahmf+6bGkCr7jeSdXSFfIcLmWo8tdC2FrqIB2gHcbzX
 fViD0=;
Received: from [91.217.168.176] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iQAQQ-0007p7-C8; Thu, 31 Oct 2019 13:23:42 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 100F1D020AA; Thu, 31 Oct 2019 13:23:42 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Luhua Xu <luhua.xu@mediatek.com>
Subject: Applied "spi: add power control when set_cs" to the spi tree
In-Reply-To: <1572426234-30019-1-git-send-email-luhua.xu@mediatek.com>
X-Patchwork-Hint: ignore
Message-Id: <20191031132342.100F1D020AA@fitzroy.sirena.org.uk>
Date: Thu, 31 Oct 2019 13:23:42 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_062344_569204_D8AD4890 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: add power control when set_cs

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

From d948e6ca189985495a21cd622c31e30e72b6b688 Mon Sep 17 00:00:00 2001
From: Luhua Xu <luhua.xu@mediatek.com>
Date: Wed, 30 Oct 2019 17:03:54 +0800
Subject: [PATCH] spi: add power control when set_cs

As to set_cs takes effect immediately, power spi
is needed when setup spi.

Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Luhua Xu <luhua.xu@mediatek.com>
Link: https://lore.kernel.org/r/1572426234-30019-1-git-send-email-luhua.xu@mediatek.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 5ba19ef809c2..294d0038eea6 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -3261,7 +3261,20 @@ int spi_setup(struct spi_device *spi)
 	if (spi->controller->setup)
 		status = spi->controller->setup(spi);
 
-	spi_set_cs(spi, false);
+	if (spi->controller->auto_runtime_pm && spi->controller->set_cs) {
+		status = pm_runtime_get_sync(spi->controller->dev.parent);
+		if (status < 0) {
+			pm_runtime_put_noidle(spi->controller->dev.parent);
+			dev_err(&spi->controller->dev, "Failed to power device: %d\n",
+				status);
+			return status;
+		}
+		spi_set_cs(spi, false);
+		pm_runtime_mark_last_busy(spi->controller->dev.parent);
+		pm_runtime_put_autosuspend(spi->controller->dev.parent);
+	} else {
+		spi_set_cs(spi, false);
+	}
 
 	if (spi->rt && !spi->controller->rt) {
 		spi->controller->rt = true;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

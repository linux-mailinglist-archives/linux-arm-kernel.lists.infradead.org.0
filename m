Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88212D74B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=KihAQ+Y49gfqMaAnPGt/l0lH8+ZQtvNgHDYqzVeFjHk=; b=fle
	8Nh8DRfgoVJaLbIWutdezq96FhFOsT8L6NPKoosLeX2QsOx325unGd1P0PgI294G1lxbvuZGuhzfa
	mapnL8bXyDhFKPhDtinaNm7FLdDLCC6gToBx30FFJl+gPqA25fCDVgHORC7juqmOjmbzb8Sa2OYuv
	BXFT/3x4AvQsjenXF4srj9hrhZh0drkOB8zNgjYSBHZunbhZeeDuGNEVUDIJqxufITdSz+iDi8eIy
	nWCbXOgGi4jmVfTM5kcHphwp6Ma/DvuS+XRQB4845YESIj6h1lh2kRk4UyqTh9OCUB6IaTQbpXGsC
	WTDpeSacBWXXdUeapvdK70W4sJlpL1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKo7-0003Ai-KO; Tue, 15 Oct 2019 11:16:03 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKkf-0007Ax-H8
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:12:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=jhntVV8cMh3g2DE+tP5NtnjXltLwNEBM5VGM4l2YeWo=; b=BUeaAr6FBBFX
 KV8hBtInuEG/LI03TciqxvDgqD4spKMnmZLVKWKWQpHWxeOf0NEbPSkvwn21Q9VMm8v7s4mvtxcYc
 ELM4ZB4hsj5a8LA8VG2efNIARtxfWaQ3gCn+8Y5aW0zGTYrmX6ZzjOu6uHosiQ4hwrg2hmA5bmFhV
 Mg5yg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKKkb-00021c-BH; Tue, 15 Oct 2019 11:12:25 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A83BD27419E4; Tue, 15 Oct 2019 12:12:24 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Applied "spi: tegra114: use `spi_transfer_delay_exec` helper" to the
 spi tree
In-Reply-To: <20190926105147.7839-11-alexandru.ardelean@analog.com>
X-Patchwork-Hint: ignore
Message-Id: <20191015111224.A83BD27419E4@ypsilon.sirena.org.uk>
Date: Tue, 15 Oct 2019 12:12:24 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041229_599875_B561A592 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: f.fainelli@gmail.com, baolin.wang@linaro.org, linux-iio@vger.kernel.org,
 zhang.lyra@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, orsonzhai@gmail.com, jic23@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: tegra114: use `spi_transfer_delay_exec` helper

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

From cd13152bce34cd71f560a7c4a8f66096f2445984 Mon Sep 17 00:00:00 2001
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
Date: Thu, 26 Sep 2019 13:51:38 +0300
Subject: [PATCH] spi: tegra114: use `spi_transfer_delay_exec` helper

The tegra114 driver has a weird/separate `tegra_spi_transfer_delay()`
function that does 2 delays: one mdelay() and one udelay().

This was introduced via commit f4fade12d506e14867a2b0a5e2f7aaf227297d8b
("spi/tegra114: Correct support for cs_change").

There doesn't seem to be a mention in that commit message to suggest a
specific need/use-case for having the 2 delay calls.
For the most part, udelay() should be sufficient.

This change replaces it with the new `spi_transfer_delay_exec()`, which
should do the same thing.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Link: https://lore.kernel.org/r/20190926105147.7839-11-alexandru.ardelean@analog.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-tegra114.c | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/spi/spi-tegra114.c b/drivers/spi/spi-tegra114.c
index 39374c2edcf3..8133dc49d34f 100644
--- a/drivers/spi/spi-tegra114.c
+++ b/drivers/spi/spi-tegra114.c
@@ -984,17 +984,6 @@ static int tegra_spi_setup(struct spi_device *spi)
 	return 0;
 }
 
-static void tegra_spi_transfer_delay(int delay)
-{
-	if (!delay)
-		return;
-
-	if (delay >= 1000)
-		mdelay(delay / 1000);
-
-	udelay(delay % 1000);
-}
-
 static void tegra_spi_transfer_end(struct spi_device *spi)
 {
 	struct tegra_spi_data *tspi = spi_master_get_devdata(spi->master);
@@ -1098,7 +1087,7 @@ static int tegra_spi_transfer_one_message(struct spi_master *master,
 complete_xfer:
 		if (ret < 0 || skip) {
 			tegra_spi_transfer_end(spi);
-			tegra_spi_transfer_delay(xfer->delay_usecs);
+			spi_transfer_delay_exec(xfer);
 			goto exit;
 		} else if (list_is_last(&xfer->transfer_list,
 					&msg->transfers)) {
@@ -1106,11 +1095,11 @@ static int tegra_spi_transfer_one_message(struct spi_master *master,
 				tspi->cs_control = spi;
 			else {
 				tegra_spi_transfer_end(spi);
-				tegra_spi_transfer_delay(xfer->delay_usecs);
+				spi_transfer_delay_exec(xfer);
 			}
 		} else if (xfer->cs_change) {
 			tegra_spi_transfer_end(spi);
-			tegra_spi_transfer_delay(xfer->delay_usecs);
+			spi_transfer_delay_exec(xfer);
 		}
 
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

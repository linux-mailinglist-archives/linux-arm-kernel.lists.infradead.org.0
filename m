Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E936DC32D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=9Ke0rTwbUfuvpwYhgYGDmmRyTD8um4CBSieLvuYJkDU=; b=g2b
	IG4RYCbzrq3oBck8W9Lj+3bKQNYx4xa9qq1XnX/a8HLZ0iH7OIeuo4A1T6SVP6ZcspXGZSJz9n1N8
	I91tQjygAVtWkKaNN24++q4Esb/pj4FoBGaAsc/PW7QzRAevhkb6wxUo9QEtIThmfWcPUvnuQIBh3
	Ezo+qoGt+/bGIigs55XSU+ycq33jAkwzoHGZTcwA8VP+NDq+YD3csYYK564yD4aQJF+C3kOhHUhoW
	ys0r7Kgb0TRyN9HOeUbn1bdMO7Ez0WjqcJzOCuLrwcVcstT6VVthxOkMv7gmQtbOh/Z8OqowtJ3LX
	YvW0vK/Z8cQPJlJUttmnjriPsKbDDpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGZ7-0001IC-UT; Tue, 01 Oct 2019 11:43:37 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGWk-0007RY-I4
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 11:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=JiGt1yEYk797Tl22LhrJU1LZAH62oQR2ZxhFZ2ZqV0E=; b=hY9FQG+jAY/Y
 ICgMK59EI959H2L3JegmSaTZIq+jueOkE/8wTjpywqp9DsF72hkrSn/eSIKP50ZwpfLJEGok0y6kA
 1erNSm+PjNRZOyLrj8JbI3xisVrGVf5e0Z/6FoZWSOc/0tBhi/5JY9Hzm1MBz83FCyXeCNAQiBAda
 kjLxI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFGWh-0004Yt-B1; Tue, 01 Oct 2019 11:41:07 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C716F27429C0; Tue,  1 Oct 2019 12:41:06 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Applied "spi: mxic: Ensure width is respected in spi-mem operations"
 to the spi tree
In-Reply-To: <20190919202504.9619-2-miquel.raynal@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20191001114106.C716F27429C0@ypsilon.sirena.org.uk>
Date: Tue,  1 Oct 2019 12:41:06 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_044110_750140_744BCF80 
X-CRM114-Status: GOOD (  14.46  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Boris Brezillon <bbrezillon@kernel.org>, Julien Su <juliensu@mxic.com.tw>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: mxic: Ensure width is respected in spi-mem operations

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

From 539ff2488af87f25f2c090fd74ced55bd966e5a9 Mon Sep 17 00:00:00 2001
From: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Thu, 19 Sep 2019 22:25:02 +0200
Subject: [PATCH] spi: mxic: Ensure width is respected in spi-mem operations

Make use of a core helper to ensure the desired width is respected
when calling spi-mem operators.

Suggested-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Link: https://lore.kernel.org/r/20190919202504.9619-2-miquel.raynal@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-mxic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-mxic.c b/drivers/spi/spi-mxic.c
index f48563c09b97..409bfa163647 100644
--- a/drivers/spi/spi-mxic.c
+++ b/drivers/spi/spi-mxic.c
@@ -346,7 +346,7 @@ static bool mxic_spi_mem_supports_op(struct spi_mem *mem,
 	if (op->addr.nbytes > 7)
 		return false;
 
-	return true;
+	return spi_mem_default_supports_op(mem, op);
 }
 
 static int mxic_spi_mem_exec_op(struct spi_mem *mem,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

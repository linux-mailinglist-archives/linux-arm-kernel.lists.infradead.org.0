Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C86D3F52CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:46:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=DtclnLBNk4SVBArmVvbg3SfJNW+5kx/INUZlpGHP/Po=; b=eWn
	s3TYnuk2MPe9ezO52U7X82U0FJeB0zGKm7T7iTS34DrspVdCzeiv2K51qQ3oxWdxm+FHSRJM2H+Fe
	zZcQRJs7rQBj4HGJfUlN77Hsfitl1YLJ4BVYV4tm/0kd4ZnOHJlErKLVFEGBDw2HHXLfN/N6kYWw1
	YYQuCAQYnqR11a1M69VaV6UlCvGnuJ75FXroZYEsDFLI1pZsNpnHwsTl+408R27FKdF09sIZ69+o5
	bjyGr7lkURoLG1xwRn1XWyVNF3vMljwybin+FoLp3mQyd3noGBOvhza7qDRAkcF5Tgrb4id9fD4qb
	oJJ3P+AoF5tJICZeZy1+Ob6tCUpAhiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8Kd-0000pP-Eu; Fri, 08 Nov 2019 17:45:59 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8KQ-0000nh-DJ
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:45:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=YYCLXF1oV8zvZZPrT6FMd2ouZinjg9kcL02wPvjPTa0=; b=QqUEIz7ASjCq
 Y1G40/SoHQanp4IfjnQKuusLELLpSY0tlfPzkcjOLuCon/4cdEX+doAMONovMx2X0gDJb9xlV4dzp
 nM3sZLPyKRTDJSC0n/HLisSZbHLnXAhC4tvbyxxvD64b1K6wKWtqZQCLEaN9J0FvgxMXrnAhAYelt
 pqVk4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT8KO-0007qL-9G; Fri, 08 Nov 2019 17:45:44 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id B52C92741704; Fri,  8 Nov 2019 17:45:43 +0000 (GMT)
From: Mark Brown <broonie@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Applied "spi: zynq-qspi: Enhance the Linear CFG bit definitions" to
 the spi tree
In-Reply-To: <20191108140744.1734-5-miquel.raynal@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20191108174543.B52C92741704@ypsilon.sirena.org.uk>
Date: Fri,  8 Nov 2019 17:45:43 +0000 (GMT)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_094546_551990_E7596F4A 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: zynq-qspi: Enhance the Linear CFG bit definitions

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

From 044ac826200f08adebe3207a618d829279e9f3b1 Mon Sep 17 00:00:00 2001
From: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Fri, 8 Nov 2019 15:07:41 +0100
Subject: [PATCH] spi: zynq-qspi: Enhance the Linear CFG bit definitions

Using masks makes sense when manipulating fields of several bits. When
only one bit is involved, it is usual to just use the BIT() macro but
in this case using the term mask is abusive. Fix the #define macros
and their comments.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Link: https://lore.kernel.org/r/20191108140744.1734-5-miquel.raynal@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-zynq-qspi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 530533b6c974..70ecefd817f7 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -98,9 +98,9 @@
  * It is named Linear Configuration but it controls other modes when not in
  * linear mode also.
  */
-#define ZYNQ_QSPI_LCFG_TWO_MEM_MASK	BIT(30) /* LQSPI Two memories Mask */
-#define ZYNQ_QSPI_LCFG_SEP_BUS_MASK	BIT(29) /* LQSPI Separate bus Mask */
-#define ZYNQ_QSPI_LCFG_U_PAGE_MASK	BIT(28) /* LQSPI Upper Page Mask */
+#define ZYNQ_QSPI_LCFG_TWO_MEM		BIT(30) /* LQSPI Two memories */
+#define ZYNQ_QSPI_LCFG_SEP_BUS		BIT(29) /* LQSPI Separate bus */
+#define ZYNQ_QSPI_LCFG_U_PAGE		BIT(28) /* LQSPI Upper Page */
 
 #define ZYNQ_QSPI_LCFG_DUMMY_SHIFT	8
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

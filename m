Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25E1B8203
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:57:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcY5RDPPgbf4yMuICDE+LoAL8XU4GOGFsgL/wh+iSWs=; b=tMqnPSD64nhRs7
	ewxQTmSwwAR3NapHMvC6UJ1Rf+NNFM7w2mlcEBujSVadNdIIdseGkAlVZrnQLr2wQWrbmRQD5dzU5
	f0cR6yu7+PJCZftJpINaqySBteVdY0JbVpLrMtULrs+b24ubGD4RkApDVqRd0BYfEhXI+iheos4HV
	Lqy7J0KyRP0814XBdPS29x7dcVmjmyV0EUmSFMfWMRE4XByhs5319tw/iWJDuoUJ/TE4obyPO4x5T
	T2buC0nStquoJCcammLl/rh3T0IHM0m64Q0UOe2IH9Pn1zJ01v3CYppxeTj/2zce2ziI6fvKdi9Vo
	exvRL93Whfh6lsCemsqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2Y1-0001yV-D4; Thu, 19 Sep 2019 19:57:01 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2Au-0002mz-Mv; Thu, 19 Sep 2019 19:33:11 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 35077240007;
 Thu, 19 Sep 2019 19:33:05 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 38/40] mtd: spinand: Allow the case where there is no ECC
 engine
Date: Thu, 19 Sep 2019 21:31:38 +0200
Message-Id: <20190919193141.7865-39-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123310_530551_EE09BB5D 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even if this is not supposed to happen, there is no reason to fail the
probe if it was explicitly requested to use no ECC engine at all (for
instance, during development). This condition is met by just
commenting out the error on the OOB free bytes count after the
assignation of an ECC engine if none was provided (any other situation
would error out much earlier anyway).

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/spi/core.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/spi/core.c b/drivers/mtd/nand/spi/core.c
index 36b99f68da81..314cbdad1462 100644
--- a/drivers/mtd/nand/spi/core.c
+++ b/drivers/mtd/nand/spi/core.c
@@ -1129,9 +1129,11 @@ static int spinand_init(struct spinand_device *spinand)
 	mtd->_erase = spinand_mtd_erase;
 	mtd->_max_bad_blocks = nanddev_mtd_max_bad_blocks;
 
-	ret = mtd_ooblayout_count_freebytes(mtd);
-	if (ret < 0)
-		goto err_cleanup_ecc_engine;
+	if (nand->ecc.engine) {
+		ret = mtd_ooblayout_count_freebytes(mtd);
+		if (ret < 0)
+			goto err_cleanup_ecc_engine;
+	}
 
 	mtd->oobavail = ret;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

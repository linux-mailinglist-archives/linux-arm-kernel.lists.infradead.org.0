Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBD2F4DCC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:08:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTsWRYg8RrCOlvn3HmDQMIo9AF+5SspnEZyKrz8CJ08=; b=CcCvkGv3pX1IDJ
	DA7Pzrup+FHMxbGUfRQdePgAwuGEom4VYvyFhrNblgXc6FPXwHu3dWD9m5qg5v8y3bVBJKajdb7xv
	/9nOPZJzMcvdvmt/E7yOk5uJf3X1QRiXzGLzWJtZl5b3Ak2nXJHgmN7SXy7rm0GIC1k5AQ+NVFAiJ
	g4oUzebgecg2L2f5CWumwGBRGwGggM05GhpIcuufb0ZNHwu9g0vNNiI0wmjxU3pyEgDMb+NrnP3f2
	sj6oufG98yyjJjCrVuznWOtp5n9fnlgl62CMRl3hVyBh1549MuSxJArOyRg2LpsPrjWzvDCRP+kBV
	cRVLI9BtFouZFj7hPQGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4wU-0006vm-72; Fri, 08 Nov 2019 14:08:50 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4w5-0006me-2U
 for linux-arm-kernel@bombadil.infradead.org; Fri, 08 Nov 2019 14:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uADukR/qjRRTeD2EWNfE15sniF6OQFg9fHQRvsVzUOM=; b=fSZPEVTayi/Ah17FnnljB/KOnc
 zGo6Dq/C90da1eHtGeuiube4Iz21DKxHtpOFJMix4pZ7uNWVcksyNpQ6VwgTuMFse5ZPUaX41LqCc
 O0Q1HZwpyGJxbv+5bIswoUxyWpQWek4LXWnZwwZvPpTAL8Ms4vE0nStLmsJY9Pwz0C7QVMX3FaeyN
 DbEllkNFtC1RrjglirKqt1NB1fEGrIkIrHJ+YBRjiU483WUGVvsLxyiyxlyj5m7iQ6CpJKvbroiDZ
 Z8CUpFW8V99HxPhuviH2wfeP0fYTsQtCYt+8Xd8qEmHGWJn9Kstvb3scyRjrE8HyTQl51EdEM1rZD
 YbRR/oVA==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4w1-00044u-PY
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:08:23 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost.localdomain
 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr [86.206.246.123])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 26DDC2000E;
 Fri,  8 Nov 2019 14:07:50 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: [PATCH v2 4/7] spi: zynq-qspi: Enhance the Linear CFG bit definitions
Date: Fri,  8 Nov 2019 15:07:41 +0100
Message-Id: <20191108140744.1734-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108140744.1734-1-miquel.raynal@bootlin.com>
References: <20191108140744.1734-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using masks makes sense when manipulating fields of several bits. When
only one bit is involved, it is usual to just use the BIT() macro but
in this case using the term mask is abusive. Fix the #define macros
and their comments.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/spi/spi-zynq-qspi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 78711fe955f4..1151443ec830 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -99,9 +99,9 @@
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

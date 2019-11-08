Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232A6F4539
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Wnd/33ga71bUwintQ1ME80WiNmcWrCKiMRINOJbzFw=; b=LDAAxu+F1rKum3
	3LwyxlOujcAkDQxIBRb9POBh1VgJ5Bm0pHmOwJeoXF6EleqHi1R0GXtxl9dYRfEN0FGuh7lyqb1Ga
	If5hQrcYXdcrJ99v2gjHfVStJ1BUmiBnbLZbzfhzho3bfiyoAwmqgQMtjaPyL/jvXKFlkqVUBvOna
	GWyg7cdS6rjDdvsFxCKr6iEiRTvjYbPXZBtQBv2t9i1Sh5GhmxpHPBGyOXTSHCjxN0hTeeSOMRgne
	UBkO7T1e6nbbCvzoJ3lircAeZGbh7X9MrCSFdcogOcn8f90Yd1wuLeAquzlCe7y+LUS1f9Y8LKzlz
	kD9rGYY7pFXEj7b6WHyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT20Y-0007TN-Mz; Fri, 08 Nov 2019 11:00:50 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1zL-0005Fh-BK
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:59:39 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost.localdomain
 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr [86.206.246.123])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id E13E7E0009;
 Fri,  8 Nov 2019 10:59:26 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: [PATCH 4/7] spi: zynq-qspi: Enhance the Linear CFG bit definitions
Date: Fri,  8 Nov 2019 11:59:17 +0100
Message-Id: <20191108105920.19014-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108105920.19014-1-miquel.raynal@bootlin.com>
References: <20191108105920.19014-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_025935_551615_AAD7350E 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
only one bit is involved, let's just use the BIT() macro to define the
actual bit instead of the needed shift to obtain it and use a better
naming.

These definitions will be used in a following change.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/spi/spi-zynq-qspi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 11a484aa3186..34c24b2ad3cf 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -99,9 +99,9 @@
  * It is named Linear Configuration but it controls other modes when not in
  * linear mode also.
  */
-#define ZYNQ_QSPI_LCFG_TWO_MEM_MASK	0x40000000 /* LQSPI Two memories Mask */
-#define ZYNQ_QSPI_LCFG_SEP_BUS_MASK	0x20000000 /* LQSPI Separate bus Mask */
-#define ZYNQ_QSPI_LCFG_U_PAGE_MASK	0x10000000 /* LQSPI Upper Page Mask */
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

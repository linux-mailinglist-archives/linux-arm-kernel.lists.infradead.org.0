Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B281E0A20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nugZ50A7lgJXsYN23bVe+mCjtw07d4LMyJCZ0rJwSY=; b=FfrGCF6cHuKBb9
	RHTRzprQdo68ZdIOUDNUbMVpKXFIu367Ttu4WVZvtFUQp42aUx3Y7zC6oW3ZcqoEOXL3/Nd5WVecH
	bdmwov0hby2JSV7SZWJrp9BQSo5bWsO/iiuG/HKM5tJU1IJ6uuaqwUhNFXbsZi44rtbNt3KeeUzCA
	pSXurrXUYwkxbQeYA+gJ/1vPRyHsI6jVlKOg/kbW/iA2KZ21b8WqOKBEIctudu8uQJlnN65+9Iltd
	7U4JfnWO5JSMkWNpKxhUz4JKSFzydnB4PHMdC9ot3ySkGf3ENGGA52hKJ+VcWk/dEtqEscLx9SO4G
	mLtESNfd/j32Rx8V3PlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9GL-0000ID-Vf; Mon, 25 May 2020 09:19:14 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9Dq-000708-AW; Mon, 25 May 2020 09:16:40 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04P9GXcW076791;
 Mon, 25 May 2020 04:16:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590398193;
 bh=8K6Hk7FrLWI1boqhr4C9OTCbcKtjazHQjF3DkT1oCNs=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=g94po4MP3T3ES6/gRZ5BJUmPQeDOhztlEzHncDZwd0xuXIfZ6QD208lS42teYXJrG
 Ccdc705KpYeQEqXHuH2/7OD8hlzHmxtMR1gcatHJxTAXN3s9+2zPFtLmYrNkq6F4vQ
 FRO9T5mvH6Ae6u89H129eouLik+PUexI1wkCu8xI=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04P9GXjE018232;
 Mon, 25 May 2020 04:16:33 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 25
 May 2020 04:16:02 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 25 May 2020 04:16:02 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04P9FjA2034800;
 Mon, 25 May 2020 04:15:57 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-spi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Subject: [PATCH v9 02/19] spi: spi-mem: allow specifying a command's extension
Date: Mon, 25 May 2020 14:45:27 +0530
Message-ID: <20200525091544.17270-3-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200525091544.17270-1-p.yadav@ti.com>
References: <20200525091544.17270-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_021638_459522_2E1EA63C 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mason Yang <masonccyang@mxic.com.tw>,
 Boris Brezillon <boris.brezillon@collabora.com>, Sekhar Nori <nsekhar@ti.com>,
 Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In xSPI mode, flashes expect 2-byte opcodes. The second byte is called
the "command extension". There can be 3 types of extensions in xSPI:
repeat, invert, and hex. When the extension type is "repeat", the same
opcode is sent twice. When it is "invert", the second byte is the
inverse of the opcode. When it is "hex" an additional opcode byte based
is sent with the command whose value can be anything.

So, make opcode a 16-bit value and add a 'nbytes', similar to how
multiple address widths are handled.

Some places use sizeof(op->cmd.opcode). Replace them with op->cmd.nbytes

The spi-mxic and spi-zynq-qspi drivers directly use op->cmd.opcode as a
buffer. Now that opcode is a 2-byte field, this can result in different
behaviour depending on if the machine is little endian or big endian.
Extract the opcode in a local 1-byte variable and use that as the buffer
instead. Both these drivers would reject multi-byte opcodes in their
supports_op() hook anyway, so we only need to worry about single-byte
opcodes for now.

The above two changes are put in this commit to keep the series
bisectable.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/spi/spi-mem.c       | 13 +++++++------
 drivers/spi/spi-mtk-nor.c   |  4 ++--
 drivers/spi/spi-mxic.c      |  3 ++-
 drivers/spi/spi-zynq-qspi.c | 11 ++++++-----
 include/linux/spi/spi-mem.h |  6 +++++-
 5 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/drivers/spi/spi-mem.c b/drivers/spi/spi-mem.c
index 93e255287ab9..ef53290b7d24 100644
--- a/drivers/spi/spi-mem.c
+++ b/drivers/spi/spi-mem.c
@@ -159,6 +159,9 @@ bool spi_mem_default_supports_op(struct spi_mem *mem,
 	if (op->cmd.dtr || op->addr.dtr || op->dummy.dtr || op->data.dtr)
 		return false;
 
+	if (op->cmd.nbytes != 1)
+		return false;
+
 	return true;
 }
 EXPORT_SYMBOL_GPL(spi_mem_default_supports_op);
@@ -173,7 +176,7 @@ static bool spi_mem_buswidth_is_valid(u8 buswidth)
 
 static int spi_mem_check_op(const struct spi_mem_op *op)
 {
-	if (!op->cmd.buswidth)
+	if (!op->cmd.buswidth || !op->cmd.nbytes)
 		return -EINVAL;
 
 	if ((op->addr.nbytes && !op->addr.buswidth) ||
@@ -309,8 +312,7 @@ int spi_mem_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
 			return ret;
 	}
 
-	tmpbufsize = sizeof(op->cmd.opcode) + op->addr.nbytes +
-		     op->dummy.nbytes;
+	tmpbufsize = op->cmd.nbytes + op->addr.nbytes + op->dummy.nbytes;
 
 	/*
 	 * Allocate a buffer to transmit the CMD, ADDR cycles with kmalloc() so
@@ -325,7 +327,7 @@ int spi_mem_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
 
 	tmpbuf[0] = op->cmd.opcode;
 	xfers[xferpos].tx_buf = tmpbuf;
-	xfers[xferpos].len = sizeof(op->cmd.opcode);
+	xfers[xferpos].len = op->cmd.nbytes;
 	xfers[xferpos].tx_nbits = op->cmd.buswidth;
 	spi_message_add_tail(&xfers[xferpos], &msg);
 	xferpos++;
@@ -427,8 +429,7 @@ int spi_mem_adjust_op_size(struct spi_mem *mem, struct spi_mem_op *op)
 		return ctlr->mem_ops->adjust_op_size(mem, op);
 
 	if (!ctlr->mem_ops || !ctlr->mem_ops->exec_op) {
-		len = sizeof(op->cmd.opcode) + op->addr.nbytes +
-		      op->dummy.nbytes;
+		len = op->cmd.nbytes + op->addr.nbytes + op->dummy.nbytes;
 
 		if (len > spi_max_transfer_size(mem->spi))
 			return -EINVAL;
diff --git a/drivers/spi/spi-mtk-nor.c b/drivers/spi/spi-mtk-nor.c
index 7bc302b50396..d5f393871619 100644
--- a/drivers/spi/spi-mtk-nor.c
+++ b/drivers/spi/spi-mtk-nor.c
@@ -195,7 +195,7 @@ static int mtk_nor_adjust_op_size(struct spi_mem *mem, struct spi_mem_op *op)
 		}
 	}
 
-	len = MTK_NOR_PRG_MAX_SIZE - sizeof(op->cmd.opcode) - op->addr.nbytes -
+	len = MTK_NOR_PRG_MAX_SIZE - op->cmd.nbytes - op->addr.nbytes -
 	      op->dummy.nbytes;
 	if (op->data.nbytes > len)
 		op->data.nbytes = len;
@@ -219,7 +219,7 @@ static bool mtk_nor_supports_op(struct spi_mem *mem,
 			       (op->dummy.buswidth == 0) &&
 			       (op->data.buswidth == 1);
 	}
-	len = sizeof(op->cmd.opcode) + op->addr.nbytes + op->dummy.nbytes;
+	len = op->cmd.nbytes + op->addr.nbytes + op->dummy.nbytes;
 	if ((len > MTK_NOR_PRG_MAX_SIZE) ||
 	    ((op->data.nbytes) && (len == MTK_NOR_PRG_MAX_SIZE)))
 		return false;
diff --git a/drivers/spi/spi-mxic.c b/drivers/spi/spi-mxic.c
index 69491f3a515d..8c630acb0110 100644
--- a/drivers/spi/spi-mxic.c
+++ b/drivers/spi/spi-mxic.c
@@ -356,6 +356,7 @@ static int mxic_spi_mem_exec_op(struct spi_mem *mem,
 	int nio = 1, i, ret;
 	u32 ss_ctrl;
 	u8 addr[8];
+	u8 opcode = op->cmd.opcode;
 
 	ret = mxic_spi_set_freq(mxic, mem->spi->max_speed_hz);
 	if (ret)
@@ -393,7 +394,7 @@ static int mxic_spi_mem_exec_op(struct spi_mem *mem,
 	writel(readl(mxic->regs + HC_CFG) | HC_CFG_MAN_CS_ASSERT,
 	       mxic->regs + HC_CFG);
 
-	ret = mxic_spi_data_xfer(mxic, &op->cmd.opcode, NULL, 1);
+	ret = mxic_spi_data_xfer(mxic, &opcode, NULL, 1);
 	if (ret)
 		goto out;
 
diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 17641157354d..bbf3d90561f5 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -527,20 +527,21 @@ static int zynq_qspi_exec_mem_op(struct spi_mem *mem,
 	struct zynq_qspi *xqspi = spi_controller_get_devdata(mem->spi->master);
 	int err = 0, i;
 	u8 *tmpbuf;
+	u8 opcode = op->cmd.opcode;
 
 	dev_dbg(xqspi->dev, "cmd:%#x mode:%d.%d.%d.%d\n",
-		op->cmd.opcode, op->cmd.buswidth, op->addr.buswidth,
+		opcode, op->cmd.buswidth, op->addr.buswidth,
 		op->dummy.buswidth, op->data.buswidth);
 
 	zynq_qspi_chipselect(mem->spi, true);
 	zynq_qspi_config_op(xqspi, mem->spi);
 
-	if (op->cmd.opcode) {
+	if (op->cmd.nbytes) {
 		reinit_completion(&xqspi->data_completion);
-		xqspi->txbuf = (u8 *)&op->cmd.opcode;
+		xqspi->txbuf = &opcode;
 		xqspi->rxbuf = NULL;
-		xqspi->tx_bytes = sizeof(op->cmd.opcode);
-		xqspi->rx_bytes = sizeof(op->cmd.opcode);
+		xqspi->tx_bytes = op->cmd.nbytes;
+		xqspi->rx_bytes = op->cmd.nbytes;
 		zynq_qspi_write_op(xqspi, ZYNQ_QSPI_FIFO_DEPTH, true);
 		zynq_qspi_write(xqspi, ZYNQ_QSPI_IEN_OFFSET,
 				ZYNQ_QSPI_IXR_RXTX_MASK);
diff --git a/include/linux/spi/spi-mem.h b/include/linux/spi/spi-mem.h
index e3dcb956bf61..159463cc659c 100644
--- a/include/linux/spi/spi-mem.h
+++ b/include/linux/spi/spi-mem.h
@@ -17,6 +17,7 @@
 	{							\
 		.buswidth = __buswidth,				\
 		.opcode = __opcode,				\
+		.nbytes = 1,					\
 	}
 
 #define SPI_MEM_OP_ADDR(__nbytes, __val, __buswidth)		\
@@ -69,6 +70,8 @@ enum spi_mem_data_dir {
 
 /**
  * struct spi_mem_op - describes a SPI memory operation
+ * @cmd.nbytes: number of opcode bytes (only 1 or 2 are valid). The opcode is
+ *		sent MSB-first.
  * @cmd.buswidth: number of IO lines used to transmit the command
  * @cmd.opcode: operation opcode
  * @cmd.dtr: whether the command opcode should be sent in DTR mode or not
@@ -94,9 +97,10 @@ enum spi_mem_data_dir {
  */
 struct spi_mem_op {
 	struct {
+		u8 nbytes;
 		u8 buswidth;
 		u8 dtr : 1;
-		u8 opcode;
+		u16 opcode;
 	} cmd;
 
 	struct {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

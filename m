Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E55184BD0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:56:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIPVJ3lqMx4Z+C1WgOKzM+MhrdkD0wBhagD2uhwmb/o=; b=PNM9leidZRmXbm
	eM3E8OtrKK5RiuI28Oh77GVDEFl8IIBe6zU1Jwsat7AoBMs8Pbd47I9MUuLJTPkm1EC57PcmBVwY6
	Lz8QR6qvcjrlwBi+oZi8pojbsUNnetm31UHBCctIxsi1Q1rU3TCuSyBExigQkhTf5lgLg3ywWONH2
	72szAxl0VFMGaXFOPZ56uLCgKEOjhOFqq4GyIY7koprehxX9Z7AivUeM2ko3mUZqSF7AVuZfqelwq
	1bPsJVj0WxjI6Hmkt8Un4zZZDeIZh7XzArFmFizx68zUBzgRxc1xdWbeUiJ6ynKbP54Bkfksh5NG7
	SwMkPYBHjv3l/pF5pmgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmfq-00020e-0K; Fri, 13 Mar 2020 15:56:34 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmWl-0008Vf-EX; Fri, 13 Mar 2020 15:47:23 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02DFl7ss061762;
 Fri, 13 Mar 2020 10:47:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584114427;
 bh=fTQL2lTnejAzHLVUDaFN1mlJKxbYFuJ+23X39DpHiho=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=v/XaiUFLQw0m6KMWckjTBHm0Rqvr5bkQ3dK8BO6QXMhr2I5+xNnLiV5C/g1+Lw8/J
 nJBQ1b+YaLfBPGWNmGIJkD5b4ugrNp2wbMLftka8I1YOV6x448u4EYWw/hc6UlHRjD
 mi5mDWtK8ja8OrKrKGXJDUPJ3FwxlZMQ/ZbNr+K4=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02DFl7p4090357
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 13 Mar 2020 10:47:07 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Mar 2020 10:47:07 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Mar 2020 10:47:07 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02DFkkSI034352;
 Fri, 13 Mar 2020 10:47:03 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>
Subject: [PATCH v3 04/12] mtd: spi-nor: add support for DTR protocol
Date: Fri, 13 Mar 2020 21:16:37 +0530
Message-ID: <20200313154645.29293-5-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200313154645.29293-1-p.yadav@ti.com>
References: <20200313154645.29293-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084711_664212_37ABDAB4 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-mtd@lists.infradead.org,
 Pratyush Yadav <p.yadav@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Double Transfer Rate (DTR) is SPI protocol in which data is transferred
on each clock edge as opposed to on each clock cycle. Make
framework-level changes to allow supporting flashes in DTR mode.

Right now, mixed DTR modes are not supported. So, for example a mode
like 4S-4D-4D will not work. All phases need to be either DTR or STR.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 305 +++++++++++++++++++++++++++-------
 include/linux/mtd/spi-nor.h   |  50 ++++--
 2 files changed, 278 insertions(+), 77 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index caf0c109cca0..9e0724f2a825 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -238,6 +238,7 @@ struct flash_info {
 					 * status register. Must be used with
 					 * SPI_NOR_HAS_TB.
 					 */
+#define SPI_NOR_OCTAL_DTR_READ	BIT(18)	/* Flash supports octal DTR Read. */
 
 	/* Part specific fixup hooks. */
 	const struct spi_nor_fixups *fixups;
@@ -245,6 +246,76 @@ struct flash_info {
 
 #define JEDEC_MFR(info)	((info)->id[0])
 
+/**
+ * spi_nor_get_cmd_ext() - Get the command opcode extension based on the
+ *			   extension type.
+ * @nor:		pointer to a 'struct spi_nor'
+ * @op:			pointer to the 'struct spi_mem_op' whose properties
+ *			need to be initialized.
+ *
+ * Right now, only "repeat" and "invert" are supported.
+ *
+ * Return: The opcode extension.
+ */
+static u8 spi_nor_get_cmd_ext(const struct spi_nor *nor,
+			      const struct spi_mem_op *op)
+{
+	switch (nor->cmd_ext_type) {
+	case SPI_NOR_EXT_INVERT:
+		return ~op->cmd.opcode;
+
+	case SPI_NOR_EXT_REPEAT:
+		return op->cmd.opcode;
+
+	default:
+		dev_err(nor->dev, "Unknown command extension type\n");
+		return 0;
+	}
+}
+
+/**
+ * spi_nor_spimem_setup_op() - Set up common properties of a spi-mem op.
+ * @nor:		pointer to a 'struct spi_nor'
+ * @op:			pointer to the 'struct spi_mem_op' whose properties
+ *			need to be initialized.
+ * @proto:		the protocol from which the properties need to be set.
+ */
+static void spi_nor_spimem_setup_op(const struct spi_nor *nor,
+				    struct spi_mem_op *op,
+				    const enum spi_nor_protocol proto)
+{
+	u8 ext;
+
+	op->cmd.buswidth = spi_nor_get_protocol_inst_nbits(proto);
+
+	if (op->addr.nbytes)
+		op->addr.buswidth = spi_nor_get_protocol_addr_nbits(proto);
+
+	if (op->dummy.nbytes)
+		op->dummy.buswidth = spi_nor_get_protocol_addr_nbits(proto);
+
+	if (op->data.buf.in || op->data.buf.out)
+		op->data.buswidth = spi_nor_get_protocol_data_nbits(proto);
+
+	if (spi_nor_protocol_is_dtr(proto)) {
+		/*
+		 * spi-mem supports mixed DTR modes, but right now we can only
+		 * have all phases either DTR or STR. IOW, spi-mem can have
+		 * something like 4S-4D-4D, but spi-nor can't. So, set all 4
+		 * phases to either DTR or STR.
+		 */
+		op->cmd.dtr = op->addr.dtr = op->dummy.dtr
+			       = op->data.dtr = true;
+
+		/* 2 bytes per clock cycle in DTR mode. */
+		op->dummy.nbytes *= 2;
+
+		ext = spi_nor_get_cmd_ext(nor, op);
+		op->cmd.opcode = (op->cmd.opcode << 8) | ext;
+		op->cmd.nbytes = 2;
+	}
+}
+
 /**
  * spi_nor_spimem_bounce() - check if a bounce buffer is needed for the data
  *                           transfer
@@ -309,14 +380,12 @@ static ssize_t spi_nor_spimem_read_data(struct spi_nor *nor, loff_t from,
 	ssize_t nbytes;
 	int error;
 
-	/* get transfer protocols. */
-	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->read_proto);
-	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->read_proto);
-	op.dummy.buswidth = op.addr.buswidth;
-	op.data.buswidth = spi_nor_get_protocol_data_nbits(nor->read_proto);
+	spi_nor_spimem_setup_op(nor, &op, nor->read_proto);
 
 	/* convert the dummy cycles to the number of bytes */
 	op.dummy.nbytes = (nor->read_dummy * op.dummy.buswidth) / 8;
+	if (spi_nor_protocol_is_dtr(nor->read_proto))
+		op.dummy.nbytes *= 2;
 
 	usebouncebuf = spi_nor_spimem_bounce(nor, &op);
 
@@ -375,13 +444,11 @@ static ssize_t spi_nor_spimem_write_data(struct spi_nor *nor, loff_t to,
 	ssize_t nbytes;
 	int error;
 
-	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->write_proto);
-	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->write_proto);
-	op.data.buswidth = spi_nor_get_protocol_data_nbits(nor->write_proto);
-
 	if (nor->program_opcode == SPINOR_OP_AAI_WP && nor->sst_write_second)
 		op.addr.nbytes = 0;
 
+	spi_nor_spimem_setup_op(nor, &op, nor->write_proto);
+
 	if (spi_nor_spimem_bounce(nor, &op))
 		memcpy(nor->bouncebuf, buf, op.data.nbytes);
 
@@ -433,10 +500,16 @@ static int spi_nor_write_enable(struct spi_nor *nor)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_NO_DATA);
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WREN,
-						     NULL, 0);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->write_reg(nor,
+							     SPINOR_OP_WREN,
+							     NULL, 0);
 	}
 
 	if (ret)
@@ -462,10 +535,16 @@ static int spi_nor_write_disable(struct spi_nor *nor)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_NO_DATA);
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRDI,
-						     NULL, 0);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->write_reg(nor,
+							     SPINOR_OP_WRDI,
+							     NULL, 0);
 	}
 
 	if (ret)
@@ -524,10 +603,15 @@ static int spi_nor_read_fsr(struct spi_nor *nor, u8 *fsr)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_DATA_IN(1, fsr, 1));
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDFSR,
-						    fsr, 1);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDFSR,
+							    fsr, 1);
 	}
 
 	if (ret)
@@ -556,9 +640,15 @@ static int spi_nor_read_cr(struct spi_nor *nor, u8 *cr)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_DATA_IN(1, cr, 1));
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDCR, cr, 1);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDCR,
+							    cr, 1);
 	}
 
 	if (ret)
@@ -589,12 +679,17 @@ static int macronix_set_4byte(struct spi_nor *nor, bool enable)
 				  SPI_MEM_OP_NO_DUMMY,
 				  SPI_MEM_OP_NO_DATA);
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->write_reg(nor,
-						     enable ? SPINOR_OP_EN4B :
-							      SPINOR_OP_EX4B,
-						     NULL, 0);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->write_reg(nor,
+						enable ? SPINOR_OP_EN4B :
+							 SPINOR_OP_EX4B,
+						NULL, 0);
 	}
 
 	if (ret)
@@ -647,10 +742,15 @@ static int spansion_set_4byte(struct spi_nor *nor, bool enable)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_DATA_OUT(1, nor->bouncebuf, 1));
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_BRWR,
-						     nor->bouncebuf, 1);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->write_reg(nor, SPINOR_OP_BRWR,
+							     nor->bouncebuf, 1);
 	}
 
 	if (ret)
@@ -679,10 +779,16 @@ static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_DATA_OUT(1, nor->bouncebuf, 1));
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WREAR,
-						     nor->bouncebuf, 1);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->write_reg(nor,
+							     SPINOR_OP_WREAR,
+							     nor->bouncebuf, 1);
 	}
 
 	if (ret)
@@ -742,10 +848,16 @@ static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_DATA_IN(1, sr, 1));
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_XRDSR,
-						    sr, 1);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->read_reg(nor,
+							    SPINOR_OP_XRDSR,
+							    sr, 1);
 	}
 
 	if (ret)
@@ -787,10 +899,16 @@ static void spi_nor_clear_sr(struct spi_nor *nor)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_NO_DATA);
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_CLSR,
-						     NULL, 0);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->write_reg(nor,
+							     SPINOR_OP_CLSR,
+							     NULL, 0);
 	}
 
 	if (ret)
@@ -840,10 +958,16 @@ static void spi_nor_clear_fsr(struct spi_nor *nor)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_NO_DATA);
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_CLFSR,
-						     NULL, 0);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->write_reg(nor,
+							     SPINOR_OP_CLFSR,
+							     NULL, 0);
 	}
 
 	if (ret)
@@ -973,10 +1097,16 @@ static int spi_nor_write_sr(struct spi_nor *nor, const u8 *sr, size_t len)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_DATA_OUT(len, sr, 1));
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
-						     sr, len);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->write_reg(nor,
+							     SPINOR_OP_WRSR,
+							     sr, len);
 	}
 
 	if (ret) {
@@ -1175,10 +1305,16 @@ static int spi_nor_write_sr2(struct spi_nor *nor, const u8 *sr2)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_DATA_OUT(1, sr2, 1));
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR2,
-						     sr2, 1);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->write_reg(nor,
+							     SPINOR_OP_WRSR2,
+							     sr2, 1);
 	}
 
 	if (ret) {
@@ -1209,10 +1345,16 @@ static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_DATA_IN(1, sr2, 1));
 
+		spi_nor_spimem_setup_op(nor, &op, nor->reg_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR2,
-						    sr2, 1);
+		if (spi_nor_protocol_is_dtr(nor->reg_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->read_reg(nor,
+							    SPINOR_OP_RDSR2,
+							    sr2, 1);
 	}
 
 	if (ret)
@@ -1240,10 +1382,16 @@ static int spi_nor_erase_chip(struct spi_nor *nor)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_NO_DATA);
 
+		spi_nor_spimem_setup_op(nor, &op, nor->write_proto);
+
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_CHIP_ERASE,
-						     NULL, 0);
+		if (spi_nor_protocol_is_dtr(nor->write_proto))
+			ret = -ENOTSUPP;
+		else
+			ret = nor->controller_ops->write_reg(nor,
+							     SPINOR_OP_CHIP_ERASE,
+							     NULL, 0);
 	}
 
 	if (ret)
@@ -1402,7 +1550,11 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_NO_DATA);
 
+		spi_nor_spimem_setup_op(nor, &op, nor->write_proto);
+
 		return spi_mem_exec_op(nor->spimem, &op);
+	} else if (spi_nor_protocol_is_dtr(nor->write_proto)) {
+		return -ENOTSUPP;
 	} else if (nor->controller_ops->erase) {
 		return nor->controller_ops->erase(nor, addr);
 	}
@@ -3065,6 +3217,7 @@ static int spi_nor_hwcaps_read2cmd(u32 hwcaps)
 		{ SNOR_HWCAPS_READ_1_8_8,	SNOR_CMD_READ_1_8_8 },
 		{ SNOR_HWCAPS_READ_8_8_8,	SNOR_CMD_READ_8_8_8 },
 		{ SNOR_HWCAPS_READ_1_8_8_DTR,	SNOR_CMD_READ_1_8_8_DTR },
+		{ SNOR_HWCAPS_READ_8_8_8_DTR,	SNOR_CMD_READ_8_8_8_DTR },
 	};
 
 	return spi_nor_hwcaps2cmd(hwcaps, hwcaps_read2cmd,
@@ -3081,6 +3234,7 @@ static int spi_nor_hwcaps_pp2cmd(u32 hwcaps)
 		{ SNOR_HWCAPS_PP_1_1_8,		SNOR_CMD_PP_1_1_8 },
 		{ SNOR_HWCAPS_PP_1_8_8,		SNOR_CMD_PP_1_8_8 },
 		{ SNOR_HWCAPS_PP_8_8_8,		SNOR_CMD_PP_8_8_8 },
+		{ SNOR_HWCAPS_PP_8_8_8_DTR,	SNOR_CMD_PP_8_8_8_DTR },
 	};
 
 	return spi_nor_hwcaps2cmd(hwcaps, hwcaps_pp2cmd,
@@ -3204,13 +3358,11 @@ static int spi_nor_spimem_check_readop(struct spi_nor *nor,
 					  SPI_MEM_OP_DUMMY(0, 1),
 					  SPI_MEM_OP_DATA_IN(0, NULL, 1));
 
-	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(read->proto);
-	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(read->proto);
-	op.data.buswidth = spi_nor_get_protocol_data_nbits(read->proto);
-	op.dummy.buswidth = op.addr.buswidth;
 	op.dummy.nbytes = (read->num_mode_clocks + read->num_wait_states) *
 			  op.dummy.buswidth / 8;
 
+	spi_nor_spimem_setup_op(nor, &op, read->proto);
+
 	return spi_nor_spimem_check_op(nor, &op);
 }
 
@@ -3230,9 +3382,7 @@ static int spi_nor_spimem_check_pp(struct spi_nor *nor,
 					  SPI_MEM_OP_NO_DUMMY,
 					  SPI_MEM_OP_DATA_OUT(0, NULL, 1));
 
-	op.cmd.buswidth = spi_nor_get_protocol_inst_nbits(pp->proto);
-	op.addr.buswidth = spi_nor_get_protocol_addr_nbits(pp->proto);
-	op.data.buswidth = spi_nor_get_protocol_data_nbits(pp->proto);
+	spi_nor_spimem_setup_op(nor, &op, pp->proto);
 
 	return spi_nor_spimem_check_op(nor, &op);
 }
@@ -3250,11 +3400,10 @@ spi_nor_spimem_adjust_hwcaps(struct spi_nor *nor, u32 *hwcaps)
 	struct spi_nor_flash_parameter *params =  &nor->params;
 	unsigned int cap;
 
-	/* DTR modes are not supported yet, mask them all. */
-	*hwcaps &= ~SNOR_HWCAPS_DTR;
-
-	/* X-X-X modes are not supported yet, mask them all. */
-	*hwcaps &= ~SNOR_HWCAPS_X_X_X;
+	/* 2-2-2 and 4-4-4 modes are not supported yet, mask them all. */
+	*hwcaps &= ~(SNOR_HWCAPS_READ_2_2_2 |	\
+		     SNOR_HWCAPS_READ_4_4_4 |	\
+		     SNOR_HWCAPS_PP_4_4_4);
 
 	for (cap = 0; cap < sizeof(*hwcaps) * BITS_PER_BYTE; cap++) {
 		int rdidx, ppidx;
@@ -4257,9 +4406,16 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 	}
 
 	/* 4BAIT is the only SFDP table that indicates page program support. */
-	if (pp_hwcaps & SNOR_HWCAPS_PP)
+	if (pp_hwcaps & SNOR_HWCAPS_PP) {
 		spi_nor_set_pp_settings(&params_pp[SNOR_CMD_PP],
 					SPINOR_OP_PP_4B, SNOR_PROTO_1_1_1);
+		/*
+		 * Since xSPI Page Program opcode is backward compatible with
+		 * Legacy SPI, use Legacy SPI opcode there as well.
+		 */
+		spi_nor_set_pp_settings(&params_pp[SNOR_CMD_PP_8_8_8_DTR],
+					SPINOR_OP_PP_4B, SNOR_PROTO_8_8_8_DTR);
+	}
 	if (pp_hwcaps & SNOR_HWCAPS_PP_1_1_4)
 		spi_nor_set_pp_settings(&params_pp[SNOR_CMD_PP_1_1_4],
 					SPINOR_OP_PP_1_1_4_4B,
@@ -4814,6 +4970,13 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 	spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP],
 				SPINOR_OP_PP, SNOR_PROTO_1_1_1);
 
+	/*
+	 * Since xSPI Page Program opcode is backward compatible with
+	 * Legacy SPI, use Legacy SPI opcode there as well.
+	 */
+	spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP_8_8_8_DTR],
+				SPINOR_OP_PP, SNOR_PROTO_8_8_8_DTR);
+
 	/*
 	 * Sector Erase settings. Sort Erase Types in ascending order, with the
 	 * smallest erase size starting at BIT(0).
@@ -4941,7 +5104,8 @@ static void spi_nor_init_params(struct spi_nor *nor)
 
 	spi_nor_manufacturer_init_params(nor);
 
-	if ((nor->info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)) &&
+	if ((nor->info->flags & (SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+				 SPI_NOR_OCTAL_READ | SPI_NOR_OCTAL_DTR_READ)) &&
 	    !(nor->info->flags & SPI_NOR_SKIP_SFDP))
 		spi_nor_sfdp_init_params(nor);
 
@@ -5001,7 +5165,9 @@ static int spi_nor_init(struct spi_nor *nor)
 		return err;
 	}
 
-	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES)) {
+	if (nor->addr_width == 4 &&
+	    !(nor->info->flags & SPI_NOR_OCTAL_DTR_READ) &&
+	    !(nor->flags & SNOR_F_4B_OPCODES)) {
 		/*
 		 * If the RESET# pin isn't hooked up properly, or the system
 		 * otherwise doesn't perform a reset command in the boot
@@ -5055,6 +5221,9 @@ static int spi_nor_set_addr_width(struct spi_nor *nor)
 {
 	if (nor->addr_width) {
 		/* already configured from SFDP */
+	} else if (spi_nor_protocol_is_dtr(nor->read_proto)) {
+		 /* Always use 4-byte addresses in DTR mode. */
+		nor->addr_width = 4;
 	} else if (nor->info->addr_width) {
 		nor->addr_width = nor->info->addr_width;
 	} else if (nor->mtd.size > 0x1000000) {
@@ -5289,14 +5458,19 @@ static int spi_nor_create_read_dirmap(struct spi_nor *nor)
 	};
 	struct spi_mem_op *op = &info.op_tmpl;
 
-	/* get transfer protocols. */
-	op->cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->read_proto);
-	op->addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->read_proto);
-	op->dummy.buswidth = op->addr.buswidth;
-	op->data.buswidth = spi_nor_get_protocol_data_nbits(nor->read_proto);
+	spi_nor_spimem_setup_op(nor, op, nor->read_proto);
 
 	/* convert the dummy cycles to the number of bytes */
 	op->dummy.nbytes = (nor->read_dummy * op->dummy.buswidth) / 8;
+	if (spi_nor_protocol_is_dtr(nor->read_proto))
+		op->dummy.nbytes *= 2;
+
+	/*
+	 * Since spi_nor_spimem_setup_op() only sets buswidth when the number
+	 * of data bytes is non-zero, the data buswidth won't be set here. So,
+	 * do it explicitly.
+	 */
+	op->data.buswidth = spi_nor_get_protocol_data_nbits(nor->read_proto);
 
 	nor->dirmap.rdesc = devm_spi_mem_dirmap_create(nor->dev, nor->spimem,
 						       &info);
@@ -5315,15 +5489,18 @@ static int spi_nor_create_write_dirmap(struct spi_nor *nor)
 	};
 	struct spi_mem_op *op = &info.op_tmpl;
 
-	/* get transfer protocols. */
-	op->cmd.buswidth = spi_nor_get_protocol_inst_nbits(nor->write_proto);
-	op->addr.buswidth = spi_nor_get_protocol_addr_nbits(nor->write_proto);
-	op->dummy.buswidth = op->addr.buswidth;
-	op->data.buswidth = spi_nor_get_protocol_data_nbits(nor->write_proto);
-
 	if (nor->program_opcode == SPINOR_OP_AAI_WP && nor->sst_write_second)
 		op->addr.nbytes = 0;
 
+	spi_nor_spimem_setup_op(nor, op, nor->write_proto);
+
+	/*
+	 * Since spi_nor_spimem_setup_op() only sets buswidth when the number
+	 * of data bytes is non-zero, the data buswidth won't be set here. So,
+	 * do it explicitly.
+	 */
+	op->data.buswidth = spi_nor_get_protocol_data_nbits(nor->write_proto);
+
 	nor->dirmap.wdesc = devm_spi_mem_dirmap_create(nor->dev, nor->spimem,
 						       &info);
 	return PTR_ERR_OR_ZERO(nor->dirmap.wdesc);
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index de90724f62f1..e4dc34cd6938 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -197,6 +197,7 @@ enum spi_nor_protocol {
 	SNOR_PROTO_1_2_2_DTR = SNOR_PROTO_DTR(1, 2, 2),
 	SNOR_PROTO_1_4_4_DTR = SNOR_PROTO_DTR(1, 4, 4),
 	SNOR_PROTO_1_8_8_DTR = SNOR_PROTO_DTR(1, 8, 8),
+	SNOR_PROTO_8_8_8_DTR = SNOR_PROTO_DTR(8, 8, 8),
 };
 
 static inline bool spi_nor_protocol_is_dtr(enum spi_nor_protocol proto)
@@ -347,7 +348,7 @@ struct spi_nor_hwcaps {
  * then Quad SPI protocols before Dual SPI protocols, Fast Read and lastly
  * (Slow) Read.
  */
-#define SNOR_HWCAPS_READ_MASK		GENMASK(14, 0)
+#define SNOR_HWCAPS_READ_MASK		GENMASK(15, 0)
 #define SNOR_HWCAPS_READ		BIT(0)
 #define SNOR_HWCAPS_READ_FAST		BIT(1)
 #define SNOR_HWCAPS_READ_1_1_1_DTR	BIT(2)
@@ -364,11 +365,12 @@ struct spi_nor_hwcaps {
 #define SNOR_HWCAPS_READ_4_4_4		BIT(9)
 #define SNOR_HWCAPS_READ_1_4_4_DTR	BIT(10)
 
-#define SNOR_HWCAPS_READ_OCTAL		GENMASK(14, 11)
+#define SNOR_HWCAPS_READ_OCTAL		GENMASK(15, 11)
 #define SNOR_HWCAPS_READ_1_1_8		BIT(11)
 #define SNOR_HWCAPS_READ_1_8_8		BIT(12)
 #define SNOR_HWCAPS_READ_8_8_8		BIT(13)
 #define SNOR_HWCAPS_READ_1_8_8_DTR	BIT(14)
+#define SNOR_HWCAPS_READ_8_8_8_DTR	BIT(15)
 
 /*
  * Page Program capabilities.
@@ -379,18 +381,19 @@ struct spi_nor_hwcaps {
  * JEDEC/SFDP standard to define them. Also at this moment no SPI flash memory
  * implements such commands.
  */
-#define SNOR_HWCAPS_PP_MASK	GENMASK(22, 16)
-#define SNOR_HWCAPS_PP		BIT(16)
+#define SNOR_HWCAPS_PP_MASK		GENMASK(23, 16)
+#define SNOR_HWCAPS_PP			BIT(16)
 
-#define SNOR_HWCAPS_PP_QUAD	GENMASK(19, 17)
-#define SNOR_HWCAPS_PP_1_1_4	BIT(17)
-#define SNOR_HWCAPS_PP_1_4_4	BIT(18)
-#define SNOR_HWCAPS_PP_4_4_4	BIT(19)
+#define SNOR_HWCAPS_PP_QUAD		GENMASK(19, 17)
+#define SNOR_HWCAPS_PP_1_1_4		BIT(17)
+#define SNOR_HWCAPS_PP_1_4_4		BIT(18)
+#define SNOR_HWCAPS_PP_4_4_4		BIT(19)
 
-#define SNOR_HWCAPS_PP_OCTAL	GENMASK(22, 20)
-#define SNOR_HWCAPS_PP_1_1_8	BIT(20)
-#define SNOR_HWCAPS_PP_1_8_8	BIT(21)
-#define SNOR_HWCAPS_PP_8_8_8	BIT(22)
+#define SNOR_HWCAPS_PP_OCTAL		GENMASK(23, 20)
+#define SNOR_HWCAPS_PP_1_1_8		BIT(20)
+#define SNOR_HWCAPS_PP_1_8_8		BIT(21)
+#define SNOR_HWCAPS_PP_8_8_8		BIT(22)
+#define SNOR_HWCAPS_PP_8_8_8_DTR	BIT(23)
 
 #define SNOR_HWCAPS_X_X_X	(SNOR_HWCAPS_READ_2_2_2 |	\
 				 SNOR_HWCAPS_READ_4_4_4 |	\
@@ -401,7 +404,8 @@ struct spi_nor_hwcaps {
 #define SNOR_HWCAPS_DTR		(SNOR_HWCAPS_READ_1_1_1_DTR |	\
 				 SNOR_HWCAPS_READ_1_2_2_DTR |	\
 				 SNOR_HWCAPS_READ_1_4_4_DTR |	\
-				 SNOR_HWCAPS_READ_1_8_8_DTR)
+				 SNOR_HWCAPS_READ_1_8_8_DTR |	\
+				 SNOR_HWCAPS_READ_8_8_8_DTR)
 
 #define SNOR_HWCAPS_ALL		(SNOR_HWCAPS_READ_MASK |	\
 				 SNOR_HWCAPS_PP_MASK)
@@ -440,6 +444,7 @@ enum spi_nor_read_command_index {
 	SNOR_CMD_READ_1_8_8,
 	SNOR_CMD_READ_8_8_8,
 	SNOR_CMD_READ_1_8_8_DTR,
+	SNOR_CMD_READ_8_8_8_DTR,
 
 	SNOR_CMD_READ_MAX
 };
@@ -456,10 +461,27 @@ enum spi_nor_pp_command_index {
 	SNOR_CMD_PP_1_1_8,
 	SNOR_CMD_PP_1_8_8,
 	SNOR_CMD_PP_8_8_8,
+	SNOR_CMD_PP_8_8_8_DTR,
 
 	SNOR_CMD_PP_MAX
 };
 
+/**
+ * enum spi_nor_cmd_ext - describes the command opcode extension in DTR mode
+ * @SPI_NOR_EXT_NONE: no extension. This is the default, and is used in Legacy
+ *		      SPI mode
+ * @SPI_NOR_EXT_REPEAT: the extension is same as the opcode
+ * @SPI_NOR_EXT_INVERT: the extension is the bitwise inverse of the opcode
+ * @SPI_NOR_EXT_HEX: the extension is any hex value. The command and opcode
+ *		     combine to form a 16-bit opcode.
+ */
+enum spi_nor_cmd_ext {
+	SPI_NOR_EXT_NONE = 0,
+	SPI_NOR_EXT_REPEAT,
+	SPI_NOR_EXT_INVERT,
+	SPI_NOR_EXT_HEX,
+};
+
 /* Forward declaration that will be used in 'struct spi_nor_flash_parameter' */
 struct spi_nor;
 
@@ -572,6 +594,7 @@ struct flash_info;
  * @program_opcode:	the program opcode
  * @sst_write_second:	used by the SST write operation
  * @flags:		flag options for the current SPI-NOR (SNOR_F_*)
+ * @cmd_ext_type:	the command opcode extension type for DTR mode.
  * @read_proto:		the SPI protocol for read operations
  * @write_proto:	the SPI protocol for write operations
  * @reg_proto		the SPI protocol for read_reg/write_reg/erase operations
@@ -602,6 +625,7 @@ struct spi_nor {
 	enum spi_nor_protocol	reg_proto;
 	bool			sst_write_second;
 	u32			flags;
+	enum spi_nor_cmd_ext	cmd_ext_type;
 
 	const struct spi_nor_controller_ops *controller_ops;
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

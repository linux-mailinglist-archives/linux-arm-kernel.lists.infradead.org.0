Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956141E0A88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ammU5iUbzpWUNKyBxl/w/PvwzNohrcgNFbwaiMQEdAk=; b=jvLuuwlik/RJjK
	X9AXF7ST53VaG1E3fJY0RkwlG0vG92hjfdzmBgLfuVzCdVK5TjrfB4w8fTOPw8rG9/u2+BwWQpmgT
	7pOaGLlRbeY43dv87X2oHjRnuDl9dfVGy9X2RnuPOOQNemJ2BVFSIlgRiP2epikr5QGfM5RSgSZMR
	irnPdGgmJlVRSMqiwTztkJ+LFlf/sv+iXdLs43Gmtx0cNgHwG9+EtkYgKHi92iXJgIwooIHRs2zZ9
	u8GbKIAT1Wn3TSGD+zuzrsugkF02Zint3k96dyoJNWlccpcIOZ7c0INY9Y2Q7ciSTgwfg0425QsZw
	Nhe9NRa3vR1FIZea1nxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9RB-0006u4-MO; Mon, 25 May 2020 09:30:25 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9Em-0007lA-3a; Mon, 25 May 2020 09:17:45 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04P9HUjs105461;
 Mon, 25 May 2020 04:17:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590398250;
 bh=5UCOPWk6X92olYrZDfeJHWtjgVM9Dl85CVT55A/y+Lg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Pr14J2DGeOLevNwAjvb2vF4SEmuWQpHEEMP6TQ9OMW4W3DJWZrtOH345gRTAOygkU
 iw/0tS1ClFohaDSQC0rNaEMXcM90nYzdcHhDx/2wQTF6LkUeNng/X8jdyXWXQipFmt
 f1n/m0qci7MzN3jVrTR2BrdMWf/+mmYMfTBWjP7o=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04P9HU09020053;
 Mon, 25 May 2020 04:17:30 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 25
 May 2020 04:17:30 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 25 May 2020 04:17:30 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04P9FjAI034800;
 Mon, 25 May 2020 04:17:25 -0500
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
Subject: [PATCH v9 18/19] mtd: spi-nor: spansion: add support for Cypress
 Semper flash
Date: Mon, 25 May 2020 14:45:43 +0530
Message-ID: <20200525091544.17270-19-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200525091544.17270-1-p.yadav@ti.com>
References: <20200525091544.17270-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_021736_260712_8381CADA 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

The Cypress Semper flash is an xSPI compliant octal DTR flash. Add
support for using it in octal DTR mode.

The flash by default boots in a hybrid sector mode. But the sector map
table on the part I had was programmed incorrectly and the SMPT values
on the flash don't match the public datasheet. Specifically, in some
places erase type 3 was used instead of 4. In addition, the region sizes
were incorrect in some places. So, for testing I set CFR3N[3] to enable
uniform sector sizes. Since the uniform sector mode bit is a
non-volatile bit, this series does not change it to avoid making any
permanent changes to the flash configuration. The correct data to
implement a fixup is not available right now and will be done in a
follow-up patch if needed.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/spansion.c | 167 +++++++++++++++++++++++++++++++++
 1 file changed, 167 insertions(+)

diff --git a/drivers/mtd/spi-nor/spansion.c b/drivers/mtd/spi-nor/spansion.c
index 88183eba8ac1..e5dc36b70e4e 100644
--- a/drivers/mtd/spi-nor/spansion.c
+++ b/drivers/mtd/spi-nor/spansion.c
@@ -8,6 +8,169 @@
 
 #include "core.h"
 
+/* For Cypress flash. */
+#define SPINOR_OP_RD_ANY_REG			0x65	/* Read any register */
+#define SPINOR_OP_WR_ANY_REG			0x71	/* Write any register */
+#define SPINOR_REG_CYPRESS_CFR2V		0x00800003
+#define SPINOR_REG_CYPRESS_CFR2V_MEMLAT_11_24	0xb
+#define SPINOR_REG_CYPRESS_CFR3V		0x00800004
+#define SPINOR_REG_CYPRESS_CFR3V_PGSZ		BIT(4) /* Page size. */
+#define SPINOR_REG_CYPRESS_CFR5V		0x00800006
+#define SPINOR_REG_CYPRESS_CFR5V_OCT_DTR_EN	0x3
+#define SPINOR_REG_CYPRESS_CFR5V_OCT_DTR_DS	0
+#define SPINOR_OP_CYPRESS_RD_FAST		0xee
+
+/**
+ * spi_nor_cypress_octal_dtr_enable() - Enable octal DTR on Cypress flashes.
+ * @nor:		pointer to a 'struct spi_nor'
+ *
+ * This also sets the memory access latency cycles to 24 to allow the flash to
+ * run at up to 200MHz.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_cypress_octal_dtr_enable(struct spi_nor *nor, bool enable)
+{
+	struct spi_mem_op op;
+	u8 *buf = nor->bouncebuf;
+	u8 addr_width;
+	int ret;
+
+	if (enable)
+		addr_width = 3;
+	else
+		addr_width = 4;
+
+	if (enable) {
+		/* Use 24 dummy cycles for memory array reads. */
+		ret = spi_nor_write_enable(nor);
+		if (ret)
+			return ret;
+
+		*buf = SPINOR_REG_CYPRESS_CFR2V_MEMLAT_11_24;
+		op = (struct spi_mem_op)
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WR_ANY_REG, 1),
+				   SPI_MEM_OP_ADDR(addr_width,
+						   SPINOR_REG_CYPRESS_CFR2V,
+						   1),
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_DATA_OUT(1, buf, 1));
+		ret = spi_mem_exec_op(nor->spimem, &op);
+		if (ret) {
+			dev_warn(nor->dev,
+				 "failed to set default memory latency value: %d\n",
+				 ret);
+			return ret;
+		}
+		ret = spi_nor_wait_till_ready(nor);
+		if (ret)
+			return ret;
+
+		nor->read_dummy = 24;
+	}
+
+	/* Set/unset the octal and DTR enable bits. */
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	if (enable)
+		*buf = SPINOR_REG_CYPRESS_CFR5V_OCT_DTR_EN;
+	else
+		*buf = SPINOR_REG_CYPRESS_CFR5V_OCT_DTR_DS;
+	op = (struct spi_mem_op)
+		SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WR_ANY_REG, 1),
+			   SPI_MEM_OP_ADDR(addr_width,
+					   SPINOR_REG_CYPRESS_CFR5V,
+					   1),
+			   SPI_MEM_OP_NO_DUMMY,
+			   SPI_MEM_OP_DATA_OUT(1, buf, 1));
+
+	if (!enable)
+		spi_nor_spimem_setup_op(nor, &op, SNOR_PROTO_8_8_8_DTR);
+
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret) {
+		dev_warn(nor->dev, "Failed to enable octal DTR mode\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static void s28hs512t_default_init(struct spi_nor *nor)
+{
+	nor->params->octal_dtr_enable = spi_nor_cypress_octal_dtr_enable;
+}
+
+static void s28hs512t_post_sfdp_fixup(struct spi_nor *nor)
+{
+	/*
+	 * On older versions of the flash the xSPI Profile 1.0 table has the
+	 * 8D-8D-8D Fast Read opcode as 0x00. But it actually should be 0xEE.
+	 */
+	if (nor->params->reads[SNOR_CMD_READ_8_8_8_DTR].opcode == 0)
+		nor->params->reads[SNOR_CMD_READ_8_8_8_DTR].opcode =
+			SPINOR_OP_CYPRESS_RD_FAST;
+
+	nor->params->hwcaps.mask |= SNOR_HWCAPS_PP_8_8_8_DTR;
+
+	/* This flash is also missing the 4-byte Page Program opcode bit. */
+	spi_nor_set_pp_settings(&nor->params->page_programs[SNOR_CMD_PP],
+				SPINOR_OP_PP_4B, SNOR_PROTO_1_1_1);
+	/*
+	 * Since xSPI Page Program opcode is backward compatible with
+	 * Legacy SPI, use Legacy SPI opcode there as well.
+	 */
+	spi_nor_set_pp_settings(&nor->params->page_programs[SNOR_CMD_PP_8_8_8_DTR],
+				SPINOR_OP_PP_4B, SNOR_PROTO_8_8_8_DTR);
+
+	/*
+	 * The xSPI Profile 1.0 table advertises the number of additional
+	 * address bytes needed for Read Status Register command as 0 but the
+	 * actual value for that is 4.
+	 */
+	nor->params->rdsr_addr_nbytes = 4;
+}
+
+static int s28hs512t_post_bfpt_fixup(struct spi_nor *nor,
+				     const struct sfdp_parameter_header *bfpt_header,
+				     const struct sfdp_bfpt *bfpt,
+				     struct spi_nor_flash_parameter *params)
+{
+	struct spi_mem_op op;
+	u8 *buf = nor->bouncebuf;
+	u8 addr_width = 3;
+	int ret;
+
+	/*
+	 * The BFPT table advertises a 512B page size but the page size is
+	 * actually configurable (with the default being 256B). Read from
+	 * CFR3V[4] and set the correct size.
+	 */
+	op = (struct spi_mem_op)
+		SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RD_ANY_REG, 1),
+			   SPI_MEM_OP_ADDR(addr_width, SPINOR_REG_CYPRESS_CFR3V, 1),
+			   SPI_MEM_OP_NO_DUMMY,
+			   SPI_MEM_OP_DATA_IN(1, buf, 1));
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret)
+		return ret;
+
+	if (*buf & SPINOR_REG_CYPRESS_CFR3V_PGSZ)
+		params->page_size = 512;
+	else
+		params->page_size = 256;
+
+	return 0;
+}
+
+static struct spi_nor_fixups s28hs512t_fixups = {
+	.default_init = s28hs512t_default_init,
+	.post_sfdp = s28hs512t_post_sfdp_fixup,
+	.post_bfpt = s28hs512t_post_bfpt_fixup,
+};
+
 static const struct flash_info spansion_parts[] = {
 	/* Spansion/Cypress -- single (large) sector size only, at least
 	 * for the chips listed here (without boot sectors).
@@ -72,6 +235,10 @@ static const struct flash_info spansion_parts[] = {
 	{ "s25fl256l",  INFO(0x016019,      0,  64 * 1024, 512,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
 			     SPI_NOR_4B_OPCODES) },
+	{ "s28hs512t",   INFO(0x345b1a,      0, 256 * 1024, 256,
+			     SECT_4K | SPI_NOR_OCTAL_DTR_READ)
+		.fixups = &s28hs512t_fixups,
+	},
 };
 
 static void spansion_post_sfdp_fixups(struct spi_nor *nor)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BD51E0A3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZ5aZ8eQi9Z3LTarE93iFR6jJ7ips+5NVYFBzC9H3hw=; b=E1RzIVZtGZcZvH
	yQgDcVIdbS50FUvL4YJ0lo2CXW4LNR8W5Ca3RhahmI9JL/PeY8DTww/RIclSimAMSntI1uiM3jikc
	6ZYCZ+R8I86pPr0g5xJxsBrNaDcTFwHlwTX72BqwvBxGzPljnZqNm+9gd70EGvvdMHa4RNNfLY+Q1
	y+RairDgo9hkatIO9urEud7+SKBmseQME9Qsiky5bBuODiugvLBSry533/W+X0k+PbP3DAC3oZKbt
	oPAdDL4ipCAyYlfJONFL8/sXjlqfhOfAANcg1GmOH2NwzLoPnmJ05T1myZ+MlRUu3D/3tFdAJA7Rg
	kRsfGw+3Ol8FfLNlOQ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9JO-00059I-CA; Mon, 25 May 2020 09:22:22 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9Dy-00077k-KZ; Mon, 25 May 2020 09:16:51 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04P9GfnY105325;
 Mon, 25 May 2020 04:16:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1590398201;
 bh=EBSuSKu8E6ZfUxthMZxSUAxK4hljP1NudEiBto9rwgQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=kC9bvRT4GVe8ikqP9Z674ne4wlZ/Eiis54ErBR4fPJx6pxEE160mgADrlVI0WM1sb
 ESzsD3BBS7hejfmBqA9IPttPHrYDWYFpbnftrOvPXkQc9ZMOi5ApGsiBpJsDwzV1nU
 sVUaDWmkp/SL+tc6rTFyDJb5VZCdFkT5k5LInyOs=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04P9GfYG098593
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 25 May 2020 04:16:41 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 25
 May 2020 04:16:41 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 25 May 2020 04:16:40 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04P9FjA9034800;
 Mon, 25 May 2020 04:16:35 -0500
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
Subject: [PATCH v9 09/19] mtd: spi-nor: sfdp: parse xSPI Profile 1.0 table
Date: Mon, 25 May 2020 14:45:34 +0530
Message-ID: <20200525091544.17270-10-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200525091544.17270-1-p.yadav@ti.com>
References: <20200525091544.17270-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_021646_793017_D715747A 
X-CRM114-Status: GOOD (  19.85  )
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

This table is indication that the flash is xSPI compliant and hence
supports octal DTR mode. Extract information like the fast read opcode,
dummy cycles, the number of dummy cycles needed for a Read Status
Register command, and the number of address bytes needed for a Read
Status Register command.

We don't know what speed the controller is running at. Find the fast
read dummy cycles for the fastest frequency the flash can run at to be
sure we are never short of dummy cycles. If nothing is available,
default to 20. Flashes that use a different value should update it in
their fixup hooks.

Since we want to set read settings, expose spi_nor_set_read_settings()
in core.h.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/core.c |  2 +-
 drivers/mtd/spi-nor/core.h | 10 ++++
 drivers/mtd/spi-nor/sfdp.c | 99 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 110 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 388e695e763f..642e3c07acf9 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2355,7 +2355,7 @@ static int spi_nor_check(struct spi_nor *nor)
 	return 0;
 }
 
-static void
+void
 spi_nor_set_read_settings(struct spi_nor_read_command *read,
 			  u8 num_mode_clocks,
 			  u8 num_wait_states,
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index de1e3917889f..7e6df8322da0 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -192,6 +192,9 @@ struct spi_nor_locking_ops {
  *
  * @size:		the flash memory density in bytes.
  * @page_size:		the page size of the SPI NOR flash memory.
+ * @rdsr_dummy:		dummy cycles needed for Read Status Register command.
+ * @rdsr_addr_nbytes:	dummy address bytes needed for Read Status Register
+ *			command.
  * @hwcaps:		describes the read and page program hardware
  *			capabilities.
  * @reads:		read capabilities ordered by priority: the higher index
@@ -214,6 +217,8 @@ struct spi_nor_locking_ops {
 struct spi_nor_flash_parameter {
 	u64				size;
 	u32				page_size;
+	u8				rdsr_dummy;
+	u8				rdsr_addr_nbytes;
 
 	struct spi_nor_hwcaps		hwcaps;
 	struct spi_nor_read_command	reads[SNOR_CMD_READ_MAX];
@@ -424,6 +429,11 @@ ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
 
 int spi_nor_hwcaps_read2cmd(u32 hwcaps);
 u8 spi_nor_convert_3to4_read(u8 opcode);
+void spi_nor_set_read_settings(struct spi_nor_read_command *read,
+			      u8 num_mode_clocks,
+			      u8 num_wait_states,
+			      u8 opcode,
+			      enum spi_nor_protocol proto);
 void spi_nor_set_pp_settings(struct spi_nor_pp_command *pp, u8 opcode,
 			     enum spi_nor_protocol proto);
 
diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
index ab086aa4746f..052cabb52df9 100644
--- a/drivers/mtd/spi-nor/sfdp.c
+++ b/drivers/mtd/spi-nor/sfdp.c
@@ -4,12 +4,15 @@
  * Copyright (C) 2014, Freescale Semiconductor, Inc.
  */
 
+#include <linux/bitfield.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
 #include <linux/mtd/spi-nor.h>
 
 #include "core.h"
 
+#define ROUND_UP_TO(x, y)	(((x) + (y) - 1) / (y) * (y))
+
 #define SFDP_PARAM_HEADER_ID(p)	(((p)->id_msb << 8) | (p)->id_lsb)
 #define SFDP_PARAM_HEADER_PTP(p) \
 	(((p)->parameter_table_pointer[2] << 16) | \
@@ -19,12 +22,14 @@
 #define SFDP_BFPT_ID		0xff00	/* Basic Flash Parameter Table */
 #define SFDP_SECTOR_MAP_ID	0xff81	/* Sector Map Table */
 #define SFDP_4BAIT_ID		0xff84  /* 4-byte Address Instruction Table */
+#define SFDP_PROFILE1_ID	0xff05	/* xSPI Profile 1.0 table. */
 
 #define SFDP_SIGNATURE		0x50444653U
 #define SFDP_JESD216_MAJOR	1
 #define SFDP_JESD216_MINOR	0
 #define SFDP_JESD216A_MINOR	5
 #define SFDP_JESD216B_MINOR	6
+#define SFDP_JESD216D_MINOR	8
 
 struct sfdp_header {
 	u32		signature; /* Ox50444653U <=> "SFDP" */
@@ -70,6 +75,16 @@ struct sfdp_bfpt_erase {
 	u32			shift;
 };
 
+/* xSPI Profile 1.0 table (from JESD216D.01). */
+#define PROFILE1_DWORD1_RD_FAST_CMD		GENMASK(15, 8)
+#define PROFILE1_DWORD1_RDSR_DUMMY		BIT(28)
+#define PROFILE1_DWORD1_RDSR_ADDR_BYTES		BIT(29)
+#define PROFILE1_DWORD4_DUMMY_200MHZ		GENMASK(11, 7)
+#define PROFILE1_DWORD5_DUMMY_166MHZ		GENMASK(31, 27)
+#define PROFILE1_DWORD5_DUMMY_133MHZ		GENMASK(21, 17)
+#define PROFILE1_DWORD5_DUMMY_100MHZ		GENMASK(11, 7)
+#define PROFILE1_DUMMY_DEFAULT			20
+
 #define SMPT_CMD_ADDRESS_LEN_MASK		GENMASK(23, 22)
 #define SMPT_CMD_ADDRESS_LEN_0			(0x0UL << 22)
 #define SMPT_CMD_ADDRESS_LEN_3			(0x1UL << 22)
@@ -1110,6 +1125,86 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 	return ret;
 }
 
+/**
+ * spi_nor_parse_profile1() - parse the xSPI Profile 1.0 table
+ * @nor:		pointer to a 'struct spi_nor'
+ * @param_header:	pointer to the 'struct sfdp_parameter_header' describing
+ *			the 4-Byte Address Instruction Table length and version.
+ * @params:		pointer to the 'struct spi_nor_flash_parameter' to be.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_parse_profile1(struct spi_nor *nor,
+				  const struct sfdp_parameter_header *profile1_header,
+				  struct spi_nor_flash_parameter *params)
+{
+	u32 *table, opcode, addr;
+	size_t len;
+	int ret, i;
+	u8 dummy;
+
+	len = profile1_header->length * sizeof(*table);
+	table = kmalloc(len, GFP_KERNEL);
+	if (!table)
+		return -ENOMEM;
+
+	addr = SFDP_PARAM_HEADER_PTP(profile1_header);
+	ret = spi_nor_read_sfdp(nor, addr, len, table);
+	if (ret)
+		goto out;
+
+	/* Fix endianness of the table DWORDs. */
+	for (i = 0; i < profile1_header->length; i++)
+		table[i] = le32_to_cpu(table[i]);
+
+	/* Get 8D-8D-8D fast read opcode and dummy cycles. */
+	opcode = FIELD_GET(PROFILE1_DWORD1_RD_FAST_CMD, table[0]);
+
+	/*
+	 * We don't know what speed the controller is running at. Find the
+	 * dummy cycles for the fastest frequency the flash can run at to be
+	 * sure we are never short of dummy cycles. A value of 0 means the
+	 * frequency is not supported.
+	 *
+	 * Default to PROFILE1_DUMMY_DEFAULT if we don't find anything, and let
+	 * flashes set the correct value if needed in their fixup hooks.
+	 */
+	dummy = FIELD_GET(PROFILE1_DWORD4_DUMMY_200MHZ, table[3]);
+	if (!dummy)
+		dummy = FIELD_GET(PROFILE1_DWORD5_DUMMY_166MHZ, table[4]);
+	if (!dummy)
+		dummy = FIELD_GET(PROFILE1_DWORD5_DUMMY_133MHZ, table[4]);
+	if (!dummy)
+		dummy = FIELD_GET(PROFILE1_DWORD5_DUMMY_100MHZ, table[4]);
+	if (!dummy)
+		dummy = PROFILE1_DUMMY_DEFAULT;
+
+	/* Round up to an even value to avoid tripping controllers up. */
+	dummy = ROUND_UP_TO(dummy, 2);
+
+	/* Update the fast read settings. */
+	spi_nor_set_read_settings(&params->reads[SNOR_CMD_READ_8_8_8_DTR],
+				  0, dummy, opcode,
+				  SNOR_PROTO_8_8_8_DTR);
+
+	/*
+	 * Set the Read Status Register dummy cycles and dummy address bytes.
+	 */
+	if (table[0] & PROFILE1_DWORD1_RDSR_DUMMY)
+		params->rdsr_dummy = 8;
+	else
+		params->rdsr_dummy = 4;
+
+	if (table[0] & PROFILE1_DWORD1_RDSR_ADDR_BYTES)
+		params->rdsr_addr_nbytes = 4;
+	else
+		params->rdsr_addr_nbytes = 0;
+
+out:
+	kfree(table);
+	return ret;
+}
+
 /**
  * spi_nor_parse_sfdp() - parse the Serial Flash Discoverable Parameters.
  * @nor:		pointer to a 'struct spi_nor'
@@ -1211,6 +1306,10 @@ int spi_nor_parse_sfdp(struct spi_nor *nor,
 			err = spi_nor_parse_4bait(nor, param_header, params);
 			break;
 
+		case SFDP_PROFILE1_ID:
+			err = spi_nor_parse_profile1(nor, param_header, params);
+			break;
+
 		default:
 			break;
 		}
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

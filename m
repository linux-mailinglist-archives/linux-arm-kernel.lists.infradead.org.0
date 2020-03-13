Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42E9184BE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCENQQbXA++My8j7UUOnb5DY4sT9CDco1jTs2p/3WVw=; b=IqsZKWoriZaIfI
	GGKGJp54hGLZswYUpiJx3iC1b4BPPuZgL2ZXElXU2jA3u695XEhuxE6YHPRsFIHMaBKqns6k5aUjV
	JcyKJqZ+uUuEJbEXMkwvKCPWiWRjTiehzgaJIkMx8koBTmGtzdbWdTaPjqZTGR99euy08FtjONIzn
	DYyAWrytbGILaBiuaRGi8UHbLEwqU88S6Ay2cAYhoSb3lDmG0pEdNNpPR32Q2LU5hkUNO3nzm4Wy3
	zfH2JzWLim9eDOzPadOkyk87avy+X9fthI9vZ94Fc1YSAtwk6VHkHGWJbVtiEgjdvzREUx1tXi9mR
	GgVodcD/oXz/fhSbKeKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmit-0004uz-GA; Fri, 13 Mar 2020 15:59:43 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmX9-0000MK-Uv; Fri, 13 Mar 2020 15:47:37 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02DFlWaP101904;
 Fri, 13 Mar 2020 10:47:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1584114452;
 bh=cv/S3sQv4R+crOi2/FBmcDQ354z0uhMVGC1oq/bHmzg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=tM30cm0gVs4ouUbJt0+2Ac6/4NXnifvbxsG3Po5wztahAf+3UsfW0SuGfVwQLyHna
 f1ER95xsHPe/d8NYSWhCngpN595mW4GOGv1FCN4KAWbOEdH0sm6uZTL4WPobxNbBC6
 pptW6SMN2ObPpVbxz0hhow9uRMli7uRSJTrRc1ZE=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02DFlWbM048912
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 13 Mar 2020 10:47:32 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 13
 Mar 2020 10:47:32 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 13 Mar 2020 10:47:32 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02DFkkSO034352;
 Fri, 13 Mar 2020 10:47:28 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>
Subject: [PATCH v3 10/12] mtd: spi-nor: perform a Soft Reset on shutdown
Date: Fri, 13 Mar 2020 21:16:43 +0530
Message-ID: <20200313154645.29293-11-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200313154645.29293-1-p.yadav@ti.com>
References: <20200313154645.29293-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084736_091113_26AC2E35 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

A Software Reset sequence will return the flash to Power-on-Reset (POR)
state. It consists of two commands: Soft Reset Enable and Soft Reset.

Perform a Soft Reset on shutdown on flashes that support it so that the
flash can be reset to its initial state and any configurations made by
spi-nor (given that they're only done in volatile registers) will be
reset. This will hand back the flash in pristine state for any further
operations on it.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 50 +++++++++++++++++++++++++++++++++++
 include/linux/mtd/spi-nor.h   |  3 +++
 2 files changed, 53 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 5e225d1b29f7..fcc087ff5148 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -253,6 +253,7 @@ struct flash_info {
 					 * SPI_NOR_HAS_TB.
 					 */
 #define SPI_NOR_OCTAL_DTR_READ	BIT(18)	/* Flash supports octal DTR Read. */
+#define SPI_NOR_SOFT_RESET	BIT(19) /* Flash supports soft reset command */
 
 	/* Part specific fixup hooks. */
 	const struct spi_nor_fixups *fixups;
@@ -260,6 +261,9 @@ struct flash_info {
 
 #define JEDEC_MFR(info)	((info)->id[0])
 
+#define SPI_NOR_SRST_SLEEP_MIN	200
+#define SPI_NOR_SRST_SLEEP_MAX	400
+
 /**
  * spi_nor_get_cmd_ext() - Get the command opcode extension based on the
  *			   extension type.
@@ -5336,6 +5340,45 @@ static int spi_nor_init(struct spi_nor *nor)
 	return 0;
 }
 
+static void spi_nor_soft_reset(struct spi_nor *nor)
+{
+	struct spi_mem_op op;
+	int ret;
+
+	op = (struct spi_mem_op)SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_SRSTEN, 8),
+			SPI_MEM_OP_NO_DUMMY,
+			SPI_MEM_OP_NO_ADDR,
+			SPI_MEM_OP_NO_DATA);
+	op.cmd.dtr = op.addr.dtr = op.dummy.dtr = op.data.dtr = true;
+	op.cmd.opcode <<= 8;
+	op.cmd.opcode |= spi_nor_get_cmd_ext(nor, &op);
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret) {
+		dev_warn(nor->dev, "Software reset failed: %d\n", ret);
+		return;
+	}
+
+	op = (struct spi_mem_op)SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_SRST, 8),
+			SPI_MEM_OP_NO_DUMMY,
+			SPI_MEM_OP_NO_ADDR,
+			SPI_MEM_OP_NO_DATA);
+	op.cmd.dtr = op.addr.dtr = op.dummy.dtr = op.data.dtr = true;
+	op.cmd.opcode <<= 8;
+	op.cmd.opcode |= spi_nor_get_cmd_ext(nor, &op);
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret) {
+		dev_warn(nor->dev, "Software reset failed: %d\n", ret);
+		return;
+	}
+
+	/*
+	 * Software Reset is not instant, and the delay varies from flash to
+	 * flash. Looking at a few flashes, most range somewhere below 100
+	 * microseconds. So, sleep for a range of 200-400 us.
+	 */
+	usleep_range(SPI_NOR_SRST_SLEEP_MIN, SPI_NOR_SRST_SLEEP_MAX);
+}
+
 /* mtd resume handler */
 static void spi_nor_resume(struct mtd_info *mtd)
 {
@@ -5355,6 +5398,10 @@ void spi_nor_restore(struct spi_nor *nor)
 	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES) &&
 	    nor->flags & SNOR_F_BROKEN_RESET)
 		nor->params.set_4byte(nor, false);
+
+	if (nor->info->flags & SPI_NOR_OCTAL_DTR_READ &&
+	    nor->flags & SNOR_F_SOFT_RESET)
+		spi_nor_soft_reset(nor);
 }
 EXPORT_SYMBOL_GPL(spi_nor_restore);
 
@@ -5539,6 +5586,9 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 			nor->flags |= SNOR_F_HAS_SR_TB_BIT6;
 	}
 
+	if (info->flags & SPI_NOR_SOFT_RESET)
+		nor->flags |= SNOR_F_SOFT_RESET;
+
 	if (info->flags & NO_CHIP_ERASE)
 		nor->flags |= SNOR_F_NO_OP_CHIP_ERASE;
 	if (info->flags & USE_CLSR)
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 923bd34ced84..13679197dec1 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -67,6 +67,8 @@
 #define SPINOR_OP_CLFSR		0x50	/* Clear flag status register */
 #define SPINOR_OP_RDEAR		0xc8	/* Read Extended Address Register */
 #define SPINOR_OP_WREAR		0xc5	/* Write Extended Address Register */
+#define SPINOR_OP_SRSTEN	0x66	/* Software Reset Enable */
+#define SPINOR_OP_SRST		0x99	/* Software Reset */
 
 /* 4-byte address opcodes - used on Spansion and some Macronix flashes. */
 #define SPINOR_OP_READ_4B	0x13	/* Read data bytes (low frequency) */
@@ -241,6 +243,7 @@ enum spi_nor_option_flags {
 	SNOR_F_HAS_16BIT_SR	= BIT(9),
 	SNOR_F_NO_READ_CR	= BIT(10),
 	SNOR_F_HAS_SR_TB_BIT6	= BIT(11),
+	SNOR_F_SOFT_RESET	= BIT(12),
 
 };
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

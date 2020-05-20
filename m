Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418BE1DBA0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 18:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOhyRr2wtpxGaOvr9RC2EmWlm+WNDrvLC6xbFReLQrU=; b=VP5K+KTrewO9sw
	wJIln5ToQlv/ruFYj7GJoRAqLh5jzUe+oewBpgD6vmauHLbnZWoHmTY5sJa77FBzwRFD2Fndscuhf
	Jr1o7zhoq29e3K1Ty3kWSpqBlOU45Hfl0MdRiwSCEn/Y28wcKEs7NFQ6RPMFEU4YT9N00XzFuvQ3A
	RAub6AJ85iRgueUn+WRInOXgnylKesUY5GtVJp5LHcyDJlGPJ3iMYuJrF9Z9OZsYaNPvLgt1O3C5L
	/tF72lKRcnK1yu8bdRY0kvMjG42L3mEqKHjlDdWD3ww0LAZuzI/Q2sZtAhdjxvUR5HH/iRna3gZSw
	KD3I4zrwlOBPehlWoxgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbRrR-00065k-6n; Wed, 20 May 2020 16:46:29 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbRe4-0004ts-Dy; Wed, 20 May 2020 16:32:42 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04KGWZf8064345;
 Wed, 20 May 2020 11:32:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589992355;
 bh=kv17vzIbbuAt+RZqE4vM8KTFUmvobKYZHpLC7UN2u9I=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xsBDpi6AO8dQSj/DR+hGcqiQ3LorO4By3oB3q3HlP+sNJ3tOCPZQoPhvHBgIug3vX
 Y8pQvxZXW3zOhjTLPGmxNWesQ2MsY1KSLIYpg4P9af5wjnOwQHaErcZ1Tbt7AhvTVB
 9gCb28kSH/+97h4X3rGGeXf7V8tgG4r/ABddPDqs=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KGWZiB110942;
 Wed, 20 May 2020 11:32:35 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 20
 May 2020 11:32:34 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 20 May 2020 11:32:34 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04KGUsxi001551;
 Wed, 20 May 2020 11:32:30 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-spi@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>
Subject: [PATCH v6 19/19] mtd: spi-nor: micron-st: allow using MT35XU512ABA in
 Octal DTR mode
Date: Wed, 20 May 2020 22:00:53 +0530
Message-ID: <20200520163053.24357-20-p.yadav@ti.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520163053.24357-1-p.yadav@ti.com>
References: <20200520163053.24357-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_093240_614296_02414EE5 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Since this flash doesn't have a Profile 1.0 table, the Octal DTR
capabilities are enabled in the post SFDP fixup, along with the 8D-8D-8D
fast read settings.

Enable Octal DTR mode with 20 dummy cycles to allow running at the
maximum supported frequency of 200Mhz.

The flash supports the soft reset sequence. So, add the flag in the
flash's info.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---
 drivers/mtd/spi-nor/micron-st.c | 112 +++++++++++++++++++++++++++++++-
 1 file changed, 111 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/micron-st.c b/drivers/mtd/spi-nor/micron-st.c
index 3dca5b9af3b6..3414c44a5c96 100644
--- a/drivers/mtd/spi-nor/micron-st.c
+++ b/drivers/mtd/spi-nor/micron-st.c
@@ -8,10 +8,120 @@
 
 #include "core.h"
 
+#define SPINOR_OP_MT_DTR_RD	0xfd	/* Fast Read opcode in DTR mode */
+#define SPINOR_OP_MT_RD_ANY_REG	0x85	/* Read volatile register */
+#define SPINOR_OP_MT_WR_ANY_REG	0x81	/* Write volatile register */
+#define SPINOR_REG_MT_CFR0V	0x00	/* For setting octal DTR mode */
+#define SPINOR_REG_MT_CFR1V	0x01	/* For setting dummy cycles */
+#define SPINOR_MT_DTR_NO_DQS	0xc7	/* Enable Octal DTR without DQS. */
+#define SPINOR_MT_EXSPI		0xff	/* Enable Extended SPI (default) */
+
+static int spi_nor_micron_octal_dtr_enable(struct spi_nor *nor, bool enable)
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
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	if (enable)
+		*buf = SPINOR_MT_DTR_NO_DQS;
+	else
+		*buf = SPINOR_MT_EXSPI;
+	op = (struct spi_mem_op)
+		SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_MT_WR_ANY_REG, 1),
+			   SPI_MEM_OP_ADDR(addr_width, SPINOR_REG_MT_CFR0V, 1),
+			   SPI_MEM_OP_NO_DUMMY,
+			   SPI_MEM_OP_DATA_OUT(1, buf, 1));
+
+	if (!enable)
+		spi_nor_spimem_setup_op(nor, &op, SNOR_PROTO_8_8_8_DTR);
+
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret) {
+		dev_err(nor->dev, "Failed to enable octal DTR mode\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int mt35xu512aba_setup(struct spi_nor *nor,
+			      const struct spi_nor_hwcaps *hwcaps)
+{
+	struct spi_mem_op op;
+	u8 *buf = nor->bouncebuf;
+	u8 addr_width = 3;
+	int ret;
+
+	if (!nor->spimem) {
+		dev_err(nor->dev,
+			"operation not supported for non-spimem drivers\n");
+		return -ENOTSUPP;
+	}
+
+	/* Set dummy cycles for Fast Read to the default of 20. */
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	*buf = 20;
+	op = (struct spi_mem_op)
+		SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_MT_WR_ANY_REG, 1),
+			   SPI_MEM_OP_ADDR(addr_width, SPINOR_REG_MT_CFR1V, 1),
+			   SPI_MEM_OP_NO_DUMMY,
+			   SPI_MEM_OP_DATA_OUT(1, buf, 1));
+	ret = spi_mem_exec_op(nor->spimem, &op);
+	if (ret)
+		return ret;
+
+	ret = spi_nor_wait_till_ready(nor);
+	if (ret)
+		return ret;
+
+
+	return spi_nor_default_setup(nor, hwcaps);
+}
+
+static void mt35xu512aba_default_init(struct spi_nor *nor)
+{
+	nor->params->octal_dtr_enable = spi_nor_micron_octal_dtr_enable;
+	nor->params->setup = mt35xu512aba_setup;
+}
+
+static void mt35xu512aba_post_sfdp_fixup(struct spi_nor *nor)
+{
+	/* Set the Fast Read settings. */
+	nor->params->hwcaps.mask |= SNOR_HWCAPS_READ_8_8_8_DTR;
+	spi_nor_set_read_settings(&nor->params->reads[SNOR_CMD_READ_8_8_8_DTR],
+				  0, 20, SPINOR_OP_MT_DTR_RD,
+				  SNOR_PROTO_8_8_8_DTR);
+
+	nor->params->hwcaps.mask |= SNOR_HWCAPS_PP_8_8_8_DTR;
+
+	nor->cmd_ext_type = SPI_NOR_EXT_REPEAT;
+	nor->params->rdsr_dummy = 8;
+	nor->params->rdsr_addr_nbytes = 0;
+}
+
+static struct spi_nor_fixups mt35xu512aba_fixups = {
+	.default_init = mt35xu512aba_default_init,
+	.post_sfdp = mt35xu512aba_post_sfdp_fixup,
+};
+
 static const struct flash_info micron_parts[] = {
 	{ "mt35xu512aba", INFO(0x2c5b1a, 0, 128 * 1024, 512,
 			       SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
-			       SPI_NOR_4B_OPCODES) },
+			       SPI_NOR_4B_OPCODES | SPI_NOR_OCTAL_DTR_READ)
+		.fixups = &mt35xu512aba_fixups},
 	{ "mt35xu02g", INFO(0x2c5b1c, 0, 128 * 1024, 2048,
 			    SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
 			    SPI_NOR_4B_OPCODES) },
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

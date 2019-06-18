Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7713A49D37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lqS3+dEXu0Zg3GsqTPYMkGTlU4uIxhj6VBZ1azGg7Ek=; b=cZ4TdgQHPFCqVP
	6wtz1RmzP6nJo0U0Co1PvTDyGynWeUupNOBWcPjazL/iqkhcsLPuJdoVCEOpOKsHVaz2eiPHal2Q8
	Qf6Ev00RXIUPeikCKTEB3faOdginshZoUsffXIxtzV/rq0NHIf5F24C10rfYI47/v9zBfvTlWQ4kj
	rRCBME02YGBIWXIKCXA829spQDlEhYdJCnx9FxIj7dhy6NarqT2ko4HdljTGh2YCPNr4wfypRhN5V
	zK7NQlnCjUaFLPJsyJuEIYcG3bG2CxRwZUbM8meihW4vme6thqCCoYMk5VusslsWPjKG/+ml3fUTq
	Uav9jlUb66ns7LJwA2dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAQh-0006zu-U4; Tue, 18 Jun 2019 09:29:27 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAPy-0006MW-4L; Tue, 18 Jun 2019 09:28:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5I9SSla126126;
 Tue, 18 Jun 2019 04:28:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560850108;
 bh=T/rmrLEHkHUZ1DbosF14ebmM0/LKBi1WZ0aqrgjwRPo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=UEWKpi6womsRVV7eNf9GWiuG60otdnE25qccB2ivN20ARMlWsoHExnFMJE4UYfKaA
 RqtL5QCHgCvuPhf9xT+iQ+TKF+vIVbvxvDzzbHQc1WWvJYtPqsgC8ZpPc95gfYCjZk
 7zBVZsjy2l7AF2jPhcNLMZ6Rs/n0N1/ehWX84shA=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5I9SSQT075050
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 04:28:28 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 04:28:28 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 04:28:28 -0500
Received: from a0132425.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5I9SJRw067156;
 Tue, 18 Jun 2019 04:28:24 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, David Woodhouse
 <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Boris
 Brezillon <bbrezillon@kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 1/5] mtd: cfi_cmdset_0002: Add support for polling status
 register
Date: Tue, 18 Jun 2019 14:58:57 +0530
Message-ID: <20190618092901.31764-2-vigneshr@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618092901.31764-1-vigneshr@ti.com>
References: <20190618092901.31764-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_022842_293314_C0FF5109 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, linux-kernel@vger.kernel.org,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HyperFlash devices are compliant with CFI AMD/Fujitsu Extended Command
Set (0x0002) for flash operations, therefore
drivers/mtd/chips/cfi_cmdset_0002.c can be used as is. But these devices
do not support DQ polling method of determining chip ready/good status.
These flashes provide Status Register whose bits can be polled to know
status of flash operation.

Cypress HyperFlash datasheet here[1], talks about CFI Amd/Fujitsu
Extended Query version 1.5. Bit 0 of "Software Features supported" field
of CFI Primary Vendor-Specific Extended Query table indicates
presence/absence of status register and Bit 1 indicates whether or not
DQ polling is supported. Using these bits, its possible to determine
whether flash supports DQ polling or need to use Status Register.

Add support for polling Status Register to know device ready/status of
erase/write operations when DQ polling is not supported.
Print error messages on erase/program failure by looking at related
Status Register bits.

[1] https://www.cypress.com/file/213346/download

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---

v6: no change

 drivers/mtd/chips/cfi_cmdset_0002.c | 90 +++++++++++++++++++++++++++++
 include/linux/mtd/cfi.h             |  5 ++
 2 files changed, 95 insertions(+)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index c8fa5906bdf9..0f571f162e3b 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -49,6 +49,16 @@
 #define SST49LF008A		0x005a
 #define AT49BV6416		0x00d6
 
+/*
+ * Status Register bit description. Used by flash devices that don't
+ * support DQ polling (e.g. HyperFlash)
+ */
+#define CFI_SR_DRB		BIT(7)
+#define CFI_SR_ESB		BIT(5)
+#define CFI_SR_PSB		BIT(4)
+#define CFI_SR_WBASB		BIT(3)
+#define CFI_SR_SLSB		BIT(1)
+
 static int cfi_amdstd_read (struct mtd_info *, loff_t, size_t, size_t *, u_char *);
 static int cfi_amdstd_write_words(struct mtd_info *, loff_t, size_t, size_t *, const u_char *);
 static int cfi_amdstd_write_buffers(struct mtd_info *, loff_t, size_t, size_t *, const u_char *);
@@ -97,6 +107,48 @@ static struct mtd_chip_driver cfi_amdstd_chipdrv = {
 	.module		= THIS_MODULE
 };
 
+/*
+ * Use status register to poll for Erase/write completion when DQ is not
+ * supported. This is indicated by Bit[1:0] of SoftwareFeatures field in
+ * CFI Primary Vendor-Specific Extended Query table 1.5
+ */
+static int cfi_use_status_reg(struct cfi_private *cfi)
+{
+	struct cfi_pri_amdstd *extp = cfi->cmdset_priv;
+
+	return extp->MinorVersion >= '5' &&
+		(extp->SoftwareFeatures & 0x3) == 0x1;
+}
+
+static void cfi_check_err_status(struct map_info *map, unsigned long adr)
+{
+	struct cfi_private *cfi = map->fldrv_priv;
+	map_word status;
+
+	if (!cfi_use_status_reg(cfi))
+		return;
+
+	cfi_send_gen_cmd(0x70, cfi->addr_unlock1, 0, map, cfi,
+			 cfi->device_type, NULL);
+	status = map_read(map, adr);
+
+	if (map_word_bitsset(map, status, CMD(0x3a))) {
+		unsigned long chipstatus = MERGESTATUS(status);
+
+		if (chipstatus & CFI_SR_ESB)
+			pr_err("%s erase operation failed, status %lx\n",
+			       map->name, chipstatus);
+		if (chipstatus & CFI_SR_PSB)
+			pr_err("%s program operation failed, status %lx\n",
+			       map->name, chipstatus);
+		if (chipstatus & CFI_SR_WBASB)
+			pr_err("%s buffer program command aborted, status %lx\n",
+			       map->name, chipstatus);
+		if (chipstatus & CFI_SR_SLSB)
+			pr_err("%s sector write protected, status %lx\n",
+			       map->name, chipstatus);
+	}
+}
 
 /* #define DEBUG_CFI_FEATURES */
 
@@ -744,8 +796,22 @@ static struct mtd_info *cfi_amdstd_setup(struct mtd_info *mtd)
  */
 static int __xipram chip_ready(struct map_info *map, unsigned long addr)
 {
+	struct cfi_private *cfi = map->fldrv_priv;
 	map_word d, t;
 
+	if (cfi_use_status_reg(cfi)) {
+		map_word ready = CMD(CFI_SR_DRB);
+		/*
+		 * For chips that support status register, check device
+		 * ready bit
+		 */
+		cfi_send_gen_cmd(0x70, cfi->addr_unlock1, 0, map, cfi,
+				 cfi->device_type, NULL);
+		d = map_read(map, addr);
+
+		return map_word_andequal(map, d, ready, ready);
+	}
+
 	d = map_read(map, addr);
 	t = map_read(map, addr);
 
@@ -769,8 +835,27 @@ static int __xipram chip_ready(struct map_info *map, unsigned long addr)
  */
 static int __xipram chip_good(struct map_info *map, unsigned long addr, map_word expected)
 {
+	struct cfi_private *cfi = map->fldrv_priv;
 	map_word oldd, curd;
 
+	if (cfi_use_status_reg(cfi)) {
+		map_word ready = CMD(CFI_SR_DRB);
+		map_word err = CMD(CFI_SR_PSB | CFI_SR_ESB);
+		/*
+		 * For chips that support status register, check device
+		 * ready bit and Erase/Program status bit to know if
+		 * operation succeeded.
+		 */
+		cfi_send_gen_cmd(0x70, cfi->addr_unlock1, 0, map, cfi,
+				 cfi->device_type, NULL);
+		curd = map_read(map, addr);
+
+		if (map_word_andequal(map, curd, ready, ready))
+			return !map_word_bitsset(map, curd, err);
+
+		return 0;
+	}
+
 	oldd = map_read(map, addr);
 	curd = map_read(map, addr);
 
@@ -1644,6 +1729,7 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
 	/* Did we succeed? */
 	if (!chip_good(map, adr, datum)) {
 		/* reset on all failures. */
+		cfi_check_err_status(map, adr);
 		map_write(map, CMD(0xF0), chip->start);
 		/* FIXME - should have reset delay before continuing */
 
@@ -1901,6 +1987,7 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
 	 * See e.g.
 	 * http://www.spansion.com/Support/Application%20Notes/MirrorBit_Write_Buffer_Prog_Page_Buffer_Read_AN.pdf
 	 */
+	cfi_check_err_status(map, adr);
 	cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
 			 cfi->device_type, NULL);
 	cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
@@ -2107,6 +2194,7 @@ static int do_panic_write_oneword(struct map_info *map, struct flchip *chip,
 
 	if (!chip_good(map, adr, datum)) {
 		/* reset on all failures. */
+		cfi_check_err_status(map, adr);
 		map_write(map, CMD(0xF0), chip->start);
 		/* FIXME - should have reset delay before continuing */
 
@@ -2316,6 +2404,7 @@ static int __xipram do_erase_chip(struct map_info *map, struct flchip *chip)
 	/* Did we succeed? */
 	if (ret) {
 		/* reset on all failures. */
+		cfi_check_err_status(map, adr);
 		map_write(map, CMD(0xF0), chip->start);
 		/* FIXME - should have reset delay before continuing */
 
@@ -2412,6 +2501,7 @@ static int __xipram do_erase_oneblock(struct map_info *map, struct flchip *chip,
 	/* Did we succeed? */
 	if (ret) {
 		/* reset on all failures. */
+		cfi_check_err_status(map, adr);
 		map_write(map, CMD(0xF0), chip->start);
 		/* FIXME - should have reset delay before continuing */
 
diff --git a/include/linux/mtd/cfi.h b/include/linux/mtd/cfi.h
index 208c87cf2e3e..b50416169049 100644
--- a/include/linux/mtd/cfi.h
+++ b/include/linux/mtd/cfi.h
@@ -219,6 +219,11 @@ struct cfi_pri_amdstd {
 	uint8_t  VppMin;
 	uint8_t  VppMax;
 	uint8_t  TopBottom;
+	/* Below field are added from version 1.5 */
+	uint8_t  ProgramSuspend;
+	uint8_t  UnlockBypass;
+	uint8_t  SecureSiliconSector;
+	uint8_t  SoftwareFeatures;
 } __packed;
 
 /* Vendor-Specific PRI for Atmel chips (command set 0x0002) */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

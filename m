Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED46525B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 09:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9KUtg8qLyP+HCj5nVxG0RMJKU1FMB4wEKEA8yeMOMk=; b=DHWFEUBPzJ6TUR
	p++6P+PUamOrXyP5+P1VfuUyoMj4AgoPRuoUhjvcFzS5pw+cz3ba7E9x+7pD9Q0JbT35zjydZhzOk
	Jx26MxlcFFbeuJEVMyOsiC8di4Pw0UnqeYIbm2pfnc6R3yy/6dFq07d0rh3tO+FBucLUbRGp4OXLv
	lGRqYl5YqrMsvL8CrKaTOKJwoCa5RPmBVQb04pFvLG8NQhv9I2vWBgAXga7uDKbyaFmUaNYf4LPwS
	b4GucOTDtuF5tcBFG5gHgGdYYwVUZ+bt0FINysDK6USlGl4V9vydpCDzu5E3yXttLuO9so4029R5i
	U2IL7DllDN4xzPtw+bDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgLu-0003GJ-5G; Tue, 25 Jun 2019 07:58:54 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgKm-0002f9-UO; Tue, 25 Jun 2019 07:57:47 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5P7veop104914;
 Tue, 25 Jun 2019 02:57:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561449460;
 bh=16mEf3r3Wytn6X8dYhINh64WrBtmUeJd+Yu7HR4pedA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=TECM+Yimif9bhto9ICr6TLwlyFys2ijwf0RTCAt7AuR0KiJpndC1pQBTzfRIYi2vP
 Kc7soRBVuvVp+RtNO8h2eyX8pzD7XdaH8+HJcOVjaJwZqiFzQUTXDVuKhsBYznHqRu
 /QXaZHFH/VnYjr1i3LDRcRvqB/g77Px96+wIlZA0=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5P7veP6067578
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Jun 2019 02:57:40 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 25
 Jun 2019 02:57:40 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 25 Jun 2019 02:57:40 -0500
Received: from a0132425.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5P7vWTh105511;
 Tue, 25 Jun 2019 02:57:36 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Boris Brezillon
 <bbrezillon@kernel.org>, Marek Vasut <marek.vasut@gmail.com>, Richard
 Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v8 1/5] mtd: cfi_cmdset_0002: Add support for polling status
 register
Date: Tue, 25 Jun 2019 13:27:42 +0530
Message-ID: <20190625075746.10439-2-vigneshr@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190625075746.10439-1-vigneshr@ti.com>
References: <20190625075746.10439-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005745_064775_640CC048 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Tokunori Ikegami <ikegami.t@gmail.com>, linux-kernel@vger.kernel.org,
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
v8:
Fix up status register polling to support banked flashes in patch 1/5.


 drivers/mtd/chips/cfi_cmdset_0002.c | 130 ++++++++++++++++++++++++----
 include/linux/mtd/cfi.h             |   7 ++
 2 files changed, 120 insertions(+), 17 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index c8fa5906bdf9..09f8aaf1e763 100644
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
@@ -97,6 +107,50 @@ static struct mtd_chip_driver cfi_amdstd_chipdrv = {
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
+	u8 poll_mask = CFI_POLL_STATUS_REG | CFI_POLL_DQ;
+
+	return extp->MinorVersion >= '5' &&
+		(extp->SoftwareFeatures & poll_mask) == CFI_POLL_STATUS_REG;
+}
+
+static void cfi_check_err_status(struct map_info *map, struct flchip *chip,
+				 unsigned long adr)
+{
+	struct cfi_private *cfi = map->fldrv_priv;
+	map_word status;
+
+	if (!cfi_use_status_reg(cfi))
+		return;
+
+	cfi_send_gen_cmd(0x70, cfi->addr_unlock1, chip->start, map, cfi,
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
 
@@ -742,10 +796,25 @@ static struct mtd_info *cfi_amdstd_setup(struct mtd_info *mtd)
  * correctly and is therefore not done	(particularly with interleaved chips
  * as each chip must be checked independently of the others).
  */
-static int __xipram chip_ready(struct map_info *map, unsigned long addr)
+static int __xipram chip_ready(struct map_info *map, struct flchip *chip,
+			       unsigned long addr)
 {
+	struct cfi_private *cfi = map->fldrv_priv;
 	map_word d, t;
 
+	if (cfi_use_status_reg(cfi)) {
+		map_word ready = CMD(CFI_SR_DRB);
+		/*
+		 * For chips that support status register, check device
+		 * ready bit
+		 */
+		cfi_send_gen_cmd(0x70, cfi->addr_unlock1, chip->start, map, cfi,
+				 cfi->device_type, NULL);
+		d = map_read(map, addr);
+
+		return map_word_andequal(map, d, ready, ready);
+	}
+
 	d = map_read(map, addr);
 	t = map_read(map, addr);
 
@@ -767,10 +836,30 @@ static int __xipram chip_ready(struct map_info *map, unsigned long addr)
  * as each chip must be checked independently of the others).
  *
  */
-static int __xipram chip_good(struct map_info *map, unsigned long addr, map_word expected)
+static int __xipram chip_good(struct map_info *map, struct flchip *chip,
+			      unsigned long addr, map_word expected)
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
+		cfi_send_gen_cmd(0x70, cfi->addr_unlock1, chip->start, map, cfi,
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
 
@@ -792,7 +881,7 @@ static int get_chip(struct map_info *map, struct flchip *chip, unsigned long adr
 
 	case FL_STATUS:
 		for (;;) {
-			if (chip_ready(map, adr))
+			if (chip_ready(map, chip, adr))
 				break;
 
 			if (time_after(jiffies, timeo)) {
@@ -830,7 +919,7 @@ static int get_chip(struct map_info *map, struct flchip *chip, unsigned long adr
 		chip->state = FL_ERASE_SUSPENDING;
 		chip->erase_suspended = 1;
 		for (;;) {
-			if (chip_ready(map, adr))
+			if (chip_ready(map, chip, adr))
 				break;
 
 			if (time_after(jiffies, timeo)) {
@@ -1362,7 +1451,7 @@ static int do_otp_lock(struct map_info *map, struct flchip *chip, loff_t adr,
 	/* wait for chip to become ready */
 	timeo = jiffies + msecs_to_jiffies(2);
 	for (;;) {
-		if (chip_ready(map, adr))
+		if (chip_ready(map, chip, adr))
 			break;
 
 		if (time_after(jiffies, timeo)) {
@@ -1628,22 +1717,24 @@ static int __xipram do_write_oneword(struct map_info *map, struct flchip *chip,
 			continue;
 		}
 
-		if (time_after(jiffies, timeo) && !chip_ready(map, adr)){
+		if (time_after(jiffies, timeo) &&
+		    !chip_ready(map, chip, adr)) {
 			xip_enable(map, chip, adr);
 			printk(KERN_WARNING "MTD %s(): software timeout\n", __func__);
 			xip_disable(map, chip, adr);
 			break;
 		}
 
-		if (chip_ready(map, adr))
+		if (chip_ready(map, chip, adr))
 			break;
 
 		/* Latency issues. Drop the lock, wait a while and retry */
 		UDELAY(map, chip, adr, 1);
 	}
 	/* Did we succeed? */
-	if (!chip_good(map, adr, datum)) {
+	if (!chip_good(map, chip, adr, datum)) {
 		/* reset on all failures. */
+		cfi_check_err_status(map, chip, adr);
 		map_write(map, CMD(0xF0), chip->start);
 		/* FIXME - should have reset delay before continuing */
 
@@ -1881,10 +1972,11 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
 		 * We check "time_after" and "!chip_good" before checking "chip_good" to avoid
 		 * the failure due to scheduling.
 		 */
-		if (time_after(jiffies, timeo) && !chip_good(map, adr, datum))
+		if (time_after(jiffies, timeo) &&
+		    !chip_good(map, chip, adr, datum))
 			break;
 
-		if (chip_good(map, adr, datum)) {
+		if (chip_good(map, chip, adr, datum)) {
 			xip_enable(map, chip, adr);
 			goto op_done;
 		}
@@ -1901,6 +1993,7 @@ static int __xipram do_write_buffer(struct map_info *map, struct flchip *chip,
 	 * See e.g.
 	 * http://www.spansion.com/Support/Application%20Notes/MirrorBit_Write_Buffer_Prog_Page_Buffer_Read_AN.pdf
 	 */
+	cfi_check_err_status(map, chip, adr);
 	cfi_send_gen_cmd(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
 			 cfi->device_type, NULL);
 	cfi_send_gen_cmd(0x55, cfi->addr_unlock2, chip->start, map, cfi,
@@ -2018,7 +2111,7 @@ static int cfi_amdstd_panic_wait(struct map_info *map, struct flchip *chip,
 	 * If the driver thinks the chip is idle, and no toggle bits
 	 * are changing, then the chip is actually idle for sure.
 	 */
-	if (chip->state == FL_READY && chip_ready(map, adr))
+	if (chip->state == FL_READY && chip_ready(map, chip, adr))
 		return 0;
 
 	/*
@@ -2035,7 +2128,7 @@ static int cfi_amdstd_panic_wait(struct map_info *map, struct flchip *chip,
 
 		/* wait for the chip to become ready */
 		for (i = 0; i < jiffies_to_usecs(timeo); i++) {
-			if (chip_ready(map, adr))
+			if (chip_ready(map, chip, adr))
 				return 0;
 
 			udelay(1);
@@ -2099,14 +2192,15 @@ static int do_panic_write_oneword(struct map_info *map, struct flchip *chip,
 	map_write(map, datum, adr);
 
 	for (i = 0; i < jiffies_to_usecs(uWriteTimeout); i++) {
-		if (chip_ready(map, adr))
+		if (chip_ready(map, chip, adr))
 			break;
 
 		udelay(1);
 	}
 
-	if (!chip_good(map, adr, datum)) {
+	if (!chip_good(map, chip, adr, datum)) {
 		/* reset on all failures. */
+		cfi_check_err_status(map, chip, adr);
 		map_write(map, CMD(0xF0), chip->start);
 		/* FIXME - should have reset delay before continuing */
 
@@ -2300,7 +2394,7 @@ static int __xipram do_erase_chip(struct map_info *map, struct flchip *chip)
 			chip->erase_suspended = 0;
 		}
 
-		if (chip_good(map, adr, map_word_ff(map)))
+		if (chip_good(map, chip, adr, map_word_ff(map)))
 			break;
 
 		if (time_after(jiffies, timeo)) {
@@ -2316,6 +2410,7 @@ static int __xipram do_erase_chip(struct map_info *map, struct flchip *chip)
 	/* Did we succeed? */
 	if (ret) {
 		/* reset on all failures. */
+		cfi_check_err_status(map, chip, adr);
 		map_write(map, CMD(0xF0), chip->start);
 		/* FIXME - should have reset delay before continuing */
 
@@ -2396,7 +2491,7 @@ static int __xipram do_erase_oneblock(struct map_info *map, struct flchip *chip,
 			chip->erase_suspended = 0;
 		}
 
-		if (chip_good(map, adr, map_word_ff(map)))
+		if (chip_good(map, chip, adr, map_word_ff(map)))
 			break;
 
 		if (time_after(jiffies, timeo)) {
@@ -2412,6 +2507,7 @@ static int __xipram do_erase_oneblock(struct map_info *map, struct flchip *chip,
 	/* Did we succeed? */
 	if (ret) {
 		/* reset on all failures. */
+		cfi_check_err_status(map, chip, adr);
 		map_write(map, CMD(0xF0), chip->start);
 		/* FIXME - should have reset delay before continuing */
 
@@ -2589,7 +2685,7 @@ static int __maybe_unused do_ppb_xxlock(struct map_info *map,
 	 */
 	timeo = jiffies + msecs_to_jiffies(2000);	/* 2s max (un)locking */
 	for (;;) {
-		if (chip_ready(map, adr))
+		if (chip_ready(map, chip, adr))
 			break;
 
 		if (time_after(jiffies, timeo)) {
diff --git a/include/linux/mtd/cfi.h b/include/linux/mtd/cfi.h
index 208c87cf2e3e..c98a21108688 100644
--- a/include/linux/mtd/cfi.h
+++ b/include/linux/mtd/cfi.h
@@ -219,6 +219,13 @@ struct cfi_pri_amdstd {
 	uint8_t  VppMin;
 	uint8_t  VppMax;
 	uint8_t  TopBottom;
+	/* Below field are added from version 1.5 */
+	uint8_t  ProgramSuspend;
+	uint8_t  UnlockBypass;
+	uint8_t  SecureSiliconSector;
+	uint8_t  SoftwareFeatures;
+#define CFI_POLL_STATUS_REG	BIT(0)
+#define CFI_POLL_DQ		BIT(1)
 } __packed;
 
 /* Vendor-Specific PRI for Atmel chips (command set 0x0002) */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 257F0184F66
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pky5FGnmanwHoNnexiLJfLq8o9BkfaGnUkQZzAQS3PM=; b=aF3FbPoA5xZTA2
	msWYczRnCBWF0qhQJ3rKvmBqG9J/UkhpcFDOoiMuqr+Uf9PABzGexcPQ9/dLY9gSjWS0nkQ9D4Cyz
	YMqmtSPwTssgH7BAWynexsj5tdJ4P6V9YUJX+nHiKG0OLOXYdIYZE5PdEA+riSCqhWvyGRw1+vCdk
	2e+GjhDLbmQ+Ep5DjvDNI9lSDT8lCinO/AByN9wR2NEzF2Ip25PJtdbkfNR8CKeddWzMKRSx4B8FP
	jUrI/GaYdaIIEGjLb4reUA4jQpUpNw25qSBAOQ6QJVChkm0TWNV8pRITRCQ+0ES5n9OVICfZeNDzK
	pXMguCQKc6ktmbfBZp+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqEL-0000dM-QP; Fri, 13 Mar 2020 19:44:25 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCi-0008Gk-HY; Fri, 13 Mar 2020 19:42:48 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: aUqavz+nDw/VElYOiCq75R29xTSzHkQ7PCZHGyQjQNZxajcVg9/mFY4k+htHm/PPuzo50kEGSP
 o8P88JLUfN27r0INb1DyxYh/WzXzkiriHqc3pi3dipl3SlNP57+UITb2zoF91eFqOLlxLcCD0w
 3b4pLSTM3cxIhFUnwV07hV0AajVGm4eA5jXESYdPRx8ozgbLqfQ9D0MxUkDp2WTbizfV2dibH2
 UejkOYVqyizzvyGNvPhwZSXRrBxzMtMD3MN1mBxVakVmdovPt8Ku60BVW5nIyxbfmXysNBwf2f
 kQ8=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="68809647"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:41 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WPC2M4AVm6Oj8gAX7S22Sf2vUBjPyiboMhnP470wsc9wqUn+aWfAX73Pyj3rE2vjJaRWe9gdVOQPIK4yR1RDmFZ1E4jbDcKh3aAi2s4f0eVf8rgsg8JA3OGcryP5sglugTupcqucx5iy+RLmYOjo5hZJQSi6mLBnUcusDkeMJBm2sm6COHIm+/GIoIobjtr87ICS4XVqBTo7qU/euJGswqptrTXslRgKFum47BcrbAW16sHMTAWE7ev2emFdAqmjgho8b5r3juMSVhSJj8j8Sn4393xDDklD82/2Qqf/MelLmszVZp6nO5ehDCrqVMW95xbBl7kUaIzW8eThyaDJIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XLJOKxna/3VtvafS5Gpihe4PD9Ou5ROST7XcLqkd+fs=;
 b=kod2Ax4C6Nn2zFpkwIP7r5WWCBZCoO2sJNxJR5l+43bG2kqKzjz5eLu9fZvEuKsYVLq74wEz1bXV28DMqD8ZRpK2x3wUDWXOxjCMFxe+ND1JpwIUuQn/dUgTj1OeF+Bg//NY8EDcKfZw+nequL+AlL6bat3OK/YThjLSluLDiS/Xwmi0uMrgsxYVsQh4FCrzBWZtc3lPhtkt4golKTklNqmoKYnBet7ldinVrZgQTNDnLssKeScdMmmJOXwsgVwr4O0w9zpdWVjujZKiE1Ei1S/A66iA4yJYUpTCCcNghl8FTgQFtxYw24ukikm7LduTEtb7cg4xlgy+zGLYdjYtqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XLJOKxna/3VtvafS5Gpihe4PD9Ou5ROST7XcLqkd+fs=;
 b=URUlZnSl8ycz/flBNn8jlQJyXR+3w+tknnZ1Slgt0LQicxWHnE+xTeup582VQiQ7MVmsx4XufKx7MRHoks4mOTbhQQJ6as745+QhU1NLECBrgZ8e1s5W4Q6AsxUqK0Eg0q1bUajPzU6eGREn58syBkNfbzT0kIJ1HnOg2INIg7k=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4399.namprd11.prod.outlook.com (2603:10b6:208:17b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Fri, 13 Mar
 2020 19:42:38 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:38 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 05/25] mtd: spi-nor: Expose stuctures and functions to
 manufacturer drivers
Thread-Topic: [PATCH v2 05/25] mtd: spi-nor: Expose stuctures and functions to
 manufacturer drivers
Thread-Index: AQHV+W+N3Kx2dvzMfUGhunbs9Is0kQ==
Date: Fri, 13 Mar 2020 19:42:38 +0000
Message-ID: <20200313194130.342251-6-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ecb48f7-3056-4e70-3b95-08d7c786afdc
x-ms-traffictypediagnostic: MN2PR11MB4399:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB439941DA58793DF03CF08F6CF0FA0@MN2PR11MB4399.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(396003)(366004)(39860400002)(199004)(316002)(2616005)(186003)(71200400001)(81156014)(110136005)(26005)(86362001)(107886003)(8936002)(30864003)(54906003)(6512007)(8676002)(76116006)(91956017)(66946007)(66556008)(66476007)(66446008)(64756008)(81166006)(478600001)(4326008)(5660300002)(1076003)(6506007)(6486002)(36756003)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4399;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: krlvatJo55mIiMaak03OnIg7v92fag66zUayqn+pQ4l7BNxTx3tF4ekVUga9w0ptiDdzNZMJFatCDX5CLaOqrFbXponPVOc3HkugIQUsw18lAYnN8hN0ohT7lg3lxluINPkqgKPCSVz2qU9jPyoAtCcwwlwlVrpEB24iRy7dOtBP/Aoz/oeW2t08o9euiOkgKMK/HH1SeHraYy3W95hVYFk8WENOoCQXQpf0+anlnq0D0Nm5Sb8KqDjsUY1juuUzjBR7NSTy5JRAjkthdudCtl0PR7+rdkiffXD4/n9QaPAsvbfhRgvwDwXWz85lGLVq29Rpwe4xuenGBMu/6endV7W9j7hWDvha489YrhxjrC/6GkgmNQq/O0QQ+mmGYdkV3/2Pi63I/2LXDTdrAGgM5/5drLCgEvyKBXpEkyLLnKnWnVnsvgsb+ot2GysSSUeD
x-ms-exchange-antispam-messagedata: zrf+m48bf9lufRmKoTi5ukYJI8+GMPNwpc0IFXuvnxJJBc3UUnxrMidLhF/dqUHTEXHxt2t0ZJU/xpjce2Ywu08qD43rsYSH+bWtouKGqD7faQimF8b3TvHApE9gLoOBXHTqaT255lMx5on2OVOBqA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ecb48f7-3056-4e70-3b95-08d7c786afdc
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:38.4756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xc6ZwdaIynec0Zs8yH4eLxf1xLp+6YiJobVMDu74CwnIvD8ZA2BZoeAMqVpdZDXVb+K0SgtuMvHGivVsLZXKBf89yAJhVLCNNkMUo1fMlkw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124244_947474_6A677278 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: richard@nod.at, Tudor.Ambarus@microchip.com, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

Expose the flash_info struct and the generic set_4byte() implementations.
Some manufacturers rely on the generic set_4byte() implementations.
Remove the static specifier and expose their prototypes in core.h.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/core.c | 169 +++----------------------------------
 drivers/mtd/spi-nor/core.h | 158 ++++++++++++++++++++++++++++++++++
 2 files changed, 169 insertions(+), 158 deletions(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 4ae79c1c8bec..aae94e4250f6 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -38,101 +38,9 @@
  */
 #define CHIP_ERASE_2MB_READY_WAIT_JIFFIES	(40UL * HZ)
 
-#define SPI_NOR_MAX_ID_LEN	6
 #define SPI_NOR_MAX_ADDR_WIDTH	4
 
-/**
- * struct spi_nor_fixups - SPI NOR fixup hooks
- * @default_init: called after default flash parameters init. Used to tweak
- *                flash parameters when information provided by the flash_info
- *                table is incomplete or wrong.
- * @post_bfpt: called after the BFPT table has been parsed
- * @post_sfdp: called after SFDP has been parsed (is also called for SPI NORs
- *             that do not support RDSFDP). Typically used to tweak various
- *             parameters that could not be extracted by other means (i.e.
- *             when information provided by the SFDP/flash_info tables are
- *             incomplete or wrong).
- *
- * Those hooks can be used to tweak the SPI NOR configuration when the SFDP
- * table is broken or not available.
- */
-struct spi_nor_fixups {
-	void (*default_init)(struct spi_nor *nor);
-	int (*post_bfpt)(struct spi_nor *nor,
-			 const struct sfdp_parameter_header *bfpt_header,
-			 const struct sfdp_bfpt *bfpt,
-			 struct spi_nor_flash_parameter *params);
-	void (*post_sfdp)(struct spi_nor *nor);
-};
-
-struct flash_info {
-	char		*name;
-
-	/*
-	 * This array stores the ID bytes.
-	 * The first three bytes are the JEDIC ID.
-	 * JEDEC ID zero means "no ID" (mostly older chips).
-	 */
-	u8		id[SPI_NOR_MAX_ID_LEN];
-	u8		id_len;
-
-	/* The size listed here is what works with SPINOR_OP_SE, which isn't
-	 * necessarily called a "sector" by the vendor.
-	 */
-	unsigned	sector_size;
-	u16		n_sectors;
-
-	u16		page_size;
-	u16		addr_width;
-
-	u32		flags;
-#define SECT_4K			BIT(0)	/* SPINOR_OP_BE_4K works uniformly */
-#define SPI_NOR_NO_ERASE	BIT(1)	/* No erase command needed */
-#define SST_WRITE		BIT(2)	/* use SST byte programming */
-#define SPI_NOR_NO_FR		BIT(3)	/* Can't do fastread */
-#define SECT_4K_PMC		BIT(4)	/* SPINOR_OP_BE_4K_PMC works uniformly */
-#define SPI_NOR_DUAL_READ	BIT(5)	/* Flash supports Dual Read */
-#define SPI_NOR_QUAD_READ	BIT(6)	/* Flash supports Quad Read */
-#define USE_FSR			BIT(7)	/* use flag status register */
-#define SPI_NOR_HAS_LOCK	BIT(8)	/* Flash supports lock/unlock via SR */
-#define SPI_NOR_HAS_TB		BIT(9)	/*
-					 * Flash SR has Top/Bottom (TB) protect
-					 * bit. Must be used with
-					 * SPI_NOR_HAS_LOCK.
-					 */
-#define SPI_NOR_XSR_RDY		BIT(10)	/*
-					 * S3AN flashes have specific opcode to
-					 * read the status register.
-					 * Flags SPI_NOR_XSR_RDY and SPI_S3AN
-					 * use the same bit as one implies the
-					 * other, but we will get rid of
-					 * SPI_S3AN soon.
-					 */
-#define	SPI_S3AN		BIT(10)	/*
-					 * Xilinx Spartan 3AN In-System Flash
-					 * (MFR cannot be used for probing
-					 * because it has the same value as
-					 * ATMEL flashes)
-					 */
-#define SPI_NOR_4B_OPCODES	BIT(11)	/*
-					 * Use dedicated 4byte address op codes
-					 * to support memory size above 128Mib.
-					 */
-#define NO_CHIP_ERASE		BIT(12) /* Chip does not support chip erase */
-#define SPI_NOR_SKIP_SFDP	BIT(13)	/* Skip parsing of SFDP tables */
-#define USE_CLSR		BIT(14)	/* use CLSR command */
-#define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
-#define SPI_NOR_TB_SR_BIT6	BIT(16)	/*
-					 * Top/Bottom (TB) is bit 6 of
-					 * status register. Must be used with
-					 * SPI_NOR_HAS_TB.
-					 */
-
-	/* Part specific fixup hooks. */
-	const struct spi_nor_fixups *fixups;
-};
-
-#define JEDEC_MFR(info)	((info)->id[0])
+#define JEDEC_MFR(info)        ((info)->id[0])
 
 /**
  * spi_nor_spimem_bounce() - check if a bounce buffer is needed for the data
@@ -295,8 +203,8 @@ static ssize_t spi_nor_spimem_write_data(struct spi_nor *nor, loff_t to,
  *
  * Return: number of bytes written successfully, -errno otherwise
  */
-static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
-				  const u8 *buf)
+ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
+			   const u8 *buf)
 {
 	if (nor->spimem)
 		return spi_nor_spimem_write_data(nor, to, len, buf);
@@ -310,7 +218,7 @@ static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_write_enable(struct spi_nor *nor)
+int spi_nor_write_enable(struct spi_nor *nor)
 {
 	int ret;
 
@@ -339,7 +247,7 @@ static int spi_nor_write_enable(struct spi_nor *nor)
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_write_disable(struct spi_nor *nor)
+int spi_nor_write_disable(struct spi_nor *nor)
 {
 	int ret;
 
@@ -463,7 +371,7 @@ static int spi_nor_read_cr(struct spi_nor *nor, u8 *cr)
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
+int spi_nor_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
@@ -556,7 +464,7 @@ static int spansion_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
+int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
 {
 	int ret;
 
@@ -621,7 +529,7 @@ static int winbond_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
+int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
 {
 	int ret;
 
@@ -834,7 +742,7 @@ static int spi_nor_wait_till_ready_with_timeout(struct spi_nor *nor,
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_wait_till_ready(struct spi_nor *nor)
+int spi_nor_wait_till_ready(struct spi_nor *nor)
 {
 	return spi_nor_wait_till_ready_with_timeout(nor,
 						    DEFAULT_READY_WAIT_JIFFIES);
@@ -1142,11 +1050,6 @@ static int spi_nor_erase_chip(struct spi_nor *nor)
 	return ret;
 }
 
-static struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
-{
-	return mtd->priv;
-}
-
 static u8 spi_nor_convert_opcode(u8 opcode, const u8 table[][2], size_t size)
 {
 	size_t i;
@@ -1225,7 +1128,7 @@ static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
 	}
 }
 
-static int spi_nor_lock_and_prep(struct spi_nor *nor)
+int spi_nor_lock_and_prep(struct spi_nor *nor)
 {
 	int ret = 0;
 
@@ -1241,7 +1144,7 @@ static int spi_nor_lock_and_prep(struct spi_nor *nor)
 	return ret;
 }
 
-static void spi_nor_unlock_and_unprep(struct spi_nor *nor)
+void spi_nor_unlock_and_unprep(struct spi_nor *nor)
 {
 	if (nor->controller_ops && nor->controller_ops->unprepare)
 		nor->controller_ops->unprepare(nor);
@@ -2104,56 +2007,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
 	return 0;
 }
 
-/* Used when the "_ext_id" is two bytes at most */
-#define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
-		.id = {							\
-			((_jedec_id) >> 16) & 0xff,			\
-			((_jedec_id) >> 8) & 0xff,			\
-			(_jedec_id) & 0xff,				\
-			((_ext_id) >> 8) & 0xff,			\
-			(_ext_id) & 0xff,				\
-			},						\
-		.id_len = (!(_jedec_id) ? 0 : (3 + ((_ext_id) ? 2 : 0))),	\
-		.sector_size = (_sector_size),				\
-		.n_sectors = (_n_sectors),				\
-		.page_size = 256,					\
-		.flags = (_flags),
-
-#define INFO6(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
-		.id = {							\
-			((_jedec_id) >> 16) & 0xff,			\
-			((_jedec_id) >> 8) & 0xff,			\
-			(_jedec_id) & 0xff,				\
-			((_ext_id) >> 16) & 0xff,			\
-			((_ext_id) >> 8) & 0xff,			\
-			(_ext_id) & 0xff,				\
-			},						\
-		.id_len = 6,						\
-		.sector_size = (_sector_size),				\
-		.n_sectors = (_n_sectors),				\
-		.page_size = 256,					\
-		.flags = (_flags),
-
-#define CAT25_INFO(_sector_size, _n_sectors, _page_size, _addr_width, _flags)	\
-		.sector_size = (_sector_size),				\
-		.n_sectors = (_n_sectors),				\
-		.page_size = (_page_size),				\
-		.addr_width = (_addr_width),				\
-		.flags = (_flags),
-
-#define S3AN_INFO(_jedec_id, _n_sectors, _page_size)			\
-		.id = {							\
-			((_jedec_id) >> 16) & 0xff,			\
-			((_jedec_id) >> 8) & 0xff,			\
-			(_jedec_id) & 0xff				\
-			},						\
-		.id_len = 3,						\
-		.sector_size = (8*_page_size),				\
-		.n_sectors = (_n_sectors),				\
-		.page_size = _page_size,				\
-		.addr_width = 3,					\
-		.flags = SPI_NOR_NO_FR | SPI_S3AN,
-
 static int
 is25lp256_post_bfpt_fixups(struct spi_nor *nor,
 			   const struct sfdp_parameter_header *bfpt_header,
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index e1256fe50d12..abec65081519 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -9,12 +9,165 @@
 
 #include "sfdp.h"
 
+#define SPI_NOR_MAX_ID_LEN	6
+
+/**
+ * struct spi_nor_fixups - SPI NOR fixup hooks
+ * @default_init: called after default flash parameters init. Used to tweak
+ *                flash parameters when information provided by the flash_info
+ *                table is incomplete or wrong.
+ * @post_bfpt: called after the BFPT table has been parsed
+ * @post_sfdp: called after SFDP has been parsed (is also called for SPI NORs
+ *             that do not support RDSFDP). Typically used to tweak various
+ *             parameters that could not be extracted by other means (i.e.
+ *             when information provided by the SFDP/flash_info tables are
+ *             incomplete or wrong).
+ *
+ * Those hooks can be used to tweak the SPI NOR configuration when the SFDP
+ * table is broken or not available.
+ */
+struct spi_nor_fixups {
+	void (*default_init)(struct spi_nor *nor);
+	int (*post_bfpt)(struct spi_nor *nor,
+			 const struct sfdp_parameter_header *bfpt_header,
+			 const struct sfdp_bfpt *bfpt,
+			 struct spi_nor_flash_parameter *params);
+	void (*post_sfdp)(struct spi_nor *nor);
+};
+
+struct flash_info {
+	char		*name;
+
+	/*
+	 * This array stores the ID bytes.
+	 * The first three bytes are the JEDIC ID.
+	 * JEDEC ID zero means "no ID" (mostly older chips).
+	 */
+	u8		id[SPI_NOR_MAX_ID_LEN];
+	u8		id_len;
+
+	/* The size listed here is what works with SPINOR_OP_SE, which isn't
+	 * necessarily called a "sector" by the vendor.
+	 */
+	unsigned	sector_size;
+	u16		n_sectors;
+
+	u16		page_size;
+	u16		addr_width;
+
+	u32		flags;
+#define SECT_4K			BIT(0)	/* SPINOR_OP_BE_4K works uniformly */
+#define SPI_NOR_NO_ERASE	BIT(1)	/* No erase command needed */
+#define SST_WRITE		BIT(2)	/* use SST byte programming */
+#define SPI_NOR_NO_FR		BIT(3)	/* Can't do fastread */
+#define SECT_4K_PMC		BIT(4)	/* SPINOR_OP_BE_4K_PMC works uniformly */
+#define SPI_NOR_DUAL_READ	BIT(5)	/* Flash supports Dual Read */
+#define SPI_NOR_QUAD_READ	BIT(6)	/* Flash supports Quad Read */
+#define USE_FSR			BIT(7)	/* use flag status register */
+#define SPI_NOR_HAS_LOCK	BIT(8)	/* Flash supports lock/unlock via SR */
+#define SPI_NOR_HAS_TB		BIT(9)	/*
+					 * Flash SR has Top/Bottom (TB) protect
+					 * bit. Must be used with
+					 * SPI_NOR_HAS_LOCK.
+					 */
+#define SPI_NOR_XSR_RDY		BIT(10)	/*
+					 * S3AN flashes have specific opcode to
+					 * read the status register.
+					 * Flags SPI_NOR_XSR_RDY and SPI_S3AN
+					 * use the same bit as one implies the
+					 * other, but we will get rid of
+					 * SPI_S3AN soon.
+					 */
+#define	SPI_S3AN		BIT(10)	/*
+					 * Xilinx Spartan 3AN In-System Flash
+					 * (MFR cannot be used for probing
+					 * because it has the same value as
+					 * ATMEL flashes)
+					 */
+#define SPI_NOR_4B_OPCODES	BIT(11)	/*
+					 * Use dedicated 4byte address op codes
+					 * to support memory size above 128Mib.
+					 */
+#define NO_CHIP_ERASE		BIT(12) /* Chip does not support chip erase */
+#define SPI_NOR_SKIP_SFDP	BIT(13)	/* Skip parsing of SFDP tables */
+#define USE_CLSR		BIT(14)	/* use CLSR command */
+#define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
+#define SPI_NOR_TB_SR_BIT6	BIT(16)	/*
+					 * Top/Bottom (TB) is bit 6 of
+					 * status register. Must be used with
+					 * SPI_NOR_HAS_TB.
+					 */
+
+	/* Part specific fixup hooks. */
+	const struct spi_nor_fixups *fixups;
+};
+
+/* Used when the "_ext_id" is two bytes at most */
+#define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
+		.id = {							\
+			((_jedec_id) >> 16) & 0xff,			\
+			((_jedec_id) >> 8) & 0xff,			\
+			(_jedec_id) & 0xff,				\
+			((_ext_id) >> 8) & 0xff,			\
+			(_ext_id) & 0xff,				\
+			},						\
+		.id_len = (!(_jedec_id) ? 0 : (3 + ((_ext_id) ? 2 : 0))),	\
+		.sector_size = (_sector_size),				\
+		.n_sectors = (_n_sectors),				\
+		.page_size = 256,					\
+		.flags = (_flags),
+
+#define INFO6(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
+		.id = {							\
+			((_jedec_id) >> 16) & 0xff,			\
+			((_jedec_id) >> 8) & 0xff,			\
+			(_jedec_id) & 0xff,				\
+			((_ext_id) >> 16) & 0xff,			\
+			((_ext_id) >> 8) & 0xff,			\
+			(_ext_id) & 0xff,				\
+			},						\
+		.id_len = 6,						\
+		.sector_size = (_sector_size),				\
+		.n_sectors = (_n_sectors),				\
+		.page_size = 256,					\
+		.flags = (_flags),
+
+#define CAT25_INFO(_sector_size, _n_sectors, _page_size, _addr_width, _flags)	\
+		.sector_size = (_sector_size),				\
+		.n_sectors = (_n_sectors),				\
+		.page_size = (_page_size),				\
+		.addr_width = (_addr_width),				\
+		.flags = (_flags),
+
+#define S3AN_INFO(_jedec_id, _n_sectors, _page_size)			\
+		.id = {							\
+			((_jedec_id) >> 16) & 0xff,			\
+			((_jedec_id) >> 8) & 0xff,			\
+			(_jedec_id) & 0xff				\
+			},						\
+		.id_len = 3,						\
+		.sector_size = (8*_page_size),				\
+		.n_sectors = (_n_sectors),				\
+		.page_size = _page_size,				\
+		.addr_width = 3,					\
+		.flags = SPI_NOR_NO_FR | SPI_S3AN,
+
+int spi_nor_write_enable(struct spi_nor *nor);
+int spi_nor_write_disable(struct spi_nor *nor);
+int spi_nor_set_4byte_addr_mode(struct spi_nor *nor, bool enable);
+int spi_nor_write_ear(struct spi_nor *nor, u8 ear);
+int spi_nor_wait_till_ready(struct spi_nor *nor);
+int spi_nor_lock_and_prep(struct spi_nor *nor);
+void spi_nor_unlock_and_unprep(struct spi_nor *nor);
 int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor);
 int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor);
 int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor);
 
+int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr);
 ssize_t spi_nor_read_data(struct spi_nor *nor, loff_t from, size_t len,
 			  u8 *buf);
+ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
+			   const u8 *buf);
 
 int spi_nor_hwcaps_read2cmd(u32 hwcaps);
 u8 spi_nor_convert_3to4_read(u8 opcode);
@@ -33,4 +186,9 @@ int spi_nor_post_bfpt_fixups(struct spi_nor *nor,
 			     const struct sfdp_bfpt *bfpt,
 			     struct spi_nor_flash_parameter *params);
 
+static struct spi_nor __maybe_unused *mtd_to_spi_nor(struct mtd_info *mtd)
+{
+	return mtd->priv;
+}
+
 #endif /* __LINUX_MTD_SPI_NOR_INTERNAL_H */
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

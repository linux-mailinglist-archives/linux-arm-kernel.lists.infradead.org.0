Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C59B176204
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:09:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wGaXN+73SOkV8b8ecEv5n45sPKvma2SgNcT+sPUfmc=; b=JBl6XbRpCvo6dV
	hWWEe3k5uqs4LC0aRd6i5tVWCXfQprHkz2tBe3EsbiIt3uo2OiljxYKPYFK2HQ4Itmd0w0/a28LIi
	lFW6tD40jDH1nrjl11hlcGl2IlgJPTyWeBOb8sSeoKtgKy9WSzQZQZoFIZeVgNJ1YS8kaGliKGD7i
	c5HSUrBUR1KmiybNDWM2pUoenZxtcXrPowQSC+7sp8Q3Jw7CVWOI4sYfr9Hrk7QeJTWvUbP1scd2S
	G6ugjkTBhnSwDjP+WgNM26BmRXrraV+6Wv4D96dvo/iOFM7IGZMhy4eCp8JBWl3n2dD4RxUVVH96G
	bmQrKDt7GpEmP5H0R33Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pVG-0003oL-Dq; Mon, 02 Mar 2020 18:09:18 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pTv-0002pE-2s; Mon, 02 Mar 2020 18:07:59 +0000
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
IronPort-SDR: rR/ndVAmyZXc0iNdEXkuRbr35j/HEEG2Uj2WzB2xPRCWAHBQvIq5hwQsSPM/an0lBhRnbSa95P
 ZdhpzNrN94m5A1UdUC9OSwXcZlb+Y6KyhB0tCOCJE2TYkjb44cfK0V2yAEjfyHYSEpz1mdSB+E
 eK2gQbguT9npM86gwIFmbWZAsgTrLCijh4t8NjUSabqcjB5I65h/6kEnPY938GxiSG86WUPj6z
 SDdDLN/zrZwKn/35v2vVHWMXNPEmH5VZ7MuC2nBCI4ERd+WPK2Qj7p76txyEC8Jg8VF1QbEwsy
 kf4=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="67338184"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:07:50 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:07:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Mar 2020 11:08:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WH97Oyl9lQGx0n4OhzCcSkiOfKnw1J/IyTo2v43vS3AimdEzp4zJoQ9SwUGpg5rxeo9D/VZnkT/fjy97Pe/N2Ex2aIcQV4/cvoDotKTxprVfC537gV6BHJH1zP4HWTpD7c2FV4eoNB+lGJt7WojqXJv8VvjmypfYAZThlLnwQaxM4Fzzfpmev4irulJkBdnas960JTNr8RX2VxEaj+WETNS46VAyzOR6VBRScveNKG33Ll/rWw4uhV+12LIHgIZFU6UgNPuy+WOV41z6KqC6PpENK2LnwuvDIoi+zO0acK/L1neW1jkeoS7DuLvjYECMfAPQw8+vFbgcFjWHnCuACA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z1lviWsdt5XT0e5Kt/LsExb9iVUsAQ/FgxpZtlfHhrk=;
 b=GWUelZTV6cKWeb+VpViOKgrim+gZg7iSQAP5DGukXoWxwlTbLKWi1q/HzQkqZcv+4vW0oyKJYjjVbSuDB5wpNpGuIlq9wK9GdJ0g3ueDP4nKXlGn4a7SyFS08tQcgMeDJslq/OVOf3bSdIBX6om8VI1pQ6eadC9mwyIxcdtUjZfD6FdfgnVWrdTQS4ZIrQehQi9UvWZH7d/7T/ozUC9p0Q0IcYMiMp4STfUE/ILo9cpBpUFPBm4ZMzSKd4g++WY7s8tKf9Afo7y3SstSIWW3jOK57mK32BCKlW+ONNmWWzdL8ku1pbXZdzIRO39QmYmzklwQQLy3dJzrDzqLUsqhsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z1lviWsdt5XT0e5Kt/LsExb9iVUsAQ/FgxpZtlfHhrk=;
 b=Ro7Jpn3Qll/4EV8kHeYOkEH59tcpyl/zvN4Ry0kXiOKgS2TMsW+Wefmr3dYrHB9arCqZ3PzuiGOs/Zlh5mkT2rlThueUJSJ3dS2OZ0K+gZSvfEIeMT7xTh5kpKr4Nd/Tfj1Ev2x/4ihXic56yvWjv8mB5raK6iGxuVfvlhw8d10=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:47 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:47 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 04/23] mtd: spi-nor: Expose stuctures and functions to
 manufacturer drivers
Thread-Topic: [PATCH 04/23] mtd: spi-nor: Expose stuctures and functions to
 manufacturer drivers
Thread-Index: AQHV8L16rqbK4UNzWk2KQorqDgLkvQ==
Date: Mon, 2 Mar 2020 18:07:47 +0000
Message-ID: <20200302180730.1886678-5-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 079e1589-93dc-4f16-93d3-08d7bed49d35
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB41429FC23D7372E667DC5805F0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(36756003)(26005)(66446008)(107886003)(6486002)(186003)(2616005)(4326008)(478600001)(6512007)(91956017)(64756008)(66946007)(2906002)(71200400001)(76116006)(8936002)(316002)(30864003)(86362001)(54906003)(6506007)(66556008)(5660300002)(66476007)(7406005)(1076003)(7416002)(81156014)(81166006)(110136005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4142;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wkneK9pSVqNuUQBujy3ALh2VeNa62+OAUF2tH+meCssEd+RZRjnPzAnGJdICouoQYEqGKlFjSr1MoKOnnqC0XAm1tFvtoJ8OsKNwFAsSh6Ywik52Ne8j+9Nv+EU8TtDVO+20wp0A5wSeK/XKGB7o/aOu06oKMeXbISmBRGZkErLuCWgIpApAViI0qSTKLooki6e+KHJH0nt9EYsGGAwTYRbPFnlyqdoCqwbFCvhKrN/8WCu6pbKq/wckixvVZUxAuW9b33HHzXbNiAdpT5iF0wP3VLwP7QZ6t/jjTzHBH/LrOjKFTJcpy9Yje3G8GDygsPTTsCJE4Yav+foZ0nXGXa9dm5aM9YKsEvCVr3MDYKRtUeskKk7j8ALiM7oK6B0pxDaoujAn5s3BSpCGYHfWWPmYo0ySUa3nxXv1kzvQRSOkDFXLG7tqJPq3iXocKBUl
x-ms-exchange-antispam-messagedata: fu/P8HmYeeTiZRxMY1iRVDffMp/77kcjjDJT8WtsrpIqTbvb92IOsNNfT64idHCphJQ9hn4E54gaGZa658FbzbUAvqUmzAHMoQ3IX59fCJKBorkvEfgB3QdU5JkW9DU+ofoS3HUXeL2Lt+1t3WR7Fg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 079e1589-93dc-4f16-93d3-08d7bed49d35
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:47.1755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TLnZmvra3+kGNPBmae4eoszkN9x6vpwIsBd/JmJcXmZRe/2M8/jtMOI/oM/0w/umP+s1SlB73hLXqMtD08CHQi92YyEjm0PGReUMqS6FwjY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100755_201139_85B3615E 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com, miquel.raynal@bootlin.com,
 opensource@jilayne.com, richard@nod.at, michal.simek@xilinx.com,
 Ludovic.Desroches@microchip.com, joel@jms.id.au, nishkadg.linux@gmail.com,
 Tudor.Ambarus@microchip.com, john.garry@huawei.com, vz@mleia.com,
 alexander.sverdlin@nokia.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 swboyd@chromium.org, mika.westerberg@linux.intel.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 ludovic.barre@st.com, linux-mediatek@lists.infradead.org, info@metux.net
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
---
 drivers/mtd/spi-nor/core.c | 171 +++----------------------------------
 drivers/mtd/spi-nor/core.h | 159 ++++++++++++++++++++++++++++++++++
 2 files changed, 170 insertions(+), 160 deletions(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 1edcb53c4df3..16cf9d4b1a73 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -38,102 +38,8 @@
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
-
 /**
  * spi_nor_spimem_bounce() - check if a bounce buffer is needed for the data
  *                           transfer
@@ -295,8 +201,8 @@ static ssize_t spi_nor_spimem_write_data(struct spi_nor *nor, loff_t to,
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
@@ -310,7 +216,7 @@ static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_write_enable(struct spi_nor *nor)
+int spi_nor_write_enable(struct spi_nor *nor)
 {
 	int ret;
 
@@ -339,7 +245,7 @@ static int spi_nor_write_enable(struct spi_nor *nor)
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_write_disable(struct spi_nor *nor)
+int spi_nor_write_disable(struct spi_nor *nor)
 {
 	int ret;
 
@@ -464,7 +370,7 @@ static int spi_nor_read_cr(struct spi_nor *nor, u8 *cr)
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_en4_ex4_set_4byte(struct spi_nor *nor, bool enable)
+int spi_nor_en4_ex4_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
@@ -501,7 +407,7 @@ static int spi_nor_en4_ex4_set_4byte(struct spi_nor *nor, bool enable)
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_en4_ex4_wen_set_4byte(struct spi_nor *nor, bool enable)
+int spi_nor_en4_ex4_wen_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
@@ -556,7 +462,7 @@ static int spansion_set_4byte(struct spi_nor *nor, bool enable)
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
+int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
 {
 	int ret;
 
@@ -621,7 +527,7 @@ static int winbond_set_4byte(struct spi_nor *nor, bool enable)
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
+int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
 {
 	int ret;
 
@@ -834,7 +740,7 @@ static int spi_nor_wait_till_ready_with_timeout(struct spi_nor *nor,
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_wait_till_ready(struct spi_nor *nor)
+int spi_nor_wait_till_ready(struct spi_nor *nor)
 {
 	return spi_nor_wait_till_ready_with_timeout(nor,
 						    DEFAULT_READY_WAIT_JIFFIES);
@@ -1142,11 +1048,6 @@ static int spi_nor_erase_chip(struct spi_nor *nor)
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
@@ -1225,7 +1126,7 @@ static void spi_nor_set_4byte_opcodes(struct spi_nor *nor)
 	}
 }
 
-static int spi_nor_lock_and_prep(struct spi_nor *nor)
+int spi_nor_lock_and_prep(struct spi_nor *nor)
 {
 	int ret = 0;
 
@@ -1241,7 +1142,7 @@ static int spi_nor_lock_and_prep(struct spi_nor *nor)
 	return ret;
 }
 
-static void spi_nor_unlock_and_unprep(struct spi_nor *nor)
+void spi_nor_unlock_and_unprep(struct spi_nor *nor)
 {
 	if (nor->controller_ops && nor->controller_ops->unprepare)
 		nor->controller_ops->unprepare(nor);
@@ -2104,56 +2005,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
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
index e1256fe50d12..7e2d88edf1f1 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -9,12 +9,166 @@
 
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
+int spi_nor_en4_ex4_set_4byte(struct spi_nor *nor, bool enable);
+int spi_nor_en4_ex4_wen_set_4byte(struct spi_nor *nor, bool enable);
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
@@ -33,4 +187,9 @@ int spi_nor_post_bfpt_fixups(struct spi_nor *nor,
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

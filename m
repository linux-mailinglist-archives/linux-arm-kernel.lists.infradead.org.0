Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBF6176276
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:23:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMJ0IgkikE1B1ydFokW/BIuGwWWwj84jOIHdFDIirVQ=; b=NBS1uxlczRBtBP
	XzM6QG5B2+ZSQPPmj8sPhuxkGaoE4CjFObevR0JHOH2tjZ8JoBsRgZUSKa66pdhrTSubFydAuVLv6
	OLcNxky3XgEmSk15pPUtYvs5RfNoELMzFmCYKchHYsGEooUS3AdqdTdWtgCvDDwu9aZh2USMoKOip
	b6KD/01eFrE4sQuGoeMo0UR2yp0RWieEuBA44ujDXr/BudSErKdZLRlt2iei35Jx5vVlpMvBEIqQF
	NGGFhgZJggoLYzm11WLbsIVshAzkGNdJScbL7z/1AJ3XPNeJ1U/uMWQSOH6oufYEBbTW5rlwKJM7+
	aZVQt7LP4zFX6d+6wlyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pj6-0000g8-5b; Mon, 02 Mar 2020 18:23:36 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pie-0000Qk-IM; Mon, 02 Mar 2020 18:23:10 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: w0LdkjvxFcz6lBjCghOwyy5RSSGS06ljCa1VV2N5sCLtxgADxd8lzNcZ2y+LZ9An3QF0aNrmN0
 dKpnn3T4kTOc8Gece1I0ADEP6hQ5BdiF6PneCtUIAHaUfOR8jVJFO7SxLBtpS2BSaszVWLOgxl
 Ip5UMgZK6oO9sMaPZ5/CImeVcJfZoIXaH9aso4fQd0iHMjm88Gega3Vli5THUMOJi5pqxwixXF
 XCh1U5F1vU0+FLyW0Dx+rYIOEtWW0ZG/c9yHlHWj+upFEgwOwsi00S9Hfxe4RoOQ5obhUN6s2i
 BZQ=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="67603656"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:23:07 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:08:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Mar 2020 11:08:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tz9cm6VXupF4v5WC5A1g2LRB/JKwul+ugbCekaA5pU+99bR1AMnUxx1NsAAmCbk/FMjInwfjZS+lxeS0xuX1AZDQWabLmZ0tVnkSlSpjFWZM69U/AC5ixBYOwK3662RsiqzECltbMcDlAfachSQwEWn9GV0q//uVMFt/f+hltYSmvrBHTJ0d9FYxaToPKMUtCnfuLN/2eSv1D7rykd2Iwweya1MbrlSD7NxUBaxAfZE1g4oL0ADxf9jzXBHokc+eqwdw6AAVgC4+2aslFfzjlKfVHoaxVGXe1Ome440TqRL7v5Glm1c4Ttwwmwyb446bC986V4rEl/YZzB6TIUqGDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gOPRzOjkFy+ajctbc4FajKqKi0sI4eQkBgwXrfldr5A=;
 b=aBvu0P7t47znJlJP8uBVUNoYXAvMoHX1dzny4GxgSmMqZZZmF0UuMo/PbWFz6S2vzA0bpZmjDU33Hj19dh9AYjYb3t4gnu1IhBwWgwnRYSV3+HTRkz6gTtOqzSU7fkJJvDGSKElLcZju39cFDJan20Eqtkd6l6pq4W/xaXy5Ibv62CuWwGPvnbZZrmm6/kLXeJD+sQDZGomdIq0mdGjzl8jtEooGYLzbuTOQ6VHRxe1Skx5/PjJXtM+Ge5HBWhzXdc2NezCL91Hes1KN8psDT4fkqWXgoxzUeoiVfcr0cIPjrlsrLSRf8CuznppzJA5IxeUa7rFrv/PLhjXT6lO6eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gOPRzOjkFy+ajctbc4FajKqKi0sI4eQkBgwXrfldr5A=;
 b=ESXCafrWC7w98hg00s5cdiufPIWMacd9cZFRj5399qoliz7bZOQT71kqQ6sufGuqgWcbjZegLeUbuENewn+aJVDuD7s4Rk5BOvxJVGkCgkVZwlUJhL3uO2lASuEnUIFMo6yjWLb4XjS4xVCie9wm1c0LYpI5bZ3jLbMDUdglCkY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:56 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:56 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 20/23] mtd: spi-nor: Move Xilinx bits out of core.c
Thread-Topic: [PATCH 20/23] mtd: spi-nor: Move Xilinx bits out of core.c
Thread-Index: AQHV8L1/nqXX3HpkeUKEtq8g2RPGbA==
Date: Mon, 2 Mar 2020 18:07:56 +0000
Message-ID: <20200302180730.1886678-21-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 222e2005-7889-41e4-0270-08d7bed4a296
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB41423A87B0E0EBB1684F704AF0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(36756003)(26005)(66446008)(107886003)(6486002)(186003)(2616005)(4326008)(478600001)(6512007)(91956017)(64756008)(66946007)(2906002)(71200400001)(76116006)(8936002)(316002)(86362001)(54906003)(6506007)(66556008)(5660300002)(66476007)(7406005)(1076003)(7416002)(81156014)(81166006)(110136005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4142;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3aWAO5TlWxHmhuKzXqjFhuuml1cCjfo+9Imu88wkIAEDeVdXsTYbnZaSrKFRb7Hee653ZHwG2pYWgyiDS4xPrQlqx2tvH8/7Ten8d54BuymCyBv8RGCVU3fHk3qidXz3qR4upyGJrdVxHHZZN8XtbBnkCoS6yMyntXyLUb47Bq32OpFNUfNs91O8Z85VPiCDqhUDRtjeJn9dbkg2F5oKjyg9WCUlYw5v3Oq8sC/SzdW0cru9ranQGoqiqxj8U1DK4kNehT/j/gvCN5xC1HfWTsLIKenJ3FmDHHvKckYwsNb0OkkOFnRO++cg9Gs+aCpPiR2ZPU/J2pK1W8uLyUnETBiO09ijbd9XtopGbXtM2Ahv2VmbSQ6I/Mq4ICthDzYVZT/VhgprUuEKMyVJek/4lXDB+y5QFSd5jPIzJw0qh9ZO6COaXlM/UcnWjjMlmDzw
x-ms-exchange-antispam-messagedata: ptoJ0CjLbGLvQV7+JVPZ3uM78rMM9EsYqlWgl2sU/kQRnsnsv0RBJrYsPB63pzpXL9wV0BuMVCXEzib/e42yp2KrPgaQseklHZn2B7D4IXDp6Vzjoj1bOlHpMwtRWqiIqqEZqyJHCQgasI19KfS6Tw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 222e2005-7889-41e4-0270-08d7bed4a296
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:56.0282 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fNRS58tOlBSXg07qEmo18ijNXmqVsIxkCXiymYoSmGugCQv9AEaSszpVUtiJgl9Mn3s0rZ9p82rV9GV6cGtc3ih7TeCwyg42cUUqv5II27M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_102308_686342_7A900B64 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

Create a SPI NOR manufacturer driver for Xilinx chips, and move the
Xilinx definitions outside of core.c.

While at it, remove the SPI_S3AN flag which is now useless.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile |  1 +
 drivers/mtd/spi-nor/core.c   | 76 +----------------------------
 drivers/mtd/spi-nor/core.h   | 13 +----
 drivers/mtd/spi-nor/xilinx.c | 94 ++++++++++++++++++++++++++++++++++++
 4 files changed, 98 insertions(+), 86 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/xilinx.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index cd8d95b727c9..fa03513dd160 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -15,4 +15,5 @@ spi-nor-objs			+= micron-st.o
 spi-nor-objs			+= spansion.o
 spi-nor-objs			+= sst.o
 spi-nor-objs			+= winbond.o
+spi-nor-objs			+= xilinx.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 1776fb8eb66b..3e9f6bafa01b 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -1117,26 +1117,6 @@ void spi_nor_unlock_and_unprep(struct spi_nor *nor)
 	mutex_unlock(&nor->lock);
 }
 
-/*
- * This code converts an address to the Default Address Mode, that has non
- * power of two page sizes. We must support this mode because it is the default
- * mode supported by Xilinx tools, it can access the whole flash area and
- * changing over to the Power-of-two mode is irreversible and corrupts the
- * original data.
- * Addr can safely be unsigned int, the biggest S3AN device is smaller than
- * 4 MiB.
- */
-static u32 s3an_convert_addr(struct spi_nor *nor, u32 addr)
-{
-	u32 offset, page;
-
-	offset = addr % nor->page_size;
-	page = addr / nor->page_size;
-	page <<= (nor->page_size > 512) ? 10 : 9;
-
-	return page | offset;
-}
-
 static u32 spi_nor_convert_addr(struct spi_nor *nor, loff_t addr)
 {
 	if (!nor->params.convert_addr)
@@ -1985,13 +1965,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Xilinx S3AN Internal Flash */
-	{ "3S50AN", S3AN_INFO(0x1f2200, 64, 264) },
-	{ "3S200AN", S3AN_INFO(0x1f2400, 256, 264) },
-	{ "3S400AN", S3AN_INFO(0x1f2400, 256, 264) },
-	{ "3S700AN", S3AN_INFO(0x1f2500, 512, 264) },
-	{ "3S1400AN", S3AN_INFO(0x1f2600, 512, 528) },
-
 	/* XMC (Wuhan Xinxin Semiconductor Manufacturing Corp.) */
 	{ "XM25QH64A", INFO(0x207017, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "XM25QH128A", INFO(0x207018, 0, 64 * 1024, 256, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
@@ -2014,6 +1987,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_spansion,
 	&spi_nor_sst,
 	&spi_nor_winbond,
+	&spi_nor_xilinx,
 };
 
 static const struct flash_info *
@@ -2199,46 +2173,6 @@ static int spi_nor_check(struct spi_nor *nor)
 	return 0;
 }
 
-static int s3an_nor_setup(struct spi_nor *nor,
-			  const struct spi_nor_hwcaps *hwcaps)
-{
-	int ret;
-
-	ret = spi_nor_xread_sr(nor, nor->bouncebuf);
-	if (ret)
-		return ret;
-
-	nor->erase_opcode = SPINOR_OP_XSE;
-	nor->program_opcode = SPINOR_OP_XPP;
-	nor->read_opcode = SPINOR_OP_READ;
-	nor->flags |= SNOR_F_NO_OP_CHIP_ERASE;
-
-	/*
-	 * This flashes have a page size of 264 or 528 bytes (known as
-	 * Default addressing mode). It can be changed to a more standard
-	 * Power of two mode where the page size is 256/512. This comes
-	 * with a price: there is 3% less of space, the data is corrupted
-	 * and the page size cannot be changed back to default addressing
-	 * mode.
-	 *
-	 * The current addressing mode can be read from the XRDSR register
-	 * and should not be changed, because is a destructive operation.
-	 */
-	if (nor->bouncebuf[0] & XSR_PAGESIZE) {
-		/* Flash in Power of 2 mode */
-		nor->page_size = (nor->page_size == 264) ? 256 : 512;
-		nor->mtd.writebufsize = nor->page_size;
-		nor->mtd.size = 8 * nor->page_size * nor->info->n_sectors;
-		nor->mtd.erasesize = 8 * nor->page_size;
-	} else {
-		/* Flash in Default addressing mode */
-		nor->params.convert_addr = s3an_convert_addr;
-		nor->mtd.erasesize = nor->info->sector_size;
-	}
-
-	return 0;
-}
-
 static void
 spi_nor_set_read_settings(struct spi_nor_read_command *read,
 			  u8 num_mode_clocks,
@@ -2837,11 +2771,6 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 	spi_nor_init_uniform_erase_map(map, erase_mask, params->size);
 }
 
-static void s3an_post_sfdp_fixups(struct spi_nor *nor)
-{
-	nor->params.setup = s3an_nor_setup;
-}
-
 /**
  * spi_nor_post_sfdp_fixups() - Updates the flash's parameters and settings
  * after SFDP has been parsed (is also called for SPI NORs that do not
@@ -2854,9 +2783,6 @@ static void s3an_post_sfdp_fixups(struct spi_nor *nor)
  */
 static void spi_nor_post_sfdp_fixups(struct spi_nor *nor)
 {
-	if (nor->info->flags & SPI_S3AN)
-		s3an_post_sfdp_fixups(nor);
-
 	if (nor->manufacturer && nor->manufacturer->fixups &&
 	    nor->manufacturer->fixups->post_sfdp)
 		nor->manufacturer->fixups->post_sfdp(nor);
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 9eb46900bc72..abd5332afaf5 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -73,16 +73,6 @@ struct flash_info {
 #define SPI_NOR_XSR_RDY		BIT(10)	/*
 					 * S3AN flashes have specific opcode to
 					 * read the status register.
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
 					 */
 #define SPI_NOR_4B_OPCODES	BIT(11)	/*
 					 * Use dedicated 4byte address op codes
@@ -150,7 +140,7 @@ struct flash_info {
 		.n_sectors = (_n_sectors),				\
 		.page_size = _page_size,				\
 		.addr_width = 3,					\
-		.flags = SPI_NOR_NO_FR | SPI_S3AN,
+		.flags = SPI_NOR_NO_FR | SPI_NOR_XSR_RDY,
 
 /**
  * struct spi_nor_manufacturer - SPI NOR manufacturer object
@@ -182,6 +172,7 @@ extern const struct spi_nor_manufacturer spi_nor_st;
 extern const struct spi_nor_manufacturer spi_nor_spansion;
 extern const struct spi_nor_manufacturer spi_nor_sst;
 extern const struct spi_nor_manufacturer spi_nor_winbond;
+extern const struct spi_nor_manufacturer spi_nor_xilinx;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/xilinx.c b/drivers/mtd/spi-nor/xilinx.c
new file mode 100644
index 000000000000..fcf635d89f65
--- /dev/null
+++ b/drivers/mtd/spi-nor/xilinx.c
@@ -0,0 +1,94 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2005, Intec Automation Inc.
+ * Copyright (C) 2014, Freescale Semiconductor, Inc.
+ */
+
+#include <linux/mtd/spi-nor.h>
+
+#include "core.h"
+
+static const struct flash_info xilinx_parts[] = {
+	/* Xilinx S3AN Internal Flash */
+	{ "3S50AN", S3AN_INFO(0x1f2200, 64, 264) },
+	{ "3S200AN", S3AN_INFO(0x1f2400, 256, 264) },
+	{ "3S400AN", S3AN_INFO(0x1f2400, 256, 264) },
+	{ "3S700AN", S3AN_INFO(0x1f2500, 512, 264) },
+	{ "3S1400AN", S3AN_INFO(0x1f2600, 512, 528) },
+};
+
+/*
+ * This code converts an address to the Default Address Mode, that has non
+ * power of two page sizes. We must support this mode because it is the default
+ * mode supported by Xilinx tools, it can access the whole flash area and
+ * changing over to the Power-of-two mode is irreversible and corrupts the
+ * original data.
+ * Addr can safely be unsigned int, the biggest S3AN device is smaller than
+ * 4 MiB.
+ */
+static u32 s3an_convert_addr(struct spi_nor *nor, u32 addr)
+{
+	u32 offset, page;
+
+	offset = addr % nor->page_size;
+	page = addr / nor->page_size;
+	page <<= (nor->page_size > 512) ? 10 : 9;
+
+	return page | offset;
+}
+
+static int xilinx_nor_setup(struct spi_nor *nor,
+			    const struct spi_nor_hwcaps *hwcaps)
+{
+	int ret;
+
+	ret = spi_nor_xread_sr(nor, nor->bouncebuf);
+	if (ret)
+		return ret;
+
+	nor->erase_opcode = SPINOR_OP_XSE;
+	nor->program_opcode = SPINOR_OP_XPP;
+	nor->read_opcode = SPINOR_OP_READ;
+	nor->flags |= SNOR_F_NO_OP_CHIP_ERASE;
+
+	/*
+	 * This flashes have a page size of 264 or 528 bytes (known as
+	 * Default addressing mode). It can be changed to a more standard
+	 * Power of two mode where the page size is 256/512. This comes
+	 * with a price: there is 3% less of space, the data is corrupted
+	 * and the page size cannot be changed back to default addressing
+	 * mode.
+	 *
+	 * The current addressing mode can be read from the XRDSR register
+	 * and should not be changed, because is a destructive operation.
+	 */
+	if (nor->bouncebuf[0] & XSR_PAGESIZE) {
+		/* Flash in Power of 2 mode */
+		nor->page_size = (nor->page_size == 264) ? 256 : 512;
+		nor->mtd.writebufsize = nor->page_size;
+		nor->mtd.size = 8 * nor->page_size * nor->info->n_sectors;
+		nor->mtd.erasesize = 8 * nor->page_size;
+	} else {
+		/* Flash in Default addressing mode */
+		nor->params.convert_addr = s3an_convert_addr;
+		nor->mtd.erasesize = nor->info->sector_size;
+	}
+
+	return 0;
+}
+
+static void xilinx_post_sfdp_fixups(struct spi_nor *nor)
+{
+	nor->params.setup = xilinx_nor_setup;
+}
+
+static const struct spi_nor_fixups xilinx_fixups = {
+	.post_sfdp = xilinx_post_sfdp_fixups,
+};
+
+const struct spi_nor_manufacturer spi_nor_xilinx = {
+	.name = "xilinx",
+	.parts = xilinx_parts,
+	.nparts = ARRAY_SIZE(xilinx_parts),
+	.fixups = &xilinx_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

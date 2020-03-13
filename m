Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79921184F9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:53:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hyR1IayjHldV6kIi6xFqOZjeV47RjsWVk679awK8GA=; b=M7Xzba/0cHyfsg
	Bqvksm1mFmYaXyTzCdjrYcA4k7OGPJJe44ir+g0W00t3wLISIfFI9nBV6YTDKYClS23tYQjqhj2Nq
	8PzpuMBWaO9agppsrKRmg3aZYQ49tO7MSriO6UgKZo0qrALPB7ViAlJ/us0SBGxDrZ7gGuRnoPTkm
	cO42ujVL+wFiRaaFfxqMRRakttGKm5zEa+QY3ZNi3NfTnriyR8aclBYnEF+1laRTp1TjCtkJZBuRG
	E36L/7RV3nV3/K0Bjo+/k9vDKYxUmfqnv7kIU6D4aRdzpKoO9V9MvodbRnumKdpLjPOym/iGdLD+U
	r5q7TQsj2wfmGcKTQleA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqMs-0001Wy-2t; Fri, 13 Mar 2020 19:53:14 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCx-0008Qz-AV; Fri, 13 Mar 2020 19:43:01 +0000
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
IronPort-SDR: mBofuDodcdWMsb9yUUg/x4rRN8D2DQGSwlTBdk/Ko1bWBsuaiDWsLknFMuZ59Cb9YJXtVjoiwC
 SGyIhvl8VrbJdWjxIjbSCfEL74E5cS2CGApc0783B/8ALpDCr+SuUOSVD9pW2pu7b2IGjMoWgS
 SyoN2bUCuFBzJU/0yd6igg51nEcxG9xuzPKxIzkTmRvRCkT+XBIBfoQ29ZcZbYDEkPmkhQAVbR
 bS+5AZMUVNyAEJgt5Voc3FOEITMQPE1vqb4qDXdZdFK+9iHTcp9kmXRkLRXBQ/lArR6jPxzqu+
 gH8=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="68809672"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:59 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C8q7AjjyLOJ/DqJ8kSZ6Mbdm7cfTyzazJXKGTOSKotpaYhv9xvHq7fBCTBnP+iivDtwbOJ9sVAGEWtf6NZHy9BXf0ju0pD+QRpGYwJaA0Fkmds75vaCPA4kEr6hqzZtjVHjEo37oM9hEora2YUj0KNVxHZ816bf55EKxHMsAwrjsvOVD94DoJ04NzHLXlL6CzbxgKgTjUn1dt2ume+D47lmen75WXm16HtYJrFf+EWv3YGXy2BjC6r4xNhPC+7y8od+Bh6c5bvgS29SV0eNRohpBA1+QlKv2vb8Xdym31dk5rJYYAqh0Q9bmB1emovy+RA/gvF5CaonNhUAtvb1iJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KcQC8DpyfrH8S9orUwLHhzBefI9grGA68JgiQo+jsrw=;
 b=h2jdF0AuN2YL+6O8EfzS21OKbqXegj0+fDVxQOhJCrSNzRlV/aCAOdkrhsn1QDLQzGMtfqUv9F7i+PvrWaj1k206Ezsuzv/88TVQXRjqY27YvDWeuUZ34QGRPyvG1ICTlISWFwHeFaA5EEfmcPEeEE82qGNO+hW7JIxAJXbuMZR1eZ91gfE3AsLxleVJ2hZ0Qr3+knxFxFcQkGOuWQnUSKMiCp2hx4aGK6HXjvbBYYt/TWybD1+FOURA/pCoVxtTwuZ1ilHL3a7H2hne6KchGrvDk6TYZaqd/mpT53KMdJmWOj2AcS/IkCjOw7t/8IYoXrgI0oNaBJgLAEq/hCmPQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KcQC8DpyfrH8S9orUwLHhzBefI9grGA68JgiQo+jsrw=;
 b=ATLu4rDR/Wdc0lY3d8AMVRvDlTfQVZ6GCPvdBwEKM9knO59bZfxyX15MUTX6Y/t0mnbdAqr1e5mt9afMjH1sqDzkXF9Qx450H3wUX6FapCS909JelHpgxTnViloQFCbSMtNqwlQbkV7MXakxjEYXK3eCqEEVPFn0Low1DXwNo6E=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:56 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:56 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 21/25] mtd: spi-nor: Move Xilinx bits out of core.c
Thread-Topic: [PATCH v2 21/25] mtd: spi-nor: Move Xilinx bits out of core.c
Thread-Index: AQHV+W+U3SS7+S0/RUido1JlGdKoCw==
Date: Fri, 13 Mar 2020 19:42:50 +0000
Message-ID: <20200313194130.342251-22-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 113a841a-4fa2-4191-7689-08d7c786ba3c
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB10D9AD27CE10749F4CC522F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(396003)(366004)(376002)(199004)(478600001)(54906003)(107886003)(6512007)(110136005)(26005)(186003)(6486002)(4326008)(2616005)(316002)(71200400001)(6666004)(6506007)(86362001)(36756003)(8676002)(5660300002)(2906002)(66476007)(66446008)(66556008)(76116006)(64756008)(91956017)(66946007)(1076003)(81166006)(81156014)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYASPR01MB10;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3mUC8vZhUbZYw3KIkPcSNxBi8Uf2NPefv/qIfFeAlxAkyh13aJmhY2yPpJLfm5BxA8hblaMsbmfj6ShibI89/lKrdwab+pcGDP1EJ07XgRVK5lJFoUjveD2AeLR1NFP8syffOfce19IENSeqtyboiG6SmDvHITMYpIIa8tO3jsfumP3juw3BNAyxKP6bgI4Yy5mjIW7Ux1F+RWrXaGJEx21f5BQnJszDVIdE27RjEui1Gx4dTJwrGBqotiJQKpyanUf7S0tIwkIAqAJ7UKTks0ca4NNx2cZtEqftgFrMVhleTkG/t9rauQJsPScPHyFhlDrhMroKPTaQAimZwq2nNF1FwIq0UtlqO/LVkKv3qmF2CwFRZ/0dPqImCpN5c86hFEO0P85onIZ5v3XdGfWVyVsC2IEuvaUKH4GJtmVsJ90hOjKZN7tMQ0nPjP/5Pf8O
x-ms-exchange-antispam-messagedata: 4mpSzwrcNq6nG5J5WmenzkybL19eJT1VtOGGPEZzq0TUKEyBhHxQZDL+dzBaIsa3Q3GXWWzZRC41wnJUfcXzvCLJlajVJflkTaUk66OMtAgyRQVQYYqWgSfxXZ+coYZiT5Ovr55U609dqAkueI7zAg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 113a841a-4fa2-4191-7689-08d7c786ba3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:50.1108 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s39nlBuyjxOajgjPC+rmP8FVvI1rPVwFSfckPS/q8uDTIdQmp5yb5P8wUOHOToT1Rt19jGqYrAbhkQOd1hs7ChwzZrnFwJs/BwxrXD5+Ceo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124259_396539_58D8FF90 
X-CRM114-Status: GOOD (  18.32  )
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
index 99da7d8e9097..ca2f441e2806 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -1095,26 +1095,6 @@ void spi_nor_unlock_and_unprep(struct spi_nor *nor)
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
@@ -1963,13 +1943,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
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
@@ -1992,6 +1965,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_spansion,
 	&spi_nor_sst,
 	&spi_nor_winbond,
+	&spi_nor_xilinx,
 };
 
 static const struct flash_info *
@@ -2177,46 +2151,6 @@ static int spi_nor_check(struct spi_nor *nor)
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
@@ -2815,11 +2749,6 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
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
@@ -2832,9 +2761,6 @@ static void s3an_post_sfdp_fixups(struct spi_nor *nor)
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
index aaa2a460a159..8c666bff5768 100644
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

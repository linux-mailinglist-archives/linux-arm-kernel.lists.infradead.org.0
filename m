Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A424184FC2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Er4vfYjm1CQ9Y8QMe9u4tiIFBG5DLYCfdLLZQ0FeMKc=; b=cegAJ8sEu+rsYM
	tHtKSgKXJkilUR2gBKqLOweaR3VW1pVldcAVNayHThOfeTGm0i66ZUvYEJWJdw2nDpk8E6womEEkM
	mRFwRPxV52ASwBiJEjqOSQl4lkCv5pbXtv/LQJD6lNZKN/SgPTWDoTPy8ff1xloY1jAMlVR5GpacH
	PJCPyQbe/qDGAVyfscWi7CvbBRBOZySS6CIDGbpNv7bgcj1Ry6cAQrsPGd1633mAeibeqpDAsikdL
	HBUFb9zo6rVqze82LHVsVxRMAFvdkY51sQdNrkDUyvFfEFIOfCKpnwERgvTqgh00Yc/wBcOQHoKOW
	16ADSUFt/Q3iLhRNuNMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqRm-0007MG-PG; Fri, 13 Mar 2020 19:58:18 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqD3-0008S7-24; Fri, 13 Mar 2020 19:43:10 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: or631/giEq+Jy3sL34JXXNQwRDc4VGOS/t4ABC/9Be4qRiu7/JEqzOLOZjIypL8FB8GTw60isi
 9geZiXfkJDMT6cSMf9rL0+MRRl8sxjCUh06/6iIMY7dA3ygS2XiDA3Yoga9UfKNre832QC6Pce
 a320Jbt+KkrKEH2YlQWmKsAdRYgS6Qh0JGMJwl/R1GNqCvE0xIwIWuM/CRfObxENNFhlfmy0yN
 EwQ7934Kjt17ZBltsEjGniNi5YBYLgnBhv9P+Iio4I4GtvGs2YelUE980FighTKZmH1CMrURVF
 35Q=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="67134838"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:58 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:54 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XRLNZu6jDpJagDPozpzLBwL52Yg6MxisRYBrWBwtahRXjXF+eS24dUl7qG9aPnr/JDvsIMyVab4LaqTpW+pF6yHWBNJMpdze4T92m38zX+dZTFbInQcj+ijNWXO8XGPrlV9lrSR9/NnI0qO3cBEKXVTSIb7nlnik4Kzbv3wRJ/RGZxs29j4OHpNa2EPW42WNGy3wPKghzz8jb5Y63mIhiqTcFcKTlYesFu4fBvJxcDrUM4OZuYTVCUVQZnE2S036fAP8zMiXOxCuYZ07ZhlV/KoXqPXyIuMEKMkJxMmH6wD59ahO0OWDZPwXHKlUB/NBmwf+z+4xqcCn1CWB9Rv6HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kg4fssh7HF6SUJ70P0ZziOUL7ihceRi9R1IIjoqyoj8=;
 b=Qj2QMTizQXKDWaMVroh58CxnsLq85oJ+apW3hDDo3Odf/BmNh/Z+qkZIPTZtdtTP72z+Zlr3r1JK+A23qJvZBm4ZFxtfOCcTIYVJutfMkvTdUHryq0QKKQXVAWdpoAzBjbtqPoLuvpferlPpLJXxDekG/nr8Yw6FLlVaKHaKEA7MC+i+UtQxqVSB6bEuft8S8JJqF+Lx5rv0lDP53uh3b2HpfGD2XnKWqzDyr9eiBz1GU9bHFFdZElJpRxRzZfvJyxbdqGN+63JXHlY4eHASSl6Qc42Q473jjabKvDQuRvFJejwOsfzJAKgxvXxqZ1SVw0K4umP5EgKjDbBc02VYog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kg4fssh7HF6SUJ70P0ZziOUL7ihceRi9R1IIjoqyoj8=;
 b=jURZ80VXz1j3PFMeipOzJp6z7zzop4Cjyipzdddd6fMzYgkvUklw2vm3XMzgEbEJul3WqdmKHzF9/Uh6DgQfnt0McwPxR5eYz3b3LbAz3RD1pWLOnsCUcAJT5vCh6jw8Sj98afZ5y6U1Vne2JzFifoODZ3QUJ8UYzjym816VYzE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:53 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:52 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 16/25] mtd: spi-nor: Move Micron/ST bits out of core.c
Thread-Topic: [PATCH v2 16/25] mtd: spi-nor: Move Micron/ST bits out of core.c
Thread-Index: AQHV+W+Rx77x1dJbe0uHreYj209DfQ==
Date: Fri, 13 Mar 2020 19:42:46 +0000
Message-ID: <20200313194130.342251-17-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb1e8341-315b-4a65-1b07-08d7c786b863
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB1068BF5C0D9C5345110ABAF0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(396003)(366004)(376002)(199004)(478600001)(54906003)(107886003)(6512007)(110136005)(26005)(186003)(6486002)(4326008)(2616005)(316002)(71200400001)(6666004)(6506007)(86362001)(36756003)(8676002)(5660300002)(2906002)(30864003)(66476007)(66446008)(66556008)(76116006)(64756008)(91956017)(66946007)(1076003)(81166006)(81156014)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYASPR01MB10;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: osE5+XC0tC4lrSftytiugYEF9XvtLaPCzk0GhsRfURQW2eYxThsyepVHUKVREH5u/4SyYHSQ7U9onrtq5L8PH8/6QHoTuWtCpXUx/kbFfRytJ+i32VaXsdMnWB6+7YFxNHYzbcqknar5Fj5ztMtE/OQ+KD7Om9+8mpNKWQaro56eadq8lvZJ4l1nDtCdNogCtFOmNXaURcmaKxctHRvw/zW0XbC/g9HXEeupRfPOf6ZvfKp9p0UBjL61sKscQMwmXYjgI+4mQ4jq3EoOPL1MsD2yiMCe3WG95B3SP4zFwGT1w4HhPm0pS1SblfOFijwFUjxDXIqYJX/ul+Z27iu6lETXYOSPRJD3QwUuBDGScu/aputWzfiqL47OyFzQZ4CGExjZ/hmLOhOtoLx4FS8n6RB9MTfzxbI+pWOMI+bWAVVrbUzVN5Li2lcgLuot7tFF
x-ms-exchange-antispam-messagedata: rFHrzSF2vVZh665N1Na2n5EUkhHfKQM1pMMbdVWmjnMD1Tf9z66r3VhkCQbdGcHv16OHsKrfSFczayfesnwBAvhBCkxZZwRF9+VP41k/bVlyyj9MWKslvzPzVarHVWfP1QwLbFn+9sOvHFn+ds7IdQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: eb1e8341-315b-4a65-1b07-08d7c786b863
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:46.1042 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FRcGdU649Yn8WCZlcLL22+s0qFdD94PygbXAQNnH7HyB05SuCj+vPrc8OK+9sxx79buVvXHScrFTYrPhK+5+HFTI9qZ2WK+i/f0zw6bHpQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124305_326612_02A85244 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

Create a SPI NOR manufacturer driver for Micron/ST chips, and move the
Micron/ST definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile    |   1 +
 drivers/mtd/spi-nor/core.c      | 122 +------------------------
 drivers/mtd/spi-nor/core.h      |   2 +
 drivers/mtd/spi-nor/micron-st.c | 153 ++++++++++++++++++++++++++++++++
 4 files changed, 158 insertions(+), 120 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/micron-st.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index c94798987801..c7e5fb908bec 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -10,4 +10,5 @@ spi-nor-objs			+= gigadevice.o
 spi-nor-objs			+= intel.o
 spi-nor-objs			+= issi.o
 spi-nor-objs			+= macronix.o
+spi-nor-objs			+= micron-st.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index beb3c7372647..4885607dc917 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -399,30 +399,6 @@ int spi_nor_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
 	return ret;
 }
 
-/**
- * st_micron_set_4byte_addr_mode() - Set 4-byte address mode for ST and Micron
- * flashes.
- * @nor:	pointer to 'struct spi_nor'.
- * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
- *		address mode.
- *
- * Return: 0 on success, -errno otherwise.
- */
-static int st_micron_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
-{
-	int ret;
-
-	ret = spi_nor_write_enable(nor);
-	if (ret)
-		return ret;
-
-	ret = spi_nor_set_4byte_addr_mode(nor, enable);
-	if (ret)
-		return ret;
-
-	return spi_nor_write_disable(nor);
-}
-
 /**
  * spansion_set_4byte_addr_mode() - Set 4-byte address mode for Spansion
  * flashes.
@@ -2019,53 +1995,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Micron <--> ST Micro */
-	{ "n25q016a",	 INFO(0x20bb15, 0, 64 * 1024,   32, SECT_4K | SPI_NOR_QUAD_READ) },
-	{ "n25q032",	 INFO(0x20ba16, 0, 64 * 1024,   64, SPI_NOR_QUAD_READ) },
-	{ "n25q032a",	 INFO(0x20bb16, 0, 64 * 1024,   64, SPI_NOR_QUAD_READ) },
-	{ "n25q064",     INFO(0x20ba17, 0, 64 * 1024,  128, SECT_4K | SPI_NOR_QUAD_READ) },
-	{ "n25q064a",    INFO(0x20bb17, 0, 64 * 1024,  128, SECT_4K | SPI_NOR_QUAD_READ) },
-	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, SECT_4K |
-			      USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, SECT_4K |
-			      USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "mt25ql256a",  INFO6(0x20ba19, 0x104400, 64 * 1024,  512,
-			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
-			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K |
-			      USE_FSR | SPI_NOR_DUAL_READ |
-			      SPI_NOR_QUAD_READ) },
-	{ "mt25qu256a",  INFO6(0x20bb19, 0x104400, 64 * 1024,  512,
-			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
-			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "n25q256ax1",  INFO(0x20bb19, 0, 64 * 1024,  512, SECT_4K |
-			      USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "mt25ql512a",  INFO6(0x20ba20, 0x104400, 64 * 1024, 1024,
-			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
-			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "mt25qu512a",  INFO6(0x20bb20, 0x104400, 64 * 1024, 1024,
-			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
-			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K |
-			      USE_FSR | SPI_NOR_QUAD_READ) },
-	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
-	{ "n25q00a",     INFO(0x20bb21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
-	{ "mt25ql02g",   INFO(0x20ba22, 0, 64 * 1024, 4096,
-			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
-			      NO_CHIP_ERASE) },
-	{ "mt25qu02g",   INFO(0x20bb22, 0, 64 * 1024, 4096, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
-
-	/* Micron */
-	{
-		"mt35xu512aba", INFO(0x2c5b1a, 0, 128 * 1024, 512,
-			SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
-			SPI_NOR_4B_OPCODES)
-	},
-	{ "mt35xu02g",  INFO(0x2c5b1c, 0, 128 * 1024, 2048,
-			     SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
-			     SPI_NOR_4B_OPCODES) },
-
 	/* Spansion/Cypress -- single (large) sector size only, at least
 	 * for the chips listed here (without boot sectors).
 	 */
@@ -2123,42 +2052,6 @@ static const struct flash_info spi_nor_ids[] = {
 			      SPI_NOR_DUAL_READ) },
 	{ "sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 
-	/* ST Microelectronics -- newer production may have feature updates */
-	{ "m25p05",  INFO(0x202010,  0,  32 * 1024,   2, 0) },
-	{ "m25p10",  INFO(0x202011,  0,  32 * 1024,   4, 0) },
-	{ "m25p20",  INFO(0x202012,  0,  64 * 1024,   4, 0) },
-	{ "m25p40",  INFO(0x202013,  0,  64 * 1024,   8, 0) },
-	{ "m25p80",  INFO(0x202014,  0,  64 * 1024,  16, 0) },
-	{ "m25p16",  INFO(0x202015,  0,  64 * 1024,  32, 0) },
-	{ "m25p32",  INFO(0x202016,  0,  64 * 1024,  64, 0) },
-	{ "m25p64",  INFO(0x202017,  0,  64 * 1024, 128, 0) },
-	{ "m25p128", INFO(0x202018,  0, 256 * 1024,  64, 0) },
-
-	{ "m25p05-nonjedec",  INFO(0, 0,  32 * 1024,   2, 0) },
-	{ "m25p10-nonjedec",  INFO(0, 0,  32 * 1024,   4, 0) },
-	{ "m25p20-nonjedec",  INFO(0, 0,  64 * 1024,   4, 0) },
-	{ "m25p40-nonjedec",  INFO(0, 0,  64 * 1024,   8, 0) },
-	{ "m25p80-nonjedec",  INFO(0, 0,  64 * 1024,  16, 0) },
-	{ "m25p16-nonjedec",  INFO(0, 0,  64 * 1024,  32, 0) },
-	{ "m25p32-nonjedec",  INFO(0, 0,  64 * 1024,  64, 0) },
-	{ "m25p64-nonjedec",  INFO(0, 0,  64 * 1024, 128, 0) },
-	{ "m25p128-nonjedec", INFO(0, 0, 256 * 1024,  64, 0) },
-
-	{ "m45pe10", INFO(0x204011,  0, 64 * 1024,    2, 0) },
-	{ "m45pe80", INFO(0x204014,  0, 64 * 1024,   16, 0) },
-	{ "m45pe16", INFO(0x204015,  0, 64 * 1024,   32, 0) },
-
-	{ "m25pe20", INFO(0x208012,  0, 64 * 1024,  4,       0) },
-	{ "m25pe80", INFO(0x208014,  0, 64 * 1024, 16,       0) },
-	{ "m25pe16", INFO(0x208015,  0, 64 * 1024, 32, SECT_4K) },
-
-	{ "m25px16",    INFO(0x207115,  0, 64 * 1024, 32, SECT_4K) },
-	{ "m25px32",    INFO(0x207116,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px32-s0", INFO(0x207316,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px32-s1", INFO(0x206316,  0, 64 * 1024, 64, SECT_4K) },
-	{ "m25px64",    INFO(0x207117,  0, 64 * 1024, 128, 0) },
-	{ "m25px80",    INFO(0x207114,  0, 64 * 1024, 16, 0) },
-
 	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
 	{ "w25x05", INFO(0xef3010, 0, 64 * 1024,  1,  SECT_4K) },
 	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
@@ -2256,6 +2149,8 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_intel,
 	&spi_nor_issi,
 	&spi_nor_macronix,
+	&spi_nor_micron,
+	&spi_nor_st,
 };
 
 static const struct flash_info *
@@ -3040,14 +2935,6 @@ static void sst_set_default_init(struct spi_nor *nor)
 	nor->flags |= SNOR_F_HAS_LOCK;
 }
 
-static void st_micron_set_default_init(struct spi_nor *nor)
-{
-	nor->flags |= SNOR_F_HAS_LOCK;
-	nor->flags &= ~SNOR_F_HAS_16BIT_SR;
-	nor->params.quad_enable = NULL;
-	nor->params.set_4byte_addr_mode = st_micron_set_4byte_addr_mode;
-}
-
 static void winbond_set_default_init(struct spi_nor *nor)
 {
 	nor->params.set_4byte_addr_mode = winbond_set_4byte_addr_mode;
@@ -3062,11 +2949,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_ST:
-	case SNOR_MFR_MICRON:
-		st_micron_set_default_init(nor);
-		break;
-
 	case SNOR_MFR_SST:
 		sst_set_default_init(nor);
 		break;
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 8ef5acc5d052..fc4a70d8713c 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -176,6 +176,8 @@ extern const struct spi_nor_manufacturer spi_nor_gigadevice;
 extern const struct spi_nor_manufacturer spi_nor_intel;
 extern const struct spi_nor_manufacturer spi_nor_issi;
 extern const struct spi_nor_manufacturer spi_nor_macronix;
+extern const struct spi_nor_manufacturer spi_nor_micron;
+extern const struct spi_nor_manufacturer spi_nor_st;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/micron-st.c b/drivers/mtd/spi-nor/micron-st.c
new file mode 100644
index 000000000000..9d32ee0ef5a5
--- /dev/null
+++ b/drivers/mtd/spi-nor/micron-st.c
@@ -0,0 +1,153 @@
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
+static const struct flash_info micron_parts[] = {
+	{ "mt35xu512aba", INFO(0x2c5b1a, 0, 128 * 1024, 512,
+			       SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
+			       SPI_NOR_4B_OPCODES) },
+	{ "mt35xu02g", INFO(0x2c5b1c, 0, 128 * 1024, 2048,
+			    SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
+			    SPI_NOR_4B_OPCODES) },
+};
+
+static const struct flash_info st_parts[] = {
+	{ "n25q016a",	 INFO(0x20bb15, 0, 64 * 1024,   32,
+			      SECT_4K | SPI_NOR_QUAD_READ) },
+	{ "n25q032",	 INFO(0x20ba16, 0, 64 * 1024,   64,
+			      SPI_NOR_QUAD_READ) },
+	{ "n25q032a",	 INFO(0x20bb16, 0, 64 * 1024,   64,
+			      SPI_NOR_QUAD_READ) },
+	{ "n25q064",     INFO(0x20ba17, 0, 64 * 1024,  128,
+			      SECT_4K | SPI_NOR_QUAD_READ) },
+	{ "n25q064a",    INFO(0x20bb17, 0, 64 * 1024,  128,
+			      SECT_4K | SPI_NOR_QUAD_READ) },
+	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "mt25ql256a",  INFO6(0x20ba19, 0x104400, 64 * 1024,  512,
+			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
+			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K |
+			      USE_FSR | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mt25qu256a",  INFO6(0x20bb19, 0x104400, 64 * 1024,  512,
+			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
+			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "n25q256ax1",  INFO(0x20bb19, 0, 64 * 1024,  512,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "mt25ql512a",  INFO6(0x20ba20, 0x104400, 64 * 1024, 1024,
+			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
+			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "mt25qu512a",  INFO6(0x20bb20, 0x104400, 64 * 1024, 1024,
+			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
+			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
+	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
+			      NO_CHIP_ERASE) },
+	{ "n25q00a",     INFO(0x20bb21, 0, 64 * 1024, 2048,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
+			      NO_CHIP_ERASE) },
+	{ "mt25ql02g",   INFO(0x20ba22, 0, 64 * 1024, 4096,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
+			      NO_CHIP_ERASE) },
+	{ "mt25qu02g",   INFO(0x20bb22, 0, 64 * 1024, 4096,
+			      SECT_4K | USE_FSR | SPI_NOR_QUAD_READ |
+			      NO_CHIP_ERASE) },
+
+	{ "m25p05",  INFO(0x202010,  0,  32 * 1024,   2, 0) },
+	{ "m25p10",  INFO(0x202011,  0,  32 * 1024,   4, 0) },
+	{ "m25p20",  INFO(0x202012,  0,  64 * 1024,   4, 0) },
+	{ "m25p40",  INFO(0x202013,  0,  64 * 1024,   8, 0) },
+	{ "m25p80",  INFO(0x202014,  0,  64 * 1024,  16, 0) },
+	{ "m25p16",  INFO(0x202015,  0,  64 * 1024,  32, 0) },
+	{ "m25p32",  INFO(0x202016,  0,  64 * 1024,  64, 0) },
+	{ "m25p64",  INFO(0x202017,  0,  64 * 1024, 128, 0) },
+	{ "m25p128", INFO(0x202018,  0, 256 * 1024,  64, 0) },
+
+	{ "m25p05-nonjedec",  INFO(0, 0,  32 * 1024,   2, 0) },
+	{ "m25p10-nonjedec",  INFO(0, 0,  32 * 1024,   4, 0) },
+	{ "m25p20-nonjedec",  INFO(0, 0,  64 * 1024,   4, 0) },
+	{ "m25p40-nonjedec",  INFO(0, 0,  64 * 1024,   8, 0) },
+	{ "m25p80-nonjedec",  INFO(0, 0,  64 * 1024,  16, 0) },
+	{ "m25p16-nonjedec",  INFO(0, 0,  64 * 1024,  32, 0) },
+	{ "m25p32-nonjedec",  INFO(0, 0,  64 * 1024,  64, 0) },
+	{ "m25p64-nonjedec",  INFO(0, 0,  64 * 1024, 128, 0) },
+	{ "m25p128-nonjedec", INFO(0, 0, 256 * 1024,  64, 0) },
+
+	{ "m45pe10", INFO(0x204011,  0, 64 * 1024,    2, 0) },
+	{ "m45pe80", INFO(0x204014,  0, 64 * 1024,   16, 0) },
+	{ "m45pe16", INFO(0x204015,  0, 64 * 1024,   32, 0) },
+
+	{ "m25pe20", INFO(0x208012,  0, 64 * 1024,  4,       0) },
+	{ "m25pe80", INFO(0x208014,  0, 64 * 1024, 16,       0) },
+	{ "m25pe16", INFO(0x208015,  0, 64 * 1024, 32, SECT_4K) },
+
+	{ "m25px16",    INFO(0x207115,  0, 64 * 1024, 32, SECT_4K) },
+	{ "m25px32",    INFO(0x207116,  0, 64 * 1024, 64, SECT_4K) },
+	{ "m25px32-s0", INFO(0x207316,  0, 64 * 1024, 64, SECT_4K) },
+	{ "m25px32-s1", INFO(0x206316,  0, 64 * 1024, 64, SECT_4K) },
+	{ "m25px64",    INFO(0x207117,  0, 64 * 1024, 128, 0) },
+	{ "m25px80",    INFO(0x207114,  0, 64 * 1024, 16, 0) },
+};
+
+/**
+ * st_micron_set_4byte_addr_mode() - Set 4-byte address mode for ST and Micron
+ * flashes.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
+ *		address mode.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int st_micron_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
+{
+	int ret;
+
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	ret = spi_nor_set_4byte_addr_mode(nor, enable);
+	if (ret)
+		return ret;
+
+	return spi_nor_write_disable(nor);
+}
+
+static void micron_st_default_init(struct spi_nor *nor)
+{
+	nor->flags |= SNOR_F_HAS_LOCK;
+	nor->flags &= ~SNOR_F_HAS_16BIT_SR;
+	nor->params.quad_enable = NULL;
+	nor->params.set_4byte_addr_mode = st_micron_set_4byte_addr_mode;
+}
+
+static const struct spi_nor_fixups micron_st_fixups = {
+	.default_init = micron_st_default_init,
+};
+
+const struct spi_nor_manufacturer spi_nor_micron = {
+	.name = "micron",
+	.parts = micron_parts,
+	.nparts = ARRAY_SIZE(micron_parts),
+	.fixups = &micron_st_fixups,
+};
+
+const struct spi_nor_manufacturer spi_nor_st = {
+	.name = "st",
+	.parts = st_parts,
+	.nparts = ARRAY_SIZE(st_parts),
+	.fixups = &micron_st_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

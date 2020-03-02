Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA65176297
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:25:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DgfMnP98w0pXPcVeunmw6ceeFyOxAeoJPuESCNO0U0=; b=IRIM0SBYSwVaJi
	Xgqs1RVsUT4HOd4x+296h3d3zi3rATyFqlMrbe0pF1K5Vl6B00iaklDPtxukbOaF+nhdh5aaeZ7w1
	4aAJQLGBA4DQLBe0g+fcJ03gOnMbFKX67fgIsV74klGGSnpq1qVb2Bpta+WleE3nTrLcO5Ahz0F1D
	R/oEvruJdBpT086Gsc+t7vVMU9dmHPhEn0y3VfQTzyvA/Er0CEfLuAaRIj97nlCbX6BYhPmWTiD7X
	bSVbyQvsL2UF2etwn62XKq2YxKrothKI/22MkgC4LzDmBVlEhJ3kMdhWAEzlKK8mLw8dpdZn8VKXM
	N8R77L0/Dr8rz7J66ulA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8plE-0003da-Ic; Mon, 02 Mar 2020 18:25:48 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pih-0000Rx-Bf; Mon, 02 Mar 2020 18:23:13 +0000
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
IronPort-SDR: tlWCOD5Q9Ky7ztd5A6S2uk8ShLf4jkYUiicz44VpGHpIzn15Px6jIxKWW7sWKIRH13oU7oTwU6
 gkC5XFzLD8a4Jfi0kY6nyahsOj/UMwInsoabmZLIzAhYTFnkQEBcNrDKaSs+aWwacBMFmAZfIW
 5yWBBG1NMAv0NXefrH98rQYuu8i1SFkejc7dAWkY8Z5qxNxrxalryEVjDJ8JPa2RffMC2RsUDg
 WMe/mNvijmYGAGKOcsNtdhG7uYX5XSwtkV/sl8aG1zWWv02/NvpM3l8KR1yvPXtP0Le6by4U3x
 vso=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="67603669"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:23:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:08:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 11:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hGUUbDaGs9OLze7QJBdGJ5oGpzFQD9ZIX6fKEIsHJaVVRg66ubX5fLBVSm72u+6+Lk9yi8Rvo+lzUGBtpb/Kaq8f8P7JTzr6SZQvXBGRfJPvzK63WnLGKr+66xFswl0ZdoHAkGFuSK7TT2iZbxKwu4+5iqqlFi3O5a46+wEbUABjjfiUdXWdML90M+ggaWOjL0GouY3hdVNJGSQAEjVbmSenB3idOeidNeserTf+ym+tNo27Ln5pA9TtlEDnPRlFmcKdvpTpky/ueS3VhemRz3yq+jFJ9Y1Wa5XmZQMiSMyoAXLOykiRpdWJ1flA3Nc7GclAcdzbGA78TDub2rrrqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A5M9N/1e88yHX3LUSWyHfVlKzNlJzJheDKVqRRt+1ZI=;
 b=jAI9Wef0qJztPfOH2P2Wom2sKTrwyOTYx542F/9w6G8L0WbhA2SzYP1sAurvcsmb/VKyKMcYnthnD8BXNlobFtwpoOb7xfRI4Y3eRQhTAjzRj3gKpcsH0VfmSbwd8u8oD+DlmGYrBew+JQVow/EyOLLsLQNqZSjG98KN87R0rLvDjkoQgzoGA3lS9lbjORgcn5SsLovcGbdghgSQWX2d9Y+TBLemx8nz8Xeq/b/BPPn5Oa0/aH1EbZrLGGPpVgScftzflr+tdpdmQ41+APCeFM2copoEo5qVJw94HxXir+blE+xRMgSie+hxClw3PSVxoJdCpLihsx9KLd+VZR4zHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A5M9N/1e88yHX3LUSWyHfVlKzNlJzJheDKVqRRt+1ZI=;
 b=L1i4RVYbGYfIm/PrQ+caP+bkfu9CGgyxwnG1DMPUgGIDq1b0XmDb6aoJ1DDkiDXGCALs73VDD4DePNxDg3fapKQVVMir/YffiDPJ8WtStj7t+0UoK9+2+0P+WrG4h42fDTNdJXiXgHQ+NjMZQCO9cKbkHVz4I1y9SAArUFdeuI4=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:55 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:55 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 18/23] mtd: spi-nor: Move Winbond bits out of core.c
Thread-Topic: [PATCH 18/23] mtd: spi-nor: Move Winbond bits out of core.c
Thread-Index: AQHV8L1/zTBZ4xvLfkW9opCCEvBpqw==
Date: Mon, 2 Mar 2020 18:07:54 +0000
Message-ID: <20200302180730.1886678-19-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f10e74ed-fd9e-4ff0-ed6e-08d7bed4a21c
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142D92516D9DC9D659356D4F0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
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
x-microsoft-antispam-message-info: 17anQOtIQ3xDHTt/TefWdY58K58GhOqn4CYEJ3VdkMdubKuMyLKo4vFjk6gvo4zfb9nrNjj3vQ0s9KhrJWAihTT4mo4iu89Wb3wLBlvWwZYNa8CcEp/BxwIdOiUe3Hn3/zpR68TRWPVPEyShLGxD8oLokt0cGWvMuTM/DUd9z+LWgP+ZYlJPMi2q87CJ5xgrlVE2K1S+ip3lgPsR7CzJNcYvhv9Sw+Ei36gCgVnNarg8IuJKo3IwltVn0Y3qlv86wvbD25O7cKElIUCBlZPp5SvCPsjXYqCI/F8TO/THAqQxUs5ws7u+/S8a5ZRvxlUB8A174SaYN5fYFNXgMgY4VW5r3zXpcTmjXpF60UzK8t0iSnGYBPdMeUDwarpXltJCh0RGYobtC3DM+0FPklQ/XtxtPzj0ZZvcjUWy395O6Rn4k8UCMFK8ew1EOXganTO1
x-ms-exchange-antispam-messagedata: XqAosfgbhRaYCYyoQwuWqOwDDgJaPOGMcWy6UTj6E7klzpQRNatAYSNdpcqq7Bfki7M5TrWsGjL15qQDA5zDC9fxQz/vfuvIisV+LL6vNvWMdpJiRFlCy+6vU3TGwJzRFCfmMMqVPoWmyxxmJpXDQg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f10e74ed-fd9e-4ff0-ed6e-08d7bed4a21c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:54.8949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vA3umaxuJL+PfUQOG4G+D8sqmTIWOGyNlX2dEBfGnpc9o9GzoZBxRYPqBDafXxJKG4yfK46S2HeFVhL4dD/LXpF+K21Px56tVHpEP3U01uI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_102311_487581_F9ABE3A2 
X-CRM114-Status: GOOD (  12.79  )
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

Create a SPI NOR manufacturer driver for Winbond chips, and move the
Winbond definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile  |   1 +
 drivers/mtd/spi-nor/core.c    | 115 +---------------------------------
 drivers/mtd/spi-nor/core.h    |   1 +
 drivers/mtd/spi-nor/winbond.c | 113 +++++++++++++++++++++++++++++++++
 4 files changed, 116 insertions(+), 114 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/winbond.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index ef7afc654a15..33b6f834a14f 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -13,4 +13,5 @@ spi-nor-objs			+= macronix.o
 spi-nor-objs			+= micron-st.o
 spi-nor-objs			+= spansion.o
 spi-nor-objs			+= sst.o
+spi-nor-objs			+= winbond.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 9ff0b09887b4..c99f063b0781 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -487,38 +487,6 @@ int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
 	return ret;
 }
 
-/**
- * winbond_set_4byte() - Set 4-byte address mode for Winbond flashes.
- * @nor:	pointer to 'struct spi_nor'.
- * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
- *		address mode.
- *
- * Return: 0 on success, -errno otherwise.
- */
-static int winbond_set_4byte(struct spi_nor *nor, bool enable)
-{
-	int ret;
-
-	ret = spi_nor_en4_ex4_set_4byte(nor, enable);
-	if (ret || enable)
-		return ret;
-
-	/*
-	 * On Winbond W25Q256FV, leaving 4byte mode causes the Extended Address
-	 * Register to be set to 1, so all 3-byte-address reads come from the
-	 * second 16M. We must clear the register to enable normal behavior.
-	 */
-	ret = spi_nor_write_enable(nor);
-	if (ret)
-		return ret;
-
-	ret = spi_nor_write_ear(nor, 0);
-	if (ret)
-		return ret;
-
-	return spi_nor_write_disable(nor);
-}
-
 /**
  * spi_nor_xread_sr() - Read the Status Register on S3AN flashes.
  * @nor:	pointer to 'struct spi_nor'.
@@ -2017,73 +1985,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
-	{ "w25x05", INFO(0xef3010, 0, 64 * 1024,  1,  SECT_4K) },
-	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
-	{ "w25x20", INFO(0xef3012, 0, 64 * 1024,  4,  SECT_4K) },
-	{ "w25x40", INFO(0xef3013, 0, 64 * 1024,  8,  SECT_4K) },
-	{ "w25x80", INFO(0xef3014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25x16", INFO(0xef3015, 0, 64 * 1024,  32, SECT_4K) },
-	{
-		"w25q16dw", INFO(0xef6015, 0, 64 * 1024,  32,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, SECT_4K) },
-	{
-		"w25q16jv-im/jm", INFO(0xef7015, 0, 64 * 1024,  32,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{ "w25q20cl", INFO(0xef4012, 0, 64 * 1024,  4, SECT_4K) },
-	{ "w25q20bw", INFO(0xef5012, 0, 64 * 1024,  4, SECT_4K) },
-	{ "w25q20ew", INFO(0xef6012, 0, 64 * 1024,  4, SECT_4K) },
-	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
-	{
-		"w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"w25q32jv", INFO(0xef7016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"w25q32jwm", INFO(0xef8016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
-	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
-	{
-		"w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"w25q128fw", INFO(0xef6018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"w25q128jv", INFO(0xef7018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
-	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512,
-			  SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			  SPI_NOR_4B_OPCODES) },
-	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
-			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "w25q256jw", INFO(0xef6019, 0, 64 * 1024, 512,
-			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
-			SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
-
 	/* Catalyst / On Semiconductor -- non-JEDEC */
 	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
 	{ "cat25c03", CAT25_INFO(  32, 8, 16, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
@@ -2118,6 +2019,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_st,
 	&spi_nor_spansion,
 	&spi_nor_sst,
+	&spi_nor_winbond,
 };
 
 static const struct flash_info *
@@ -2811,11 +2713,6 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
-static void winbond_set_default_init(struct spi_nor *nor)
-{
-	nor->params.set_4byte = winbond_set_4byte;
-}
-
 /**
  * spi_nor_manufacturer_init_params() - Initialize the flash's parameters and
  * settings based on MFR register and ->default_init() hook.
@@ -2823,16 +2720,6 @@ static void winbond_set_default_init(struct spi_nor *nor)
  */
 static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
-	/* Init flash parameters based on MFR */
-	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_WINBOND:
-		winbond_set_default_init(nor);
-		break;
-
-	default:
-		break;
-	}
-
 	if (nor->manufacturer && nor->manufacturer->fixups &&
 	    nor->manufacturer->fixups->default_init)
 		nor->manufacturer->fixups->default_init(nor);
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 7bc0f6a15b36..01e0b8e2b191 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -180,6 +180,7 @@ extern const struct spi_nor_manufacturer spi_nor_micron;
 extern const struct spi_nor_manufacturer spi_nor_st;
 extern const struct spi_nor_manufacturer spi_nor_spansion;
 extern const struct spi_nor_manufacturer spi_nor_sst;
+extern const struct spi_nor_manufacturer spi_nor_winbond;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/winbond.c b/drivers/mtd/spi-nor/winbond.c
new file mode 100644
index 000000000000..1e77dffbf729
--- /dev/null
+++ b/drivers/mtd/spi-nor/winbond.c
@@ -0,0 +1,113 @@
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
+static const struct flash_info winbond_parts[] = {
+	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
+	{ "w25x05", INFO(0xef3010, 0, 64 * 1024,  1,  SECT_4K) },
+	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
+	{ "w25x20", INFO(0xef3012, 0, 64 * 1024,  4,  SECT_4K) },
+	{ "w25x40", INFO(0xef3013, 0, 64 * 1024,  8,  SECT_4K) },
+	{ "w25x80", INFO(0xef3014, 0, 64 * 1024,  16, SECT_4K) },
+	{ "w25x16", INFO(0xef3015, 0, 64 * 1024,  32, SECT_4K) },
+	{ "w25q16dw", INFO(0xef6015, 0, 64 * 1024,  32,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, SECT_4K) },
+	{ "w25q16jv-im/jm", INFO(0xef7015, 0, 64 * 1024,  32,
+				 SECT_4K | SPI_NOR_DUAL_READ |
+				 SPI_NOR_QUAD_READ | SPI_NOR_HAS_LOCK |
+				 SPI_NOR_HAS_TB) },
+	{ "w25q20cl", INFO(0xef4012, 0, 64 * 1024,  4, SECT_4K) },
+	{ "w25q20bw", INFO(0xef5012, 0, 64 * 1024,  4, SECT_4K) },
+	{ "w25q20ew", INFO(0xef6012, 0, 64 * 1024,  4, SECT_4K) },
+	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
+	{ "w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25q32jv", INFO(0xef7016, 0, 64 * 1024,  64,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+	},
+	{ "w25q32jwm", INFO(0xef8016, 0, 64 * 1024,  64,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25q128fw", INFO(0xef6018, 0, 64 * 1024, 256,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25q128jv", INFO(0xef7018, 0, 64 * 1024, 256,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
+	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
+	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
+	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512,
+			  SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			  SPI_NOR_4B_OPCODES) },
+	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "w25q256jw", INFO(0xef6019, 0, 64 * 1024, 512,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
+			    SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
+};
+
+/**
+ * winbond_set_4byte() - Set 4-byte address mode for Winbond flashes.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
+ *		address mode.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int winbond_set_4byte(struct spi_nor *nor, bool enable)
+{
+	int ret;
+
+	ret = spi_nor_en4_ex4_set_4byte(nor, enable);
+	if (ret || enable)
+		return ret;
+
+	/*
+	 * On Winbond W25Q256FV, leaving 4byte mode causes the Extended Address
+	 * Register to be set to 1, so all 3-byte-address reads come from the
+	 * second 16M. We must clear the register to enable normal behavior.
+	 */
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	ret = spi_nor_write_ear(nor, 0);
+	if (ret)
+		return ret;
+
+	return spi_nor_write_disable(nor);
+}
+
+static void winbond_default_init(struct spi_nor *nor)
+{
+	nor->params.set_4byte = winbond_set_4byte;
+}
+
+static const struct spi_nor_fixups winbond_fixups = {
+	.default_init = winbond_default_init,
+};
+
+const struct spi_nor_manufacturer spi_nor_winbond = {
+	.name = "winbond",
+	.parts = winbond_parts,
+	.nparts = ARRAY_SIZE(winbond_parts),
+	.fixups = &winbond_fixups,
+};
+
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

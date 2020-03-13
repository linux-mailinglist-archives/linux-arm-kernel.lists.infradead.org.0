Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4E5184FB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:55:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyClIEFrLW5oEFjDVFRu96TshhP5cz8NkRY54LAyuNU=; b=A61+jXC/+UNxTz
	kpAMlAHyzOeIjOD09LrZeI942PDdiV1CukTrjSqy5UQc8GVwTrUl7aM8ISxdqlzYAAnGXcGMw0mS/
	/xQmPz62H4helvmzT23tE9dm5V2xdBdgdMvF3m1ZcPFtvvYcRBvGVlUA1mEPsHN9JVqCgDlxtMufN
	R8w8VhwfA7oANdZqmP9QqXrVz7br+6FBQpO2aJ+ypfsjt76ybgYRx5NNl9OtjVWG++ttZJQUeGDdU
	1YAaJ/SuFgv8VaqCNL/xoxa2B+YFP08T0bZHLfbqyuDGcKdtL1FK8gv6OQwkxGB9UVXPeV8uHLa2+
	IIk2drrTyni1cFsGer2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqPK-0004pF-HS; Fri, 13 Mar 2020 19:55:46 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqD1-0008U3-2a; Fri, 13 Mar 2020 19:43:06 +0000
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
IronPort-SDR: wV+tokADDNiR7BWwwr9IJQ1Bl8WMtJnxgKwH3mmhqGDDDSXPa9S9Vw/WSs/Zf8tjAr9hEQTh5b
 bcIODtEcO9lzNJIaLVKPidCeURNC5nPsJheOMbHPGKH0lOlcU+aPLw2ExoKTC4nie5BvIiOPbD
 JNs3CwKzPiKdRNtZVadK2k/MGtBN9uzuYCIf3Xj3uHQqmiXoUSJKSq63hGQIqquFP/Oj9ZVtFg
 SVyjHlcupUE3/bhAocgdaoaj/G1PwsOYKsl4qp8onSb+PQhms4hEue9d1PNIftmixmx4zXx8lg
 2lw=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="67134836"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:58 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:53 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XbgiVuLtyw4dfHkLQkKW2Ryv70jeJlqo53awbaFWlBAINPkVqKFefdf8hVJabRpPFkdMxQV+av23fgKj4jaT3jSxoMjowkoPolJWFr2YLF12raawjridouAh5FfsGnEKarGQ/xF2IqDKuIPzSMg/vb4Wh4JEY2Mw5sPdJzazpX1vLDayD/Iosy/m3Tarpzw0GzBrQ1qKNPjFbjLE2ICwGu7w7ogH69b4jWx5hYd1XEJHqv4w8gkHjfZa63rHQgbAm7Rq+5RoWZcII2jD5+ZcCH8FKMvh934bs2ZYKeKRhVIqtWdsoE2nUWdQsicKYpw+n5vbZQrcPwZ6CZ0SYpLCaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hDMxuQraQuHzcTGpfTembJ40xUidi8TyNWqKdg/aw8Q=;
 b=fIGRsh+QvefMmWMZe8FHek/GsY0sr0cz6bzcGvbbDboz51XdBkySDj+g+XlUvsYu8OIHIBUg4Yd6VCmAYeeL94XwZneSL/RbimHN30yjlvluneTcXE6kI1KTyg6QrXBjolrSLMxeP7LhQnVZBVpHsdMX1yak0i7daT0+LTAf6rdcwsheJk0QCnwIuEFH6gVEyR7c80uTIhxZ5zjr1QSzAe8m7nspWopdzinnNCljTjzdp5w62jNNsVUAGarEK0DeKXNBZkvyLDHUYv0C+SW+jXHwbE9f9uqJhkRc5wXW+Qcx77BGVeIc5S7pmf44tiX6UyD35u8XC+QsQEGa7tciug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hDMxuQraQuHzcTGpfTembJ40xUidi8TyNWqKdg/aw8Q=;
 b=HglO+gJRMVwKMGTRC+Kt+3OtbOXJT3MR+kqlpcfmLa5wwuf9WbxeUMBJqTkcAi5JphTRU21uakLABzeamPLS1LTlrPtPoYwAQuPVA6FDq0wZx3Da90cLULrdrHNAhGfqzvipa4ybJvjW6qxkuwbkzvYFZJwwai9yK/tb4kiWnDo=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:52 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:52 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 15/25] mtd: spi-nor: Move Macronix bits out of core.c
Thread-Topic: [PATCH v2 15/25] mtd: spi-nor: Move Macronix bits out of core.c
Thread-Index: AQHV+W+R2rEdpqeeDUG+F+9MGBoHAQ==
Date: Fri, 13 Mar 2020 19:42:45 +0000
Message-ID: <20200313194130.342251-16-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78a55408-d636-40d4-b562-08d7c786b804
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB108A558577AC48FE55DA83F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(396003)(366004)(376002)(199004)(478600001)(54906003)(6512007)(110136005)(26005)(186003)(6486002)(4326008)(2616005)(316002)(71200400001)(6666004)(6506007)(86362001)(36756003)(8676002)(5660300002)(2906002)(66476007)(66446008)(66556008)(76116006)(64756008)(91956017)(66946007)(1076003)(81166006)(81156014)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYASPR01MB10;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V5fN5BiKvfqvMkWrZ3mKdlPiZEX5ynVlrPPk6deC9bzbqYRF/W++owASOXBGPlZq7eT6Sw3ybJfFV/twB/vlpPZHz5N4Holv1drE6gFWmMiHtJVjok/oBNK1tIlwVNPpwhTA407a+Wx5hN8rWhT95cwUiR/4+dYoJF/ezUWbTyYkWz6qwbF84vC7n2m87MW87B2K/69A6mhes99jQZZdlRSe/pxu2pMKb4/klSiNtDmVxRXdFHWcPjFqOi74abSIyEuHYRs/21FqFGJ6oSjT+Zj3j0/t4gbbyscmwnmRFB4oxLYEy0m82jnXr0pdIO62mfQp21U4otHz3BuLr9MJJ6Z5ryCVFzAtCcDkZ0onYBtgMqf8NpG2YcNa3QEZSSJ8DOaMKAZTDtJ7EIFvyUjvdW/bSaEJqzPDq7oyvHxPyxEtXOyCGkecFtvovybiSlSB
x-ms-exchange-antispam-messagedata: OPXKrIioXJJltjtwHrq4k+SLIDKZAa43P8NhBN4Ypq6jnJsaDwrySiq/QM08aEgD5ldlokpzlmATHTVtkX72OCSe9e5dd6xHDqr7xD/2Dj2qFHjvyyGxPOwgOcW5dGF6PuhruJNAXIMA/Kgv9V7yLQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 78a55408-d636-40d4-b562-08d7c786b804
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:45.3126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x/fOkkWpsgmrQfMl2gnoW3QsBpaShPuLhP2V376olGoNYReGbBPlzz1u/m5hVjMa3cFgGNwXqO4OnDEqgguKPOjsBbZGkuz6UPD5uEJpvo4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124303_285649_D80D6F71 
X-CRM114-Status: GOOD (  13.57  )
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
Cc: chenxiang66@hisilicon.com, richard@nod.at, Tudor.Ambarus@microchip.com,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

Create a SPI NOR manufacturer driver for Macronix chips, and move the
Macronix definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Tested-by: Xiang Chen <chenxiang66@hisilicon.com>
---
 drivers/mtd/spi-nor/Makefile   |  1 +
 drivers/mtd/spi-nor/core.c     | 69 +-----------------------
 drivers/mtd/spi-nor/core.h     |  1 +
 drivers/mtd/spi-nor/macronix.c | 98 ++++++++++++++++++++++++++++++++++
 4 files changed, 101 insertions(+), 68 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/macronix.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 5c849f104cc4..c94798987801 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -9,4 +9,5 @@ spi-nor-objs			+= fujitsu.o
 spi-nor-objs			+= gigadevice.o
 spi-nor-objs			+= intel.o
 spi-nor-objs			+= issi.o
+spi-nor-objs			+= macronix.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index a982d8ea811c..beb3c7372647 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2007,31 +2007,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
 	return 0;
 }
 
-static int
-mx25l25635_post_bfpt_fixups(struct spi_nor *nor,
-			    const struct sfdp_parameter_header *bfpt_header,
-			    const struct sfdp_bfpt *bfpt,
-			    struct spi_nor_flash_parameter *params)
-{
-	/*
-	 * MX25L25635F supports 4B opcodes but MX25L25635E does not.
-	 * Unfortunately, Macronix has re-used the same JEDEC ID for both
-	 * variants which prevents us from defining a new entry in the parts
-	 * table.
-	 * We need a way to differentiate MX25L25635E and MX25L25635F, and it
-	 * seems that the F version advertises support for Fast Read 4-4-4 in
-	 * its BFPT table.
-	 */
-	if (bfpt->dwords[BFPT_DWORD(5)] & BFPT_DWORD5_FAST_READ_4_4_4)
-		nor->flags |= SNOR_F_4B_OPCODES;
-
-	return 0;
-}
-
-static struct spi_nor_fixups mx25l25635_fixups = {
-	.post_bfpt = mx25l25635_post_bfpt_fixups,
-};
-
 /* NOTE: double check command sets and memory organization when you add
  * more nor chips.  This current list focusses on newer chips, which
  * have been converging on command sets which including JEDEC ID.
@@ -2044,39 +2019,6 @@ static struct spi_nor_fixups mx25l25635_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Macronix */
-	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
-	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
-	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, SECT_4K) },
-	{ "mx25l8005",   INFO(0xc22014, 0, 64 * 1024,  16, 0) },
-	{ "mx25l1606e",  INFO(0xc22015, 0, 64 * 1024,  32, SECT_4K) },
-	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, SECT_4K) },
-	{ "mx25l3255e",  INFO(0xc29e16, 0, 64 * 1024,  64, SECT_4K) },
-	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, SECT_4K) },
-	{ "mx25u2033e",  INFO(0xc22532, 0, 64 * 1024,   4, SECT_4K) },
-	{ "mx25u3235f",	 INFO(0xc22536, 0, 64 * 1024,  64,
-			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "mx25u4035",   INFO(0xc22533, 0, 64 * 1024,   8, SECT_4K) },
-	{ "mx25u8035",   INFO(0xc22534, 0, 64 * 1024,  16, SECT_4K) },
-	{ "mx25u6435f",  INFO(0xc22537, 0, 64 * 1024, 128, SECT_4K) },
-	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
-	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
-	{ "mx25r3235f",  INFO(0xc22816, 0, 64 * 1024,  64,
-			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "mx25u12835f", INFO(0xc22538, 0, 64 * 1024, 256,
-			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512,
-			 SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)
-			 .fixups = &mx25l25635_fixups },
-	{ "mx25u25635f", INFO(0xc22539, 0, 64 * 1024, 512, SECT_4K | SPI_NOR_4B_OPCODES) },
-	{ "mx25v8035f",  INFO(0xc22314, 0, 64 * 1024,  16,
-			 SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
-	{ "mx66l51235l", INFO(0xc2201a, 0, 64 * 1024, 1024, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "mx66u51235f", INFO(0xc2253a, 0, 64 * 1024, 1024, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "mx66l1g45g",  INFO(0xc2201b, 0, 64 * 1024, 2048, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "mx66l1g55g",  INFO(0xc2261b, 0, 64 * 1024, 2048, SPI_NOR_QUAD_READ) },
-
 	/* Micron <--> ST Micro */
 	{ "n25q016a",	 INFO(0x20bb15, 0, 64 * 1024,   32, SECT_4K | SPI_NOR_QUAD_READ) },
 	{ "n25q032",	 INFO(0x20ba16, 0, 64 * 1024,   64, SPI_NOR_QUAD_READ) },
@@ -2313,6 +2255,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_gigadevice,
 	&spi_nor_intel,
 	&spi_nor_issi,
+	&spi_nor_macronix,
 };
 
 static const struct flash_info *
@@ -3092,12 +3035,6 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
-static void macronix_set_default_init(struct spi_nor *nor)
-{
-	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
-	nor->params.set_4byte_addr_mode = spi_nor_set_4byte_addr_mode;
-}
-
 static void sst_set_default_init(struct spi_nor *nor)
 {
 	nor->flags |= SNOR_F_HAS_LOCK;
@@ -3125,10 +3062,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_MACRONIX:
-		macronix_set_default_init(nor);
-		break;
-
 	case SNOR_MFR_ST:
 	case SNOR_MFR_MICRON:
 		st_micron_set_default_init(nor);
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 0967c84235ce..8ef5acc5d052 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -175,6 +175,7 @@ extern const struct spi_nor_manufacturer spi_nor_fujitsu;
 extern const struct spi_nor_manufacturer spi_nor_gigadevice;
 extern const struct spi_nor_manufacturer spi_nor_intel;
 extern const struct spi_nor_manufacturer spi_nor_issi;
+extern const struct spi_nor_manufacturer spi_nor_macronix;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/macronix.c b/drivers/mtd/spi-nor/macronix.c
new file mode 100644
index 000000000000..c9b6b45d8f99
--- /dev/null
+++ b/drivers/mtd/spi-nor/macronix.c
@@ -0,0 +1,98 @@
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
+static int
+mx25l25635_post_bfpt_fixups(struct spi_nor *nor,
+			    const struct sfdp_parameter_header *bfpt_header,
+			    const struct sfdp_bfpt *bfpt,
+			    struct spi_nor_flash_parameter *params)
+{
+	/*
+	 * MX25L25635F supports 4B opcodes but MX25L25635E does not.
+	 * Unfortunately, Macronix has re-used the same JEDEC ID for both
+	 * variants which prevents us from defining a new entry in the parts
+	 * table.
+	 * We need a way to differentiate MX25L25635E and MX25L25635F, and it
+	 * seems that the F version advertises support for Fast Read 4-4-4 in
+	 * its BFPT table.
+	 */
+	if (bfpt->dwords[BFPT_DWORD(5)] & BFPT_DWORD5_FAST_READ_4_4_4)
+		nor->flags |= SNOR_F_4B_OPCODES;
+
+	return 0;
+}
+
+static struct spi_nor_fixups mx25l25635_fixups = {
+	.post_bfpt = mx25l25635_post_bfpt_fixups,
+};
+
+static const struct flash_info macronix_parts[] = {
+	/* Macronix */
+	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
+	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
+	{ "mx25l4005a",  INFO(0xc22013, 0, 64 * 1024,   8, SECT_4K) },
+	{ "mx25l8005",   INFO(0xc22014, 0, 64 * 1024,  16, 0) },
+	{ "mx25l1606e",  INFO(0xc22015, 0, 64 * 1024,  32, SECT_4K) },
+	{ "mx25l3205d",  INFO(0xc22016, 0, 64 * 1024,  64, SECT_4K) },
+	{ "mx25l3255e",  INFO(0xc29e16, 0, 64 * 1024,  64, SECT_4K) },
+	{ "mx25l6405d",  INFO(0xc22017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "mx25u2033e",  INFO(0xc22532, 0, 64 * 1024,   4, SECT_4K) },
+	{ "mx25u3235f",	 INFO(0xc22536, 0, 64 * 1024,  64,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mx25u4035",   INFO(0xc22533, 0, 64 * 1024,   8, SECT_4K) },
+	{ "mx25u8035",   INFO(0xc22534, 0, 64 * 1024,  16, SECT_4K) },
+	{ "mx25u6435f",  INFO(0xc22537, 0, 64 * 1024, 128, SECT_4K) },
+	{ "mx25l12805d", INFO(0xc22018, 0, 64 * 1024, 256, 0) },
+	{ "mx25l12855e", INFO(0xc22618, 0, 64 * 1024, 256, 0) },
+	{ "mx25r3235f",  INFO(0xc22816, 0, 64 * 1024,  64,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mx25u12835f", INFO(0xc22538, 0, 64 * 1024, 256,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mx25l25635e", INFO(0xc22019, 0, 64 * 1024, 512,
+			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)
+		.fixups = &mx25l25635_fixups },
+	{ "mx25u25635f", INFO(0xc22539, 0, 64 * 1024, 512,
+			      SECT_4K | SPI_NOR_4B_OPCODES) },
+	{ "mx25v8035f",  INFO(0xc22314, 0, 64 * 1024,  16,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
+	{ "mx66l51235l", INFO(0xc2201a, 0, 64 * 1024, 1024,
+			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			      SPI_NOR_4B_OPCODES) },
+	{ "mx66u51235f", INFO(0xc2253a, 0, 64 * 1024, 1024,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
+	{ "mx66l1g45g",  INFO(0xc2201b, 0, 64 * 1024, 2048,
+			      SECT_4K | SPI_NOR_DUAL_READ |
+			      SPI_NOR_QUAD_READ) },
+	{ "mx66l1g55g",  INFO(0xc2261b, 0, 64 * 1024, 2048,
+			      SPI_NOR_QUAD_READ) },
+};
+
+static void macronix_default_init(struct spi_nor *nor)
+{
+	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
+	nor->params.set_4byte_addr_mode = spi_nor_set_4byte_addr_mode;
+}
+
+static const struct spi_nor_fixups macronix_fixups = {
+	.default_init = macronix_default_init,
+};
+
+const struct spi_nor_manufacturer spi_nor_macronix = {
+	.name = "macronix",
+	.parts = macronix_parts,
+	.nparts = ARRAY_SIZE(macronix_parts),
+	.fixups = &macronix_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

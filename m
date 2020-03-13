Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951D5184FAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:55:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DYeUymOauJ6HUKgH2C8c49fFyJ3iJS9dTDDm3+bo1j4=; b=kLsCvzlpwIKl/X
	6a9qCgx8j9/OBQ2dfg2TnPut3N1PHPyu+PLdgFD6TPNLP/a5r83LZn1U8quRbiGp8+ZTPnTL6c4gg
	uSOTprVtNJIYCwPJzHzREGMObt6eU8dGsELfTykwpxy1KB2PBXoxq2qd0ttf/dhYmvGhAQ+xWrUCT
	ayE2LkOAIgIBUPKDqndKPczwHLhel7ugtw5KRGWNNdyZalu9GH51G4HqLhn77+MDU3sslBM1k2KLI
	eZvtIMtQ0r+wR6FIeS63akmxipQNSEIuFCrYP/0OvLo05buCc4dPxDPpUdYxvwXNNtufO6vizjR4V
	gGiuImtz/TTaz3Nkoq5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqOT-0002wI-0n; Fri, 13 Mar 2020 19:54:53 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqD0-0008RC-5A; Fri, 13 Mar 2020 19:43:05 +0000
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
IronPort-SDR: fUlsYVZT6w9y7SYmTyvSkDVjtrCSuf8LegO3M41HXKAEMzcL5G08WsQq7YVJGkRKecgPbN2O/H
 o0G12zckrc5RS3QYwJkwzOyRwXcuQGppbcgN69QatVjfpYJY9eJcmf/nAcAHtMDztnJ8C8zvs+
 QtcxbM6zfRuvvYAgTFS5JvpAW1z4W4VW1Hw6z4H2u/suh1wULtMYoeEulS6ysDTcEDPqERXnsQ
 cMMGBIf0cmmc3GkdTqnCqmjyLCVn/TeA7Q4fUC/lkYT2R2tYaGqG6J4ksQrwajOheQhnRK15fy
 TL8=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="67134834"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:58 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:52 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Mar 2020 12:42:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dc7RTi2BZK45ATR1LEH8A/OnHFzwjqvjLWwUDimbiNx3MLUDyawpjzb/svHEpN9qk98SCVZ9BI7Rcp37EYhZ7W8H2p311+B2sNz5qa4bU+2wLCL+Wg0FEwqJVHsFqvBgKK8yBrcnz1rzEw9XyDdXep5vNpPk5NEp4pHQBPc0fmA2nUVapOIebEa5u2oMWOV8MKDfAmzB/mHDsUr/Nhu3rN+9Yf/ug8DqIQe1Aao2qVV0iR8W7HZk1uS/dQVu5UlaOsb2r8IJcZ4sdBuwiO4B5Qynei2pGelid2utSBDGDPBI7NiLouXpZBCsw6yzYXnVxKtukh1waRBttt5a5F/xCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5iNiCabVjgYRy6L8vj4Qu9KcyXZa1cI+NLbCw4H6Dmw=;
 b=hpUEa/dPQ+DjzxUuBsWyzI/8vLLaWN3gFARlhXoXAfgS6crvgqB0GaV3QL+/+BcX2vzNHyXlG4y49ZPTmjBWK6FZ3TVizXnW9uhxsc7K0xIlwHZRIAi4NUHobvtoaLJCdQ8DGcnfRUNmlwJUeisP936wdZa4bNfycDVc9rhn1U+pQDXW5MEfn9bwkSb/cJ+c4urvA9IvsXdhusXHn2keSfYTgVROb2TswfwJaiGQn+2LG/3NjFPABMQ2jvNkwwU0AKTAMepjU3LmTeZLzquC3l3HIYu5QAkyUxyjyG1aN22d1T6uXWnKTRcLoN/RuNggU2+RDE6jW+oizJirmKxLjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5iNiCabVjgYRy6L8vj4Qu9KcyXZa1cI+NLbCw4H6Dmw=;
 b=pstIp0CjvUObbiOt2j1c/Qn6/BzIMP75Uwkdm9QuAGZdEQAMWfg09M/ycucrjM3NoZiV3mXKf09Jn/c9j991UdcfTdGnxsWr+7/uan3Gx3doCu1gh7sMoYCERjgRZ/Y1LflxzUPXPaDUOgL6S5868CPhvvz8uNlQK6uCeGYS9qc=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:51 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:51 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 14/25] mtd: spi-nor: Move ISSI bits out of core.c
Thread-Topic: [PATCH v2 14/25] mtd: spi-nor: Move ISSI bits out of core.c
Thread-Index: AQHV+W+QSPiawotuK0C+oL8h/VRSMA==
Date: Fri, 13 Mar 2020 19:42:44 +0000
Message-ID: <20200313194130.342251-15-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee79398c-ba5f-4735-54e5-08d7c786b79b
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB1026136F3D4922B44DC290F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: JEerzQmx5wLwr2OJJzJN2vD+ULHvYXmTefdnMhOaNK/xjS9e9eaeB1FCAmEDttGUmcQjXgtrjb5xSE6YL2yW2LM+w3KjwrI8Z5iDdpCLbJxBvq1Uyisbd/uHel1P6VevbxrwR9xo/56Cu7LdKadMiE0+1otnnqCTYX589YrXb7d4jFAXldSyf2llVPgbRNS3Mc1bSW1daraCzQ1aykMdXuCnJ9HnC4u3L6+x72R5sQwUQkw46+9TAoFqKsXaCyMX30FChKwRbyAMoXqZGRbEnYgEZVBGv5onoko1avMFsa1A+y8rN77hhynRzo7gFB2qZuoCuIHd2quCLCF5wPH3KQy1qaVn2LShJsF/EsFkSPKX1DV+uBhO9hD+9Y0N4VYRRB5TcVaJpEpjxbpU210M7dWjeZEjoofvN5g/r48JO0I2jPqqN84zDcRc53PwC3w3
x-ms-exchange-antispam-messagedata: jxwGexnqmOEI20i3cFkNz9P3Vdyw1gSN4Y3oQmBnuXCMu0SbUIoHc+sVXUXXpoV+xuyYR88z/omFNj8fK/GqJlOBiJyHi8Po8sK6fMlmnFHJpyjK6APAixJvDIl3rQBoYODDZJK+3g2AZ/s4RRasCQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ee79398c-ba5f-4735-54e5-08d7c786b79b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:44.5141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bi0/jO8Y7/c5IGaHaeUoigpX+3e4V5RpN7rzIooxlD0v6n9mr0eAnawjhQ4AfDztZKo5SABvSCu+DSW5pQKNe6GdnJVkkkuw3ZlvFzoEq/w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124302_281755_018403D7 
X-CRM114-Status: GOOD (  14.38  )
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

Create a SPI NOR manufacturer driver for ISSI chips, and move the
ISSI definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile |  1 +
 drivers/mtd/spi-nor/core.c   | 66 +---------------------------
 drivers/mtd/spi-nor/core.h   |  1 +
 drivers/mtd/spi-nor/issi.c   | 83 ++++++++++++++++++++++++++++++++++++
 4 files changed, 86 insertions(+), 65 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/issi.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 8eb741a27fa7..5c849f104cc4 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -8,4 +8,5 @@ spi-nor-objs			+= everspin.o
 spi-nor-objs			+= fujitsu.o
 spi-nor-objs			+= gigadevice.o
 spi-nor-objs			+= intel.o
+spi-nor-objs			+= issi.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index e860f4efdeba..a982d8ea811c 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2007,28 +2007,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
 	return 0;
 }
 
-static int
-is25lp256_post_bfpt_fixups(struct spi_nor *nor,
-			   const struct sfdp_parameter_header *bfpt_header,
-			   const struct sfdp_bfpt *bfpt,
-			   struct spi_nor_flash_parameter *params)
-{
-	/*
-	 * IS25LP256 supports 4B opcodes, but the BFPT advertises a
-	 * BFPT_DWORD1_ADDRESS_BYTES_3_ONLY address width.
-	 * Overwrite the address width advertised by the BFPT.
-	 */
-	if ((bfpt->dwords[BFPT_DWORD(1)] & BFPT_DWORD1_ADDRESS_BYTES_MASK) ==
-		BFPT_DWORD1_ADDRESS_BYTES_3_ONLY)
-		nor->addr_width = 4;
-
-	return 0;
-}
-
-static struct spi_nor_fixups is25lp256_fixups = {
-	.post_bfpt = is25lp256_post_bfpt_fixups,
-};
-
 static int
 mx25l25635_post_bfpt_fixups(struct spi_nor *nor,
 			    const struct sfdp_parameter_header *bfpt_header,
@@ -2066,35 +2044,6 @@ static struct spi_nor_fixups mx25l25635_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* ISSI */
-	{ "is25cd512",  INFO(0x7f9d20, 0, 32 * 1024,   2, SECT_4K) },
-	{ "is25lq040b", INFO(0x9d4013, 0, 64 * 1024,   8,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25lp016d", INFO(0x9d6015, 0, 64 * 1024,  32,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25lp080d", INFO(0x9d6014, 0, 64 * 1024,  16,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25lp032",  INFO(0x9d6016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "is25lp064",  INFO(0x9d6017, 0, 64 * 1024, 128,
-			SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "is25lp128",  INFO(0x9d6018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "is25lp256",  INFO(0x9d6019, 0, 64 * 1024, 512,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_4B_OPCODES)
-			.fixups = &is25lp256_fixups },
-	{ "is25wp032",  INFO(0x9d7016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25wp064",  INFO(0x9d7017, 0, 64 * 1024, 128,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 512,
-			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			    SPI_NOR_4B_OPCODES)
-		       .fixups = &is25lp256_fixups },
-
 	/* Macronix */
 	{ "mx25l512e",   INFO(0xc22010, 0, 64 * 1024,   1, SECT_4K) },
 	{ "mx25l2005a",  INFO(0xc22012, 0, 64 * 1024,   4, SECT_4K) },
@@ -2175,11 +2124,6 @@ static const struct flash_info spi_nor_ids[] = {
 			     SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
 			     SPI_NOR_4B_OPCODES) },
 
-	/* PMC */
-	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
-	{ "pm25lv010",   INFO(0,        0, 32 * 1024,    4, SECT_4K_PMC) },
-	{ "pm25lq032",   INFO(0x7f9d46, 0, 64 * 1024,   64, SECT_4K) },
-
 	/* Spansion/Cypress -- single (large) sector size only, at least
 	 * for the chips listed here (without boot sectors).
 	 */
@@ -2368,6 +2312,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_fujitsu,
 	&spi_nor_gigadevice,
 	&spi_nor_intel,
+	&spi_nor_issi,
 };
 
 static const struct flash_info *
@@ -3147,11 +3092,6 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
-static void issi_set_default_init(struct spi_nor *nor)
-{
-	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
-}
-
 static void macronix_set_default_init(struct spi_nor *nor)
 {
 	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
@@ -3185,10 +3125,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_ISSI:
-		issi_set_default_init(nor);
-		break;
-
 	case SNOR_MFR_MACRONIX:
 		macronix_set_default_init(nor);
 		break;
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 3d31e7fc4ac4..0967c84235ce 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -174,6 +174,7 @@ extern const struct spi_nor_manufacturer spi_nor_everspin;
 extern const struct spi_nor_manufacturer spi_nor_fujitsu;
 extern const struct spi_nor_manufacturer spi_nor_gigadevice;
 extern const struct spi_nor_manufacturer spi_nor_intel;
+extern const struct spi_nor_manufacturer spi_nor_issi;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/issi.c b/drivers/mtd/spi-nor/issi.c
new file mode 100644
index 000000000000..3a1c34c41388
--- /dev/null
+++ b/drivers/mtd/spi-nor/issi.c
@@ -0,0 +1,83 @@
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
+is25lp256_post_bfpt_fixups(struct spi_nor *nor,
+			   const struct sfdp_parameter_header *bfpt_header,
+			   const struct sfdp_bfpt *bfpt,
+			   struct spi_nor_flash_parameter *params)
+{
+	/*
+	 * IS25LP256 supports 4B opcodes, but the BFPT advertises a
+	 * BFPT_DWORD1_ADDRESS_BYTES_3_ONLY address width.
+	 * Overwrite the address width advertised by the BFPT.
+	 */
+	if ((bfpt->dwords[BFPT_DWORD(1)] & BFPT_DWORD1_ADDRESS_BYTES_MASK) ==
+		BFPT_DWORD1_ADDRESS_BYTES_3_ONLY)
+		nor->addr_width = 4;
+
+	return 0;
+}
+
+static struct spi_nor_fixups is25lp256_fixups = {
+	.post_bfpt = is25lp256_post_bfpt_fixups,
+};
+
+static const struct flash_info issi_parts[] = {
+	/* ISSI */
+	{ "is25cd512",  INFO(0x7f9d20, 0, 32 * 1024,   2, SECT_4K) },
+	{ "is25lq040b", INFO(0x9d4013, 0, 64 * 1024,   8,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25lp016d", INFO(0x9d6015, 0, 64 * 1024,  32,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25lp080d", INFO(0x9d6014, 0, 64 * 1024,  16,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25lp032",  INFO(0x9d6016, 0, 64 * 1024,  64,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "is25lp064",  INFO(0x9d6017, 0, 64 * 1024, 128,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "is25lp128",  INFO(0x9d6018, 0, 64 * 1024, 256,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "is25lp256",  INFO(0x9d6019, 0, 64 * 1024, 512,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			     SPI_NOR_4B_OPCODES)
+		.fixups = &is25lp256_fixups },
+	{ "is25wp032",  INFO(0x9d7016, 0, 64 * 1024,  64,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25wp064",  INFO(0x9d7017, 0, 64 * 1024, 128,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25wp128",  INFO(0x9d7018, 0, 64 * 1024, 256,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "is25wp256", INFO(0x9d7019, 0, 64 * 1024, 512,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_4B_OPCODES)
+		.fixups = &is25lp256_fixups },
+
+	/* PMC */
+	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
+	{ "pm25lv010",   INFO(0,        0, 32 * 1024,    4, SECT_4K_PMC) },
+	{ "pm25lq032",   INFO(0x7f9d46, 0, 64 * 1024,   64, SECT_4K) },
+};
+
+static void issi_default_init(struct spi_nor *nor)
+{
+	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
+}
+
+static const struct spi_nor_fixups issi_fixups = {
+	.default_init = issi_default_init,
+};
+
+const struct spi_nor_manufacturer spi_nor_issi = {
+	.name = "issi",
+	.parts = issi_parts,
+	.nparts = ARRAY_SIZE(issi_parts),
+	.fixups = &issi_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D05184F68
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:45:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxwyVDZkADex5d/6JM4cHQU8FAc+laTeI41NzhjouEU=; b=khCSrOUwrt3D0k
	aTN879dLmA5KR0n+DjhbMdWhOK8WW6I5p2RHcExi8p+lZLMd8MglZXOqneG4kekr/5fFDGbQXTe8E
	SOR0u7Rd6ppkSNwOU3TMzMixi9iJebOOWXqHxcJiQr2jAOyzIFpY0jmbuhhbLoseGUrb1lNp0PbEk
	t+nJFNM7AebbQKKin5260DhixN1mLl7XIU8ctgLwqx+Qi0ncwnRMFzf2BhRYclnkcBKaJqOg/D7j5
	Tlu/cXaaiunXSfy3j7WzkHzYbxYi+OoWucbSgueNF9SqCYUUsC4Ya4VyAeO9OElhLBMoO917uL7TJ
	kW3Nrp5wtRFVBF8HpTLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqFC-0001E8-BH; Fri, 13 Mar 2020 19:45:18 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCl-0008IA-3s; Fri, 13 Mar 2020 19:42:48 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Bl3TnCDRHyKhFmpXa5JIRd0/oIxMeIJnRUxdzfetprzL2zuCbTUykHgASXc+f/35j8tAbbTFMn
 HdO6EymAMyjjGH0g6LBojDh97SnmOJioIvYlIYk6zkNdBIkThf9WWH25ej/zLY9ECssJZojA2p
 1W0jFdwduBr7NIQ6nQOyY1qUDEoj0h8ZJj8vUliusypWNPGVPh9w5tKv/Jcd486gH7YW8Zc1ix
 1WNBtaD8KUnoOTiAQq96nn18GOoWkFYKa8L6aJv9AxcC+saDu9rPopHp5HQsHX59aNIpgDzJKt
 W4E=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; 
   d="scan'208";a="5602886"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:42 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D50iT6MRXERkj7at04ishDDRAAJI5xHhR2USdanaa5F8zy1jXZYrci8Q1tcoseH3EU1Nas8IcxeaJ48gZqAc2NMQMg7SSjCEVI9FUZQ8LIwUnTw37+/BFeQKJKkATT7tx2siksBsCJIh5ZEOurkQTRvKHgW67NfmPjJ2J9MDP7Hg5mxuDxicVd+sb5zjuuu52PpA7hAyEU8hjV2a8ucmTKf6mTAkE/2O3g8a4oyKCz9OOKwVe+YKwIHd3wh6kTPO4a+TQPUJbsmpug4Rn+XSqi3kC+uq9CSuh23NCwRp1oziqOCowOyda8ld+Myti7eTi2bjoxdIA/ppp56xeY8q2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yaeVAxlaslJocFf9K68P7baVSySyxqnn9we7cf2o6ZQ=;
 b=HPRAQR4t4wdBq1Xz3o/IjlEKo9sNoXb2N2/RCs7uVaoMx0DD9DMTd8R9g1TOU8QdQh7tzqKb7EOE40gjVxcbcB1G/NEi98P4clVvbUAVk/O38co3Tohgd595PI3hftri10/1g36e1mmQeZ6BwBeZ+wfMwCF0Uudi3J9pm9jJO6E+dyPdX+7J2O/NHlQM7M2Q67bBcBgJZd9Q8qeBAUXjHpmpAx35mtVp0a2Vhb9Erty5Jwd+NilHL4RrBH6UupMbxOB9rRDM7kXG8I8/wqmOD/h/LWaYNARzsFd8/w7wTx/PmhH68ufSjj6kK7/CO3P7NKEOOI1lStsVHwRTMl47dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yaeVAxlaslJocFf9K68P7baVSySyxqnn9we7cf2o6ZQ=;
 b=Au5PZ8GrZkr6r8/6Vx13ZISSA10B+HYZQ1l3nv6UK+3X9jIL4lLTnA2O4oCu3lo9+JQyMZIaK+GFPIIxEbjAevvEO0YSEPpAo2vIuurb449jZDojvuL3QExwq4708asZmzsmYGGsAoVbJpEdkreYvLUv9zg3cYpG1Vjc8huRyuQ=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4399.namprd11.prod.outlook.com (2603:10b6:208:17b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Fri, 13 Mar
 2020 19:42:35 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:35 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 02/25] mtd: spi-nor: Emphasise which is the generic
 set_4byte_addr_mode() method
Thread-Topic: [PATCH v2 02/25] mtd: spi-nor: Emphasise which is the generic
 set_4byte_addr_mode() method
Thread-Index: AQHV+W+LEWumuAvqOkiuwTaxjifMiA==
Date: Fri, 13 Mar 2020 19:42:35 +0000
Message-ID: <20200313194130.342251-3-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e06158e1-ab47-496b-d022-08d7c786adef
x-ms-traffictypediagnostic: MN2PR11MB4399:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB439924043CC84F569A68E3D4F0FA0@MN2PR11MB4399.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(396003)(366004)(39860400002)(199004)(316002)(2616005)(186003)(71200400001)(81156014)(110136005)(26005)(86362001)(107886003)(8936002)(54906003)(6512007)(8676002)(76116006)(91956017)(66946007)(66556008)(66476007)(66446008)(64756008)(81166006)(478600001)(4326008)(5660300002)(1076003)(6506007)(6486002)(36756003)(2906002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4399;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: obduPHgYg1SlvF3+rY3k3M75POdIjlwUbSzlJQDzDJCCRYeILB84OsxZMCOVTCJz052/4Mi4PwdXERSTHlpIuv75u5ptq/YPwDoWn+VvGkG9BpaPjjWwTDurH3dIHzX+hZnv7CYYefhWCKHeI5kc1vOj7gvJBgVpjVlOQcz+TZYdOG7u0bJDVg5qjYt0aa6otkWm9Dbip8Uo54/w8tYP9sMe8EbxB1uI/N7M9hkoCyoc1GZzU3qHvMikpPFH9wBZRfvJ49wo3bNaR5SO3iecXQVpeL4OFL2SbtrIZTVY9rciuiztBnFana+/sk7HnUON/NXg9H2KjP4CeAzpYOa8lPV1L6BO3qpLnpHmcQo105fpmaPajg3dexlVekihoHKCbb9oLh7glKEcCvuDX6pNlFHc5X251j4R8jbdHTjKvVb0hqUlx5aOYVb3A43vhTTiisojQdmSWyJ9bBl3tF0cGc0RcA3nJxxZsLKBtyEjtoyrgKB6QUYAD4R7HxcIQ6rz
x-ms-exchange-antispam-messagedata: hhHS+G/+V36zANLui3r/ysU2e7XUB1x6yVeQBvd2ALUBHuSm1OBd3rOsDciNODftWFwX1TYEdPU2gIVnIeJuYPDiRRq5eCELE5NCTj3kQIysSRz/9tW6nXChXDotMv/jZ6oUW88LyxrbH1wZ+5YjEg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e06158e1-ab47-496b-d022-08d7c786adef
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:35.2575 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a+E2yiccm1+a32VP1I8M7ksVHO8+Thp+UUVrftWu/B1zCYdIm+hKVU13fYW1ekefo+rwkUSKA0MCOIjTHuS/XD9CkxnmtfEAKdEmxMFoZ08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124247_230444_3F517E63 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Rename (*set_4byte)() to (*set_4byte_addr_mode)() for a better
differentiation between the 4 byte address mode and opcodes.

Rename macronix_set_4byte() to spi_nor_set_4byte_addr_mode(), it will be
the only 4 byte address mode method exposed to the manufacturer drivers.

Here's how the manufacturers enter and exit the 4 byte address mode:
- eon, gidadevice, issi, macronix, xmc use EN4B/EX4B
- micron-st needs WEN. st_micron_set_4byte_addr_mode() will become
  a private method, as they are the only ones that need WEN before the
  EN4B/EX4B commands.
- newer spansion have a 4BAM opcode (this translates to a new, public
  command). Older spansion  flashes use the BRWR command (legacy in
  core.c -> spansion_set_4byte_addr_mode())
- winbond's method is hackish and may be reason for just a flash
  fixup hook -> private method

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 34 ++++++++++++++++++----------------
 include/linux/mtd/spi-nor.h   |  4 ++--
 2 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 0b8fac0b0299..8616673ddb7c 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -568,14 +568,14 @@ static int spi_nor_read_cr(struct spi_nor *nor, u8 *cr)
 }
 
 /**
- * macronix_set_4byte() - Set 4-byte address mode for Macronix flashes.
+ * spi_nor_set_4byte_addr_mode() - Enter/Exit 4-byte address mode.
  * @nor:	pointer to 'struct spi_nor'.
  * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
  *		address mode.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int macronix_set_4byte(struct spi_nor *nor, bool enable)
+static int spi_nor_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
@@ -604,14 +604,15 @@ static int macronix_set_4byte(struct spi_nor *nor, bool enable)
 }
 
 /**
- * st_micron_set_4byte() - Set 4-byte address mode for ST and Micron flashes.
+ * st_micron_set_4byte_addr_mode() - Set 4-byte address mode for ST and Micron
+ * flashes.
  * @nor:	pointer to 'struct spi_nor'.
  * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
  *		address mode.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
+static int st_micron_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
@@ -619,7 +620,7 @@ static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
 	if (ret)
 		return ret;
 
-	ret = macronix_set_4byte(nor, enable);
+	ret = spi_nor_set_4byte_addr_mode(nor, enable);
 	if (ret)
 		return ret;
 
@@ -627,14 +628,15 @@ static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
 }
 
 /**
- * spansion_set_4byte() - Set 4-byte address mode for Spansion flashes.
+ * spansion_set_4byte_addr_mode() - Set 4-byte address mode for Spansion
+ * flashes.
  * @nor:	pointer to 'struct spi_nor'.
  * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
  *		address mode.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spansion_set_4byte(struct spi_nor *nor, bool enable)
+static int spansion_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
@@ -692,18 +694,18 @@ static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
 }
 
 /**
- * winbond_set_4byte() - Set 4-byte address mode for Winbond flashes.
+ * winbond_set_4byte_addr_mode() - Set 4-byte address mode for Winbond flashes.
  * @nor:	pointer to 'struct spi_nor'.
  * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
  *		address mode.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int winbond_set_4byte(struct spi_nor *nor, bool enable)
+static int winbond_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
-	ret = macronix_set_4byte(nor, enable);
+	ret = spi_nor_set_4byte_addr_mode(nor, enable);
 	if (ret || enable)
 		return ret;
 
@@ -4655,7 +4657,7 @@ static void issi_set_default_init(struct spi_nor *nor)
 static void macronix_set_default_init(struct spi_nor *nor)
 {
 	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
-	nor->params.set_4byte = macronix_set_4byte;
+	nor->params.set_4byte_addr_mode = spi_nor_set_4byte_addr_mode;
 }
 
 static void sst_set_default_init(struct spi_nor *nor)
@@ -4668,12 +4670,12 @@ static void st_micron_set_default_init(struct spi_nor *nor)
 	nor->flags |= SNOR_F_HAS_LOCK;
 	nor->flags &= ~SNOR_F_HAS_16BIT_SR;
 	nor->params.quad_enable = NULL;
-	nor->params.set_4byte = st_micron_set_4byte;
+	nor->params.set_4byte_addr_mode = st_micron_set_4byte_addr_mode;
 }
 
 static void winbond_set_default_init(struct spi_nor *nor)
 {
-	nor->params.set_4byte = winbond_set_4byte;
+	nor->params.set_4byte_addr_mode = winbond_set_4byte_addr_mode;
 }
 
 /**
@@ -4759,7 +4761,7 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 
 	/* Initialize legacy flash parameters and settings. */
 	params->quad_enable = spi_nor_sr2_bit1_quad_enable;
-	params->set_4byte = spansion_set_4byte;
+	params->set_4byte_addr_mode = spansion_set_4byte_addr_mode;
 	params->setup = spi_nor_default_setup;
 	/* Default to 16-bit Write Status (01h) Command */
 	nor->flags |= SNOR_F_HAS_16BIT_SR;
@@ -5011,7 +5013,7 @@ static int spi_nor_init(struct spi_nor *nor)
 		 */
 		WARN_ONCE(nor->flags & SNOR_F_BROKEN_RESET,
 			  "enabling reset hack; may not recover from unexpected reboots\n");
-		nor->params.set_4byte(nor, true);
+		nor->params.set_4byte_addr_mode(nor, true);
 	}
 
 	return 0;
@@ -5035,7 +5037,7 @@ void spi_nor_restore(struct spi_nor *nor)
 	/* restore the addressing mode */
 	if (nor->addr_width == 4 && !(nor->flags & SNOR_F_4B_OPCODES) &&
 	    nor->flags & SNOR_F_BROKEN_RESET)
-		nor->params.set_4byte(nor, false);
+		nor->params.set_4byte_addr_mode(nor, false);
 }
 EXPORT_SYMBOL_GPL(spi_nor_restore);
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index de90724f62f1..2b9717b0cd62 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -520,7 +520,7 @@ struct spi_nor_locking_ops {
  * @erase_map:		the erase map parsed from the SFDP Sector Map Parameter
  *                      Table.
  * @quad_enable:	enables SPI NOR quad mode.
- * @set_4byte:		puts the SPI NOR in 4 byte addressing mode.
+ * @set_4byte_addr_mode: puts the SPI NOR in 4 byte addressing mode.
  * @convert_addr:	converts an absolute address into something the flash
  *                      will understand. Particularly useful when pagesize is
  *                      not a power-of-2.
@@ -541,7 +541,7 @@ struct spi_nor_flash_parameter {
 	struct spi_nor_erase_map        erase_map;
 
 	int (*quad_enable)(struct spi_nor *nor);
-	int (*set_4byte)(struct spi_nor *nor, bool enable);
+	int (*set_4byte_addr_mode)(struct spi_nor *nor, bool enable);
 	u32 (*convert_addr)(struct spi_nor *nor, u32 addr);
 	int (*setup)(struct spi_nor *nor, const struct spi_nor_hwcaps *hwcaps);
 
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

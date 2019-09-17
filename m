Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A178B5280
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jn9Fyg2PHg8yKlVTl19Ua1tc8gTKsktHIlbLauWk8g=; b=nOmF0emCdK3Bd+
	zYp5JAmh82zYZlvgIow+bjE76A7KndJPhods5ygNDhksW5/rLPyHo0Kw7cxE907XuN3LZO1Z6wsaa
	PRJTUsT9f9R0fC2qBi/3iXc+nIE5xbHZocZD8QKIzoL238gB5Lu/pxBViq4P5jBP4sxcXtD7prb2Z
	qoTUDyxZacPbMc1CQYDvBS0QQEhlY+7m3/Ajmz+xIOwmYF2tS/Ch45DTwwSV5cZ+bKJc2cGMp2PMW
	Lgmwzmd0axbUMxd0VKyrG9Q1zclC5tL6OdqdbwhedMWM5EBpeFwTC7Dc7vO4BzMzo2x/niHAcbdja
	cPDTM/tb8ItgeAV/jYAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAG2P-0004l6-GB; Tue, 17 Sep 2019 16:09:09 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFpW-00086p-Rh; Tue, 17 Sep 2019 15:55:52 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ulW1nNB2g9NH+uWDigwRfTkxQSKPa832uv9RIf9rUwdnTvHbqPWbcaicuiizn5EpHxwksuF1Dr
 53418hG/zruYESWM8Um+9WUGgZh2X5OpWY5LI2iSyYnmZ3aAOlq477QKBypP2+0oVSqQpnTYMF
 15AaLWBAot0Ieb8/8n6Z8DEK2Cak26+QVOpiYuuKu3IWyhu4/4aJCZMp2CBdao+xi6nFGdWofT
 Y38C2w5fYfdVxr3tagKLmIeXgCBF+KkLo6YN8WVYHyUU2LpZnDZgquOhriaYmEcmyAKUluzOo4
 PCk=
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="48252515"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Sep 2019 08:55:47 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Sep 2019 08:55:44 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 17 Sep 2019 08:55:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YhdEnWa+Tzgb0QwK4kATS4c2neXQWHNTkBCZ+5Aa8WOVNAun/T2pQBUkbycaj8mcc6gWa9aNkkfDTsSHlV611oqxkKltXFL3/01K4471Ftn2K9BpMuurEsdQdoXvlnNkZRnykQYXtKuGxTxVpKsuDRPRUQ9pcrOxl8L7gp0Ji+ed5liFWF4xvN848//QjhfkaEAOgBIuVpeRXNU9W80YxN+z+jOVQ3OjAFOQ62s54lfpUTR2jBK2+aFMZte5+xMHpOnd5S+RZZzWCQuhfUqMEkWxuPKF5mhD08nFmhQYb8DoADzixSS/h3A61Df/6kD68UZHkAfe6RKvh7C3Q15Aqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ecCpdDpENn6qqT8qOX1kBqG9SvcVtPQmFAkNLaJlDA=;
 b=a1fC0TpT9xEF61papq3xQqiK7sxw3QWx5g0OlkCpy+ZnkGNCjUmmndlFx+QG8GobRRwGR6/Z4XlsTcDe5Ifs++gfZQH+Z8e0gzVpGBk0/g/j2HsWbHTyRY6rrQ6xOVLvHKaknx70SvvJYZ9t3owPGDmGaHk/yvrXsliWtHbFYRxajT5owUqpu6PksScGpd15RECfhVI4xtg1y2YHF7DZowwdm+kIK9KkJqbQz2x4SQTgpUIw14lD+N661szT2PHUWAgx6TGFbgy7MsO7gz8DUMfC+FaUDZq4MfmJuXYF4na4u3xH5dnqCWXNx+5xKvkR7irmoZadQctD8w69x6fGIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ecCpdDpENn6qqT8qOX1kBqG9SvcVtPQmFAkNLaJlDA=;
 b=uUUy02hls+4NJglbSP4ikoCS1x3qNxf03A2eFLASylKKa2ckTg0taL7xnUVSMC2wvN7AJllqGFC7rSQtyn/iOtQiwFfeU5XwepH4nzs9QvUnuGqQ/7Yj4ULBk7JOZHkXg94TsGX7z8jTDvM0n/5LQUNBx1w3APXmmG8QgP1lRlQ=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3725.namprd11.prod.outlook.com (20.178.253.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Tue, 17 Sep 2019 15:55:42 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 15:55:42 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 19/23] mtd: spi-nor: Rework spansion(_no)_read_cr_quad_enable()
Thread-Topic: [PATCH 19/23] mtd: spi-nor: Rework
 spansion(_no)_read_cr_quad_enable()
Thread-Index: AQHVbXBbffKexv8yJ0aKaPhVIe5Rwg==
Date: Tue, 17 Sep 2019 15:55:41 +0000
Message-ID: <20190917155426.7432-20-tudor.ambarus@microchip.com>
References: <20190917155426.7432-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190917155426.7432-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0302CA0007.eurprd03.prod.outlook.com
 (2603:10a6:800:e9::17) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2cf3481b-77d1-4729-96e7-08d73b877dfb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3725; 
x-ms-traffictypediagnostic: MN2PR11MB3725:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB37256CA906657619DEF1ADA6F08F0@MN2PR11MB3725.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(39860400002)(136003)(366004)(199004)(189003)(76176011)(52116002)(5660300002)(71190400001)(2616005)(6486002)(6512007)(476003)(11346002)(81166006)(6436002)(66556008)(386003)(6506007)(26005)(66446008)(66946007)(64756008)(186003)(66476007)(102836004)(316002)(446003)(2201001)(110136005)(54906003)(8936002)(107886003)(478600001)(50226002)(25786009)(2906002)(86362001)(81156014)(2501003)(6116002)(3846002)(256004)(305945005)(7736002)(7416002)(99286004)(36756003)(66066001)(14454004)(8676002)(71200400001)(4326008)(1076003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3725;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: K3waqPD9N9/+H6ea/bhvuFkXNJl3RxrTcMGqxyw2OcKSmN9u20xe70/cYoDoR9xQJJzYuMP6TSYVyrWruJHPSuI4loWvIla9zV3PDdHIbKKckHylPk1JFWqr5LFF4rkhylVRaa/uNgY0FHiSOQ+gZhC4ayHuX0O2hrDha1YmFjKZU60l0+OZ1QjQ8FP0a6vcrGNHRb11fPvSwc0cwvYGhYlp9WlTCCvVAuCEknCXV/WVpMTU4xFufxsdLomkgxPedmNhk1Wu4ZAgDqr9Gr2SZ9I7sKOABQnShhvu9Kkvltoa/dfR7dwbDEL7pYQ+/pKl/Sm/YS3e0r+ygh1atERvHBJmKZv0+hDRmsx3YNvevbKBTs3K9Tie3mkNfS42S0H7KK2dx8Tt1DVvk9NbSuUXiJAxEQDfK9ec8AE1rXW+l8A=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cf3481b-77d1-4729-96e7-08d73b877dfb
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 15:55:41.9986 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r/Jfp3/Hty199zVI/uObHy4ydUkd78Y1IFGYNZLl9r9pszP8r51pYVwb4n1+anxP2DfmZhknV3I//mWEmI7Q3xmz51oUFWjvULNp44jaZwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3725
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_085551_007050_EDFB9CE5 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: linux-aspeed@lists.ozlabs.org, Tudor.Ambarus@microchip.com, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, vz@mleia.com, linux-mediatek@lists.infradead.org,
 joel@jms.id.au, matthias.bgg@gmail.com, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Merge:
spansion_no_read_cr_quad_enable()
spansion_read_cr_quad_enable()

in spi_nor_sr2_bit1_quad_enable().

Avoid duplication of code by using spi_nor_write_16bit_sr_and_check(),
the SNOR_F_NO_READ_CR case is treated there.

We now do the Read Back test even for the old
spansion_no_read_cr_quad_enable() case.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 89 ++++++++++---------------------------------
 include/linux/mtd/spi-nor.h   |  4 +-
 2 files changed, 22 insertions(+), 71 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 2f79923e7db5..8648666fb9bd 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -907,7 +907,7 @@ static int spi_nor_write_16bit_sr_and_check(struct spi_nor *nor, u8 status_new,
 		 * Write Status (01h) command is available just for the cases
 		 * in which the QE bit is described in SR2 at BIT(1).
 		 */
-		sr_cr[1] = CR_QUAD_EN_SPAN;
+		sr_cr[1] = SR2_QUAD_EN_BIT1;
 	} else {
 		sr_cr[1] = 0;
 	}
@@ -1963,81 +1963,34 @@ static int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor)
 }
 
 /**
- * spansion_no_read_cr_quad_enable() - set QE bit in Configuration Register.
+ * spi_nor_sr2_bit1_quad_enable() - set the Quad Enable BIT(1) in the Status
+ * Register 2.
  * @nor:	pointer to a 'struct spi_nor'
  *
- * Set the Quad Enable (QE) bit in the Configuration Register.
- * This function should be used with QSPI memories not supporting the Read
- * Configuration Register (35h) instruction.
- *
- * bit 1 of the Configuration Register is the QE bit for Spansion like QSPI
- * memories.
- *
- * Return: 0 on success, -errno otherwise.
- */
-static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
-{
-	u8 *sr_cr = nor->bouncebuf;
-	int ret;
-
-	/* Keep the current value of the Status Register. */
-	ret = spi_nor_read_sr(nor, &sr_cr[0]);
-	if (ret)
-		return ret;
-
-	sr_cr[1] = CR_QUAD_EN_SPAN;
-
-	return spi_nor_write_sr(nor, sr_cr, 2);
-}
-
-/**
- * spansion_read_cr_quad_enable() - set QE bit in Configuration Register.
- * @nor:	pointer to a 'struct spi_nor'
- *
- * Set the Quad Enable (QE) bit in the Configuration Register.
- * This function should be used with QSPI memories supporting the Read
- * Configuration Register (35h) instruction.
- *
- * bit 1 of the Configuration Register is the QE bit for Spansion like QSPI
- * memories.
+ * Bit 1 of the Status Register 2 is the QE bit for Spansion like QSPI memories.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int spansion_read_cr_quad_enable(struct spi_nor *nor)
+static int spi_nor_sr2_bit1_quad_enable(struct spi_nor *nor)
 {
-	u8 *sr_cr = nor->bouncebuf;
 	int ret;
 
-	/* Check current Quad Enable bit value. */
-	ret = spi_nor_read_cr(nor, &sr_cr[1]);
-	if (ret)
-		return ret;
-
-	if (sr_cr[1] & CR_QUAD_EN_SPAN)
-		return 0;
+	if (!(nor->flags & SNOR_F_NO_READ_CR)) {
+		/* Check current Quad Enable bit value. */
+		ret = spi_nor_read_cr(nor, &nor->bouncebuf[0]);
+		if (ret)
+			return ret;
 
-	sr_cr[1] |= CR_QUAD_EN_SPAN;
+		if (nor->bouncebuf[0] & SR2_QUAD_EN_BIT1)
+			return 0;
+	}
 
 	/* Keep the current value of the Status Register. */
-	ret = spi_nor_read_sr(nor, &sr_cr[0]);
-	if (ret)
-		return ret;
-
-	ret = spi_nor_write_sr(nor, sr_cr, 2);
-	if (ret)
-		return ret;
-
-	/* Read back and check it. */
-	ret = spi_nor_read_cr(nor, &sr_cr[1]);
+	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
 	if (ret)
 		return ret;
 
-	if (!(sr_cr[1] & CR_QUAD_EN_SPAN)) {
-		dev_err(nor->dev, "Spansion Quad bit not set\n");
-		return -EIO;
-	}
-
-	return 0;
+	return spi_nor_write_16bit_sr_and_check(nor, nor->bouncebuf[0], 0xFF);
 }
 
 /**
@@ -2117,7 +2070,7 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
  *
  * Read-modify-write function that clears the Block Protection bits from the
  * Status Register without affecting other bits. The function is tightly
- * coupled with the spansion_read_cr_quad_enable() function. Both assume that
+ * coupled with the spi_nor_sr2_bit1_quad_enable() function. Both assume that
  * the Write Register with 16 bits, together with the Read Configuration
  * Register (35h) instructions are supported.
  *
@@ -2138,7 +2091,7 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 	 * When the configuration register Quad Enable bit is one, only the
 	 * Write Status (01h) command with two data bytes may be used.
 	 */
-	if (sr_cr[1] & CR_QUAD_EN_SPAN) {
+	if (sr_cr[1] & SR2_QUAD_EN_BIT1) {
 		ret = spi_nor_read_sr(nor, &sr_cr[0]);
 		if (ret)
 			return ret;
@@ -3642,7 +3595,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 		 * supported.
 		 */
 		nor->flags |= SNOR_F_NO_READ_CR;
-		flash->quad_enable = spansion_no_read_cr_quad_enable;
+		flash->quad_enable = spi_nor_sr2_bit1_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR1_BIT6:
@@ -3663,7 +3616,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 		 * assumption of a 16-bit Write Status (01h) command.
 		 */
 		nor->flags |= SNOR_F_HAS_16BIT_SR;
-		flash->quad_enable = spansion_read_cr_quad_enable;
+		flash->quad_enable = spi_nor_sr2_bit1_quad_enable;
 		break;
 
 	default:
@@ -4626,7 +4579,7 @@ static void spi_nor_info_init_flash_params(struct spi_nor *nor)
 	u8 i, erase_mask;
 
 	/* Initialize legacy flash parameters and settings. */
-	flash->quad_enable = spansion_read_cr_quad_enable;
+	flash->quad_enable = spi_nor_sr2_bit1_quad_enable;
 	flash->set_4byte = spansion_set_4byte;
 	flash->setup = spi_nor_default_setup;
 	/* Default to 16-bit Write Status (01h) Command */
@@ -4844,7 +4797,7 @@ static int spi_nor_init(struct spi_nor *nor)
 	int err;
 
 	if (nor->clear_sr_bp) {
-		if (nor->flash.quad_enable == spansion_read_cr_quad_enable)
+		if (nor->flash.quad_enable == spi_nor_sr2_bit1_quad_enable)
 			nor->clear_sr_bp = spi_nor_spansion_clear_sr_bp;
 
 		err = nor->clear_sr_bp(nor);
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 3a835de90b6a..5590a36eb43e 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -144,10 +144,8 @@
 #define FSR_P_ERR		BIT(4)	/* Program operation status */
 #define FSR_PT_ERR		BIT(1)	/* Protection error bit */
 
-/* Configuration Register bits. */
-#define CR_QUAD_EN_SPAN		BIT(1)	/* Spansion Quad I/O */
-
 /* Status Register 2 bits. */
+#define SR2_QUAD_EN_BIT1	BIT(1)
 #define SR2_QUAD_EN_BIT7	BIT(7)
 
 /* Supported SPI protocols */
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

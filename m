Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D43B5276
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVi03adMYTc++jkZa/wdCCSbnqKS0lUXumdWVYlt3bM=; b=NfB3Oi75Bl6BHm
	vcx9NDzkGxSpUaEHKXCO9zFSYPLSwiFOhLhw3ghKOfeqzOnh7dtJinc9V7j81eFvCijwyL6EBMmp4
	iWHuhEEAJun8v2nN4Ce2A1EVB3K0hx3B+9NiBiTmnbTxTNxG0UVjApeYiZ0LeITulY178Ohp6pz2t
	gGJC6bil+gxR9WcyE7X6SdXd4rKtBRtpPvF+U4rBvm5FIjfbtO9QInzgd5IF4Q2O+gEm13udH19IC
	TV5o0cbg09qBuCzA/215tErn6Hye/SsGpXj63tNSfzZ6gCkPeNqi6CBCbGCgqE8eZjBgJMDSUTy7U
	Gz7euuAwzVVV1SgN1c1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAG1E-0003Va-Hu; Tue, 17 Sep 2019 16:07:56 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFpT-00086p-N4; Tue, 17 Sep 2019 15:55:50 +0000
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
IronPort-SDR: J2n7Vartea6wYLpBrPlGIxR2m1HzVqXQSNOnUYjVnXS5BotZ3BZrQIrslhq1R6oR6Dv0k9SPzA
 aNjFp9HD3m2tGN9gDP3bCnk6Ams/J8FdSknvhZgill0MxL4StHWZnq8y9cYkphJYCWTuNQWkHP
 wJKoxsRftV3MPzUz8w1fdNyxFTMuDovKGP2ZqwV+ec2Dcwp+e/R9PBuwwgdWm/LIywadkOuaDJ
 4yAT7cuyissVcDMQcAI0gnNG/GJxJZRYDwDxU0JtX/RtqDCc+TLOZ1XDECSDUYHGY9xY5pgJjr
 +tI=
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="48252512"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Sep 2019 08:55:46 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Sep 2019 08:55:41 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 17 Sep 2019 08:55:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gy8OKeKS9g/lYj718tT9GoBrB8DoOtCMg0zTEnNRtGlfI70bqxk2UEpJvcWK/lY6rXTDuMmet8STeM7VCGnTBvh3E5yJOZ+8u+Lg8RUc3ULkowMmg2Ti6SZBNJyvSoFt6s+TV0xEo5BM6tCon7pEz1Ho9JSrQqTt7S/jdMUBkn6Xp+veKeGNfR/RDWnzzcw9HSAXYKT+9vsfXfdU2EKwgZ4Gp3miUdsknW1EqqwRVsd9zvn/bONZ0zYY958SpJ+iZMkHNn9gEvOMSHX0iYLNapEz0O7naLQpDPcCKAEbeY5ZpBmCFLFBQcjjY7jEO3Gb94IwL8v+hRSyTCsEhb5Bwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OKC5b7UjzUQ3SxUt9wk3LiIsa1hL7pYkjtFMJd+1pjw=;
 b=ZcG9WaL4q6bmZG8CTS1lXEk7r8vncI5+S99CEklfEbYIDJLeRUx+mXpGkSTMg5frB1/qy45Duxu1xO9eZU0fntAbuXsKaywrXBGoSOkcTH82yPG5WbAmI4/gyeeFx3cjHcZr4xHtofsOm0fSokO1rBrnhKH3NXxh64hnwQB1b5xmLI5nFAGJnwmB/UrC6V51Xk9YEXJwUKHvmtWSdY8NKe5YJ6uhNuoL091IWameJd2zIJiKNa+8ksM1LpF7Fxps7sT8AdhZUE2ETM+wH9ncPxmXhgwEFy3VN+y96AR9tlqdOpgQJPKNpuAU69dD17D5MsqhiPLvxzmap+mARHwg3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OKC5b7UjzUQ3SxUt9wk3LiIsa1hL7pYkjtFMJd+1pjw=;
 b=h9AKQDrSyWAbnQmeK6r6mth7E0vjzGf2sQxBcDhWWgRrYWic316EwQNCaVIrh5Jy5W2ct+PN6rn5sC2MQ+zkiscgY1SNHTTg8RACpY5FlsQOFmYZZMvlDQGrIhjW4lozTFsLUL0YpJHv7t6gGNWuiMdE3rcy7KG4ChmiQhqTG80=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3984.namprd11.prod.outlook.com (10.255.181.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Tue, 17 Sep 2019 15:55:38 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 15:55:38 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 18/23] mtd: spi-nor: Rework macronix_quad_enable()
Thread-Topic: [PATCH 18/23] mtd: spi-nor: Rework macronix_quad_enable()
Thread-Index: AQHVbXBZG9yAVdGRvkC3vecu7tUBzg==
Date: Tue, 17 Sep 2019 15:55:38 +0000
Message-ID: <20190917155426.7432-19-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 15f1b520-defa-4e35-b53b-08d73b877c20
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3984; 
x-ms-traffictypediagnostic: MN2PR11MB3984:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3984DF16F8B5BC5E37726130F08F0@MN2PR11MB3984.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(396003)(136003)(39860400002)(376002)(366004)(346002)(199004)(189003)(478600001)(2616005)(64756008)(66476007)(3846002)(6486002)(107886003)(25786009)(6512007)(50226002)(6436002)(305945005)(99286004)(14444005)(71200400001)(476003)(7416002)(486006)(256004)(66066001)(71190400001)(7736002)(76176011)(102836004)(36756003)(26005)(386003)(66446008)(14454004)(66946007)(1076003)(86362001)(6506007)(186003)(6116002)(5660300002)(66556008)(110136005)(81156014)(81166006)(2501003)(8676002)(54906003)(316002)(4326008)(8936002)(11346002)(2906002)(446003)(52116002)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3984;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3Sgtao9C5IkAV4mkQwuXGU/gOJa2ID2j5mWxqbKXrTOLufoQ6i7/rVrYy2pjBmJ6tX1W2L8BwzCa6vKQyaz05bJmTFFyKLY1KtcLpc4ENxPPFEHBmaMefxjIjsYeJSYUqZlWzJJs9xjqYQacqrSMd0V5rbcJnkoyy02rHLM4xZbf0zGv2q1ZaaOMg28k9g/7tYZOZ8cGSVLxl7rehWjgMhfkvsG31fabjLEbc2Ff1FDn9F/02nPiGyhooverlH47FS5tdm1IGZlHObW2E0/STDQZg4+pJrpx85Zw2dP+buDofAstZb1Q7Y9IaNsg5/yIP0IynVnGI6BG383G1aHG8noIuy864ar3ErdQjQMn3flrxxavGXxFNpYXg0TYKhgG8abzJxRrKLCf+0XVBbpGxlN5HA3/adXmFJa+v4gdRrc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 15f1b520-defa-4e35-b53b-08d73b877c20
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 15:55:38.8204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4s6URAcG5SJe8UhN08LZ8jppxGQKmkWg1BWHtEFI4v7HQfuzBRWfMyAuM5CiOL1Lq8qDnm2BHVWQ+kESNPRJmJuxBY4032PCizjYK60X6wM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_085548_800072_AE9DEDA3 
X-CRM114-Status: GOOD (  12.96  )
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

Rename method to a generic name: spi_nor_sr1_bit6_quad_enable().

Use spi_nor_write_sr1_and_check(). Now we check the validity of all
the eight bits of the Status Register, not just of the SR1_QUAD_EN_BIT6.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 34 ++++++++++------------------------
 include/linux/mtd/spi-nor.h   |  2 +-
 2 files changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 4a513ed13807..2f79923e7db5 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1938,16 +1938,15 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 }
 
 /**
- * macronix_quad_enable() - set QE bit in Status Register.
+ * spi_nor_sr1_bit6_quad_enable() - Set the Quad Enable BIT(6) in the Status
+ * Register 1.
  * @nor:	pointer to a 'struct spi_nor'
  *
- * Set the Quad Enable (QE) bit in the Status Register.
- *
- * bit 6 of the Status Register is the QE bit for Macronix like QSPI memories.
+ * Bit 6 of the Status Register 1 is the QE bit for Macronix like QSPI memories.
  *
  * Return: 0 on success, -errno otherwise.
  */
-static int macronix_quad_enable(struct spi_nor *nor)
+static int spi_nor_sr1_bit6_quad_enable(struct spi_nor *nor)
 {
 	int ret;
 
@@ -1955,25 +1954,12 @@ static int macronix_quad_enable(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	if (nor->bouncebuf[0] & SR_QUAD_EN_MX)
+	if (nor->bouncebuf[0] & SR1_QUAD_EN_BIT6)
 		return 0;
 
-	nor->bouncebuf[0] |= SR_QUAD_EN_MX;
+	nor->bouncebuf[0] |= SR1_QUAD_EN_BIT6;
 
-	ret = spi_nor_write_sr(nor, &nor->bouncebuf[0], 1);
-	if (ret)
-		return ret;
-
-	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
-	if (ret)
-		return ret;
-
-	if (!(nor->bouncebuf[0] & SR_QUAD_EN_MX)) {
-		dev_err(nor->dev, "Macronix Quad bit not set\n");
-		return -EIO;
-	}
-
-	return 0;
+	return spi_nor_write_sr1_and_check(nor, nor->bouncebuf[0], 0xFF);
 }
 
 /**
@@ -2277,7 +2263,7 @@ static void gd25q256_default_init(struct spi_nor *nor)
 	 * indicate the quad_enable method for this case, we need
 	 * to set it in the default_init fixup hook.
 	 */
-	nor->flash.quad_enable = macronix_quad_enable;
+	nor->flash.quad_enable = spi_nor_sr1_bit6_quad_enable;
 }
 
 static struct spi_nor_fixups gd25q256_fixups = {
@@ -3661,7 +3647,7 @@ static int spi_nor_parse_bfpt(struct spi_nor *nor,
 
 	case BFPT_DWORD15_QER_SR1_BIT6:
 		nor->flags &= ~SNOR_F_HAS_16BIT_SR;
-		flash->quad_enable = macronix_quad_enable;
+		flash->quad_enable = spi_nor_sr1_bit6_quad_enable;
 		break;
 
 	case BFPT_DWORD15_QER_SR2_BIT7:
@@ -4558,7 +4544,7 @@ static int spi_nor_setup(struct spi_nor *nor,
 
 static void macronix_set_default_init(struct spi_nor *nor)
 {
-	nor->flash.quad_enable = macronix_quad_enable;
+	nor->flash.quad_enable = spi_nor_sr1_bit6_quad_enable;
 	nor->flash.set_4byte = macronix_set_4byte;
 }
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index fc3a8f5209f0..3a835de90b6a 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -133,7 +133,7 @@
 #define SR_E_ERR		BIT(5)
 #define SR_P_ERR		BIT(6)
 
-#define SR_QUAD_EN_MX		BIT(6)	/* Macronix Quad I/O */
+#define SR1_QUAD_EN_BIT6	BIT(6)
 
 /* Enhanced Volatile Configuration Register bits */
 #define EVCR_QUAD_EN_MICRON	BIT(7)	/* Micron Quad I/O */
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CB5AF965
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+TLWtQuaNWX/vqeXHAhOO7QB18jwB4Kig5o6PvDQH1A=; b=USAUk+rXyyF5kA
	WV5EHEjr95Qo7AvZ17wjBbMeN3YAf1uIas8zWOroEdwaNUXn2OT7hKQa4BEIJ5suduxtmm4UQZfma
	l0XY41vUFqLXXR3HDz5dEPzTUWA9dWjxOWG3M+x8d4j0wf7LUGtN3TU0ega2ZOu3yUknv6S/pdDaY
	hLjv9j4eEGrx5OvDXZ0rzC3gE4Vk/TQ3GeZCigfurP/AQfwToGdADfqYHqhut7qDx26IYP63xgrl6
	UltiCitao+QrYgd628Un+TeZVZk3SaapHnnNurcRsK52JTkWE3PVnTn7t7pnN5XY/ELPoq1d2uub7
	pI6ol1kuxc9fVesSEqsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zES-0000Be-2d; Wed, 11 Sep 2019 09:48:12 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7s-0001mE-Eu; Wed, 11 Sep 2019 09:41:25 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: l4u61T1KjcphSdU+jIlzWUKk31Bck1GkNViY48WuAsNtF3/Es2zCJmIoe9HrWQWt8EDJ15gQvk
 hEitJ3uSwJ3rNFU4JqGZkwxuXdke/keGW3z5GP/+Ij4HCg4YJo9Mm4cFshvPxu0rCB1UFr+7za
 aegxN3yCQuoXM7h6+sGvSz0WtwAy/RDRZcUdHTfV15wBc2HzcYA5fFN5/fc8BDXMl8IxkipS3F
 8Kl1G8vgfElyyKnyVkXUxR81q8RNeTJ74zxoxT2W9vk+u6gD6McwyuJgQZaT2PV6xVk1RwhaxF
 E1Y=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="48492758"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:41:23 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:41:23 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 02:41:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ago5m4IjLpQQLaCKhKDml7XLauq6XmNuvhpABRWv42p5virrBc66F9mGvLTEc5JJqcqCfCq81Tn55yBXdYlDUitZDgSwF29QEJV8vc6J7dOXsxX13Ad93l4Khuo9leWnIS9e2NyiUmjuKGdeQzK8/WkdCi6n40yHliuKcJWXwxcE/VlWn8Bh7K7LMY/XyKHt/MirU80v/QTp0cwLwlahRUleF25fHEj/QM4vV98zVhRrjhgMh9BadViThfVi4e1Cpakp2q3y+GDR0EBoLRBdGvTBJ0rFxigToS54O5iWNmpiHbA+21F5XzQZEqM6Q+EuXWEwpzro8+Szlk0FNjDIJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cKTNTv0pfFuebshKYgVGqc3J+/lUraEneUDERpIAV7Y=;
 b=Z8AC27W41hCqIKnUMCnMddw+mO2/j9TjeA/BeKXW57C4RUsNfzlJ7Vq9FXALVEOIwQIhuw8swBb7ZIiPTxOhBvnf0x1GX8ct3Hc3PY0dcJpkuM5I8njH4l7jzrElORuB9BOzJ8b/2SqSeFWVZvXuJV4BXANebucDlGKcRg6CzlBkjAhrFkBy05BH8TmCHf1Lm2hJUvkbSqHsRp7DA1X8psclDVjQ5pBKcHEkAQ6dzzbtLBrpHI2zf/GEFJyKeiRy5dBDHFGKRGhF1v6j+VpyXLUjJZNNKopOHYj3gao7I648N62+joDNLgvaMP3S+Mg3GpZo2q2U+LE35x+FX8TN+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cKTNTv0pfFuebshKYgVGqc3J+/lUraEneUDERpIAV7Y=;
 b=fiYX5kyJELMYpUaLvQbiijp566aVIWZ+HjOz25P2d/ksxfQHj0Hdz3ajueQNIXjP9Mu/wWkaUapXuHAhzmeIPhyP40C341CsVZr9lL5x9wwDqmIGpJiQ5+fMyfvrGzK26L5wY2MfJOAEQXKm/5pbRQlZrbgM3Ko0F6u5ZjXCgeE=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:41:21 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:41:21 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 11/13] mtd: spi-nor: Report error in spi_nor_xread_sr()
Thread-Topic: [PATCH 11/13] mtd: spi-nor: Report error in spi_nor_xread_sr()
Thread-Index: AQHVaIUR8+yfreZeCUCzeYrVLt2vqA==
Date: Wed, 11 Sep 2019 09:41:21 +0000
Message-ID: <20190911094031.17615-12-tudor.ambarus@microchip.com>
References: <20190911094031.17615-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190911094031.17615-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0118.eurprd09.prod.outlook.com
 (2603:10a6:803:78::41) To BY5PR11MB4435.namprd11.prod.outlook.com
 (2603:10b6:a03:1ce::30)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd9e0052-0d1c-4a0a-5a21-08d7369c33cd
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB44012E3CE657C02C9B11FAE9F0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(1076003)(53936002)(6512007)(102836004)(478600001)(256004)(36756003)(26005)(25786009)(4326008)(5660300002)(186003)(2616005)(476003)(11346002)(446003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(76176011)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zqrhP7EShIEokLLcAxfsba1WnQXAULOP9XerA1KZ+N7lSPWK2WMlNEV88yChWtxSMxUxfY/D7Kg9HbkZHUzBmoobaiR5rQ9pjSAFZU6Y9LceNNHc0BeuMkbIAWBJGGi+Ruf7YPbIYCkIDwJM6gtYD5MCZ07sFqgwYDaiCB/bLg6am3Th5NCX/zEVV4lv7v0Eyar+13JlQQlUMyeJedkmKQ+0ZYf3VeyiH7LmAQHI+cEa7zGmgeb99dVXny9oNHDpWsGZTNWgTcaOobq/W1DfEtSsaf/MRfGZtI82u0/Z98wQY9/OXZ+kjQStGNEs3IUOVnZuPAftm6Z8x/92fFPJuM54JHdRGOULeF1fppN+istrHaoI4xDjcNjm9Vp3R6pVNqIgpjKfjc43zD2vbnzfmzh9uFJtLUXsM2UjAHq9Ur0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cd9e0052-0d1c-4a0a-5a21-08d7369c33cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:41:21.0786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q50l4tPN0vqY+LmbfTTfZBqTEIVOeWD/X1lS+MR9M30T7GAQmm8vNulZCoMMT6YXk1NFL/bMwBP6gX4dcgjdmTJLcyBgl457BxT5jRCnZs8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024124_620815_4EFB85CB 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

The error is reported inside spi_nor_xread_sr(), to spare the
callers of duplicating code.

Add method description. Drop unnecessary cast to int when reporting
the error. Comparing the return code with zero is enough, drop the
checking for negative return values.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 27 +++++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index b720c0003b27..0505bf6c197e 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -537,8 +537,17 @@ static int spi_nor_read_cr(struct spi_nor *nor, u8 *cr)
 	return ret;
 }
 
+/**
+ * spi_nor_xread_sr() - Read the Status Register on S3AN flashes.
+ * @nor:	pointer to 'struct spi_nor'
+ * @sr:		buffer where the value of the Status Register will be written.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
 static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
 {
+	int ret;
+
 	if (nor->spimem) {
 		struct spi_mem_op op =
 			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_XRDSR, 1),
@@ -546,10 +555,16 @@ static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_DATA_IN(1, sr, 1));
 
-		return spi_mem_exec_op(nor->spimem, &op);
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_XRDSR,
+						    sr, 1);
 	}
 
-	return nor->controller_ops->read_reg(nor, SPINOR_OP_XRDSR, sr, 1);
+	if (ret)
+		dev_err(nor->dev, "error %d reading XRDSR\n", ret);
+
+	return ret;
 }
 
 static int s3an_sr_ready(struct spi_nor *nor)
@@ -557,10 +572,8 @@ static int s3an_sr_ready(struct spi_nor *nor)
 	int ret;
 
 	ret = spi_nor_xread_sr(nor, nor->bouncebuf);
-	if (ret < 0) {
-		dev_err(nor->dev, "error %d reading XRDSR\n", (int) ret);
+	if (ret)
 		return ret;
-	}
 
 	return !!(nor->bouncebuf[0] & XSR_RDY);
 }
@@ -2797,10 +2810,8 @@ static int s3an_nor_setup(struct spi_nor *nor,
 	int ret;
 
 	ret = spi_nor_xread_sr(nor, nor->bouncebuf);
-	if (ret < 0) {
-		dev_err(nor->dev, "error %d reading XRDSR\n", (int) ret);
+	if (ret)
 		return ret;
-	}
 
 	nor->erase_opcode = SPINOR_OP_XSE;
 	nor->program_opcode = SPINOR_OP_XPP;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

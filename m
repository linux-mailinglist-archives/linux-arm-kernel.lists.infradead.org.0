Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B99AF960
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwGMjYB9QLa2XH0ktrBApY0trHSTACs2CI+P04/DsM4=; b=bcYBNp0AzMvMSz
	mvX7BaBJJQXEzzX5mm2Jaix/yzXXKqHKxcxJ+xHuZZfnBxjXSbcFj9rPG/9gKwD7HtuGBDtsnFZ8X
	SgaSSu5HBPhEl1RgABp6uV25rZk5YTcqXILWoPnSM31Nwr+4zBKKW/LGNKMvLZCX9kYfEtwtQWb7D
	mz60so4fahxZJJ4ds57nn+T/m7mxs1JZ65/d53lshjc9lPv5GIs7nKBGOL5JoYFwlgEy/0RaWw7Ef
	1WBG/AJhtZV10nYPstK202IYoxIOufJqa7ABtBJWDFjH/xgzn/B2B+jFHADtKGu9eqWyE4DAWq66K
	TyACdeWIi6S3MJXjwlMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zDy-0008CK-8b; Wed, 11 Sep 2019 09:47:42 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7o-0001mE-UV; Wed, 11 Sep 2019 09:41:22 +0000
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
IronPort-SDR: W0469iWwZVI5hX60XAG0UlShdUgtZpexifE3+8xuxnMidrlwYZWlzBvlo/vIJ2QjAhWvzBa9vq
 18gw/2WdpUltDmSkdHZCfLZuep044K7ZQk3bLvgreMuXMS8KspJ/hrQnaQ7JuUgDbZ/fj13mPz
 65YrhfvbsMCEUpM5cVeKNRqlxYzuZjtVqLhwh9etsUSekTsPCfQ4nbaz+ul2C9FmXZipbp3IRP
 O6sbsfJK07EzjPMPejQdKUtIsJZXmFB34UT9YISLIEjkTCCTJ4CIfDBbvY9vlEN1qha28k2RxB
 eVM=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="48492745"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:41:20 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:41:19 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 02:41:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fi+Gy4wCR6HJXFK/17NPL/Hik8/tLLbXF8tpQdTeC3qNgXSQRTfx/FBYK7xSNdzipDJNkHqh8aLrBgCoL8heF4DjCVEJ3wYy6Qw5kzOXWpNBbpQcI7D9ve2tgRHuxw43J59iG9HGwlIyGiptd5WUN7Sc/fESuVfPgGeBjgjbNqMuPQaJSfvFmoUVlXxtgfGNznDdznFjgWujM8SOlK/SO+5cWJOxIBi4pKWFOgy6MzNSQ/LV1N5IOTNkmylt/OLbaSDthNZyrXphslwwB8Gy9ofXGgUZj5dO1bgH0lszK4w0jYwFbvu752N/5FmcqlPdV0HHeWbFYHmsryVc0QKhcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPJi5tCSrdkZwiTbNUNqng/U0TJJ5S4/mqCulrUkf/E=;
 b=F03F2S+IQb6ryuq0Mv/NAh7OoUKsLNF7PxmgHIZb9MQQCuDRGyxfUAMteVJReIcm0jdWVIZf10U3IxUOVpSWiCCJpvCJTJpadREKkmLFuVSOpC9sRWPZbSsGQaPCLFJzkTcDBf5gjFE/DHy6jSDEuR15TBP5ADF/PTq2ylmb66gL5yGYJlh0geesEBSjLiXcjvTx/9OzCLTq5S9F6uyXNRxRfnnEhzptpy2B/CBg22G4Wxt1UvL4wm/OlWn8KK4NY6P4G+OQu2+ShwuYaZNhieUKvXigYuWzBEAv1RufwdSrwkT7DgMlxKg9oK7s8sAdLPy74FOZ8SNG6IKTguEhaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DPJi5tCSrdkZwiTbNUNqng/U0TJJ5S4/mqCulrUkf/E=;
 b=VOoxFFdR4VPDnixOPIQ6aBOrdVkZzaEKRsctncxr7pUxUvlgmguy25j8xGATM3MZkDyeiGgVGpzhkbuZxamJYKGM0BsHSZgJe6enjvqE9WXFPCVJvHPzUE/t1vaLL4AyzFxjaaSGpO8D1rQ0c8l6WF+KMRRZ0zijqfaN0eUoPZ4=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:41:17 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:41:17 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 10/13] mtd: spi-nor: Rework spi_nor_read/write_sr2()
Thread-Topic: [PATCH 10/13] mtd: spi-nor: Rework spi_nor_read/write_sr2()
Thread-Index: AQHVaIUP+qvtZbpCCUeV0AbSyzA+nA==
Date: Wed, 11 Sep 2019 09:41:17 +0000
Message-ID: <20190911094031.17615-11-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 4094e499-f589-4427-5fff-08d7369c31c1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB440139289D22B3137D960831F0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(1076003)(53936002)(6512007)(102836004)(478600001)(14444005)(256004)(36756003)(26005)(25786009)(4326008)(5660300002)(186003)(2616005)(476003)(11346002)(446003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(76176011)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: QmyLkrgX5ZWwCkiRNRcGD7TJe7C2W0xGpZhwIJ+i79PUlCw7inPsTSCbQNkfMM7BgxRpJu06QGnAo5TZGCG0Ii5nK1WXkE0VMlo2M1EEQKsNGb1sysdcuvVighluUcz0JACJt4sjv5rdbC6MsFciWlkmssNJ3b7HLQKcc6hnyVB5ORGCBdfPhvSPDK79M2IKreWCE1q1O6y+nTv6YZcakMWXQ74KN/TzNUv+QDfmq9MHtcCbxF6arez9gXH3n0fGKZi/sOhJAsvQp6mQZuNZUHOYfPWtKy1qWBT8mHDmSdnncUBGBz8LiILXXPHOewxx7J3dmOjGK3ZZw50VGSLurPJOOy6ojZAW/8i7zBMMj4mzbLDAsOG61pARVJsLKvOtkYcSH8gJ9JPW4tOz3mLhBiDwgWqU1w63DULLtzjgv2E=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4094e499-f589-4427-5fff-08d7369c31c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:41:17.6657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8SFj60+yxiUUGVQG72hyOesEBAWkK3OHVD/GZRO/YlL3XkiHx0LSvSUvv/6VIlKxysJDxaHyLFuwSAo6Gr0sCQwHtJRDpqIA7xFRkItV1DQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024121_102470_857BAA6F 
X-CRM114-Status: GOOD (  12.89  )
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

Move the methods up in the file, where the other Register
operations reside.

The error is reported inside each SR2 function, to spare the callers
of duplicating code.

Constify sr2 in spi_nor_write_sr2(). Do the spi_nor_write_enable() and
spi_nor_wait_till_ready() inside spi_nor_write_sr2(), as the
spi_nor_write_sr() does.

While modyfing sr2_bit7_quad_enable(), add a new line for better code
readability.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 118 ++++++++++++++++++++++++++----------------
 1 file changed, 74 insertions(+), 44 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index a903717788f4..b720c0003b27 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -731,6 +731,74 @@ static int spi_nor_write_sr(struct spi_nor *nor, const u8 *sr, size_t len)
 	return ret;
 }
 
+/**
+ * spi_nor_write_sr2() - Write the Status Register 2 using the
+ * SPINOR_OP_WRSR2 (3eh) command.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @sr2:	buffer to write to the Status Register.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_write_sr2(struct spi_nor *nor, const u8 *sr2)
+{
+	int ret;
+
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	if (nor->spimem) {
+		struct spi_mem_op op =
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR2, 1),
+				   SPI_MEM_OP_NO_ADDR,
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_DATA_OUT(1, sr2, 1));
+
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR2,
+						     sr2, 1);
+	}
+
+	if (ret)
+		dev_err(nor->dev, "error while writing Status Register 2\n");
+
+	ret = spi_nor_wait_till_ready(nor);
+
+	return ret;
+}
+
+/**
+ * spi_nor_read_sr2() - Read the Status Register 2 using the
+ * SPINOR_OP_RDSR2 (3fh) command.
+ * @nor:	pointer to 'struct spi_nor'
+ * @sr2:	buffer where the value of the Status Register will be written.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
+{
+	int ret;
+
+	if (nor->spimem) {
+		struct spi_mem_op op =
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RDSR2, 1),
+				   SPI_MEM_OP_NO_ADDR,
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_DATA_IN(1, sr2, 1));
+
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR2,
+						    sr2, 1);
+	}
+
+	if (ret)
+		dev_err(nor->dev, "error while reading Status Register 2\n");
+
+	return ret;
+}
+
 static struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
 {
 	return mtd->priv;
@@ -1889,36 +1957,6 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
 	return 0;
 }
 
-static int spi_nor_write_sr2(struct spi_nor *nor, u8 *sr2)
-{
-	if (nor->spimem) {
-		struct spi_mem_op op =
-			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR2, 1),
-				   SPI_MEM_OP_NO_ADDR,
-				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_DATA_OUT(1, sr2, 1));
-
-		return spi_mem_exec_op(nor->spimem, &op);
-	}
-
-	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR2, sr2, 1);
-}
-
-static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
-{
-	if (nor->spimem) {
-		struct spi_mem_op op =
-			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RDSR2, 1),
-				   SPI_MEM_OP_NO_ADDR,
-				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_DATA_IN(1, sr2, 1));
-
-		return spi_mem_exec_op(nor->spimem, &op);
-	}
-
-	return nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR2, sr2, 1);
-}
-
 /**
  * sr2_bit7_quad_enable() - set QE bit in Status Register 2.
  * @nor:	pointer to a 'struct spi_nor'
@@ -1940,31 +1978,23 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 	ret = spi_nor_read_sr2(nor, sr2);
 	if (ret)
 		return ret;
+
 	if (*sr2 & SR2_QUAD_EN_BIT7)
 		return 0;
 
 	/* Update the Quad Enable bit. */
 	*sr2 |= SR2_QUAD_EN_BIT7;
 
-	ret = spi_nor_write_enable(nor);
-	if (ret)
-		return ret;
-
 	ret = spi_nor_write_sr2(nor, sr2);
-	if (ret < 0) {
-		dev_err(nor->dev, "error while writing status register 2\n");
-		return -EINVAL;
-	}
-
-	ret = spi_nor_wait_till_ready(nor);
-	if (ret < 0) {
-		dev_err(nor->dev, "timeout while writing status register 2\n");
+	if (ret)
 		return ret;
-	}
 
 	/* Read back and check it. */
 	ret = spi_nor_read_sr2(nor, sr2);
-	if (!(ret > 0 && (*sr2 & SR2_QUAD_EN_BIT7))) {
+	if (ret)
+		return ret;
+
+	if (!(*sr2 & SR2_QUAD_EN_BIT7)) {
 		dev_err(nor->dev, "SR2 Quad bit not set\n");
 		return -EINVAL;
 	}
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

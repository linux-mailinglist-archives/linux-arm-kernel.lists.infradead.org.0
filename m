Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A0DAF957
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:46:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vDGal+W1PeIKVDGlwJRQWAAJn8jjrKbgm2/Jt7Wuzk=; b=Ov+yoUkFt2r5sI
	FphpMTYcRFwYWEHHH4peEv2ydvfUgjOBrIrRlIArNWwmQEza7PV/2vLSJMzlXIXMvzANf7JoWpPek
	ayyiIVvRVGtAiIRAKDTw0K5jt34+NFMPRRwiQJpSTdh2Hd873tInvi4nYeYCAwD43YwkO6CgPD9S9
	crYV2rqLnsL2JhEx93Z/pGxnjKl+2ITl8zO6Fb/o7LueUHhZmt1TETNeilSf4rAr+KINdLDJlQg92
	EKuCP0zSRdzZy5k3DkXvFN2aqtKVJ+9g53cGP8scQMwEezuaCDX9tp8kM+lnzg0lst54OBThFL59U
	A5jTL31DQKARo1XTGMug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zCR-0006jA-AO; Wed, 11 Sep 2019 09:46:07 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7k-0001jn-Bj; Wed, 11 Sep 2019 09:41:18 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: yJXQcr7xbNYM9CTO9UTjgBASXJNCnVzdVtgdO/aG5QJ7xB1Ralok/9pfbaO1oZClFFE0aR1Pnv
 3UMSHQ9lDjfYKDQ04Dga0D6pY339C6lJFLsemCW+UHvzFUlPTOlgmtJXvGQ4tsGR17PuC0JyS1
 qm1wVjBiQO1tW5f5QN7C0lPOYK3EAKsPKi7OIDDs6sAA10M/dmwtavY8Q2Q5sPIiIVBQ4Smy+H
 VG8+30aPKS3CF0pshwCzyP6nL4jbiMZGBOJwfRUqEjE7ZpGHRa+WsUO+RfrHsTmwRcvGmEXGDf
 IAo=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="45738750"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:41:15 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:41:09 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 02:41:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KsPgNXdWnQIV0/AfzxBD/5Ipkce97+Akv3QyexBRpnTjWReoGkNwxyFXoLscWXu8oa6tQj7yG0VTNgHVwlH+yHsQHijTPG+hQDl6WmXZ11jSq0dVD6KDGh9mSeyQoSPOowSPpAiNvJ2NMZlfJW6VxB3Eiko6gfE8kYPxZSkAWFLnV2YWUAzvlzmqZue6kcWEfBZjgXhSCEeJRzJfpkCq+9SREfw797pw9Xf5NBlabmydvhJ3kz2Qy8ZLxb71K0Tcj+mRLeJWrfTEe8IZKfEkZPx3suOQk6ENQpxlPs8WgU3eYhC58rTiKDTJ95KJMn+uaBkxfOsV5wzf+Ra6n19d8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pL/TGki7yUGTE0TBBhtzqzU5yObVYuaIIxFR0CYCTjA=;
 b=YWHwLdTzm5jOTxVdXfDvw2NRI/k5B+uVL0eWxkK79MWtFkzOi7EkPkNPLFiQprYF3Mjyfs4QCW5g5z0cclpG1ey6A8CNwUnftQnn0UcbnceNsrlVJ/H1wNycoN0wGijLvtr2UePnbwgKbnsRkQJ+iYhk+blFAHDOxQH8G0ORs/3m8qiY1CWLxNnALuZORUdxk8n/H2bRaJQWPHGk1yII4HwNtXWeHNkmGIDA5Y7tFij809pMeYR4YbsLWztCt6s7x9YP08QoRaUSgWdLwacEgs/536hjLLi5IscmaT4AjA0N16EOD4iCP3rsj7OkghAzK+p+aMYrT74twHYOzUF4vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pL/TGki7yUGTE0TBBhtzqzU5yObVYuaIIxFR0CYCTjA=;
 b=bdRNjCdF8T5haG+rdBPTdmrbYbclxgJctVybbroOythJ3XnXlWr0blUrQ761l0NOa+uhXHtNNcHxv9n7ddcgu8WoFrhGHUszf5XV+p7NVLLYULyixFtbt3yAHDd0jFPm6TDu3d7M+02/RhzZgiLSG34LcWDvCaQUEuyGymM80PE=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:41:07 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:41:07 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 07/13] mtd: spi-nor: Rework read_cr()
Thread-Topic: [PATCH 07/13] mtd: spi-nor: Rework read_cr()
Thread-Index: AQHVaIUJpJRJ5mA0UkWlP6FlZIrmbQ==
Date: Wed, 11 Sep 2019 09:41:07 +0000
Message-ID: <20190911094031.17615-8-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 1d0a7f53-9e2d-49aa-48e4-08d7369c2b9d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4401A612965DC69338056638F0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(1076003)(53936002)(6512007)(102836004)(478600001)(256004)(36756003)(26005)(25786009)(4326008)(5660300002)(186003)(2616005)(476003)(11346002)(446003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(76176011)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +d3Xzrnm/fnldBUT8LrFrpadJLYFeYM7ci4zt785K2eihcgg+KfURf2DtxJm0/o8v1siPNyR/44FTY3SEk3kesnbP76wZYGrNniHaVTQnGd6jNFa/9m9/TV6ldqdl9V5623XCQBwdPEa9mUzSIdeifuIVYHWx0Nl3Uz2OXHw4tpweDjIUA2jR+6QVJGJmlbASt6Ohdb2zBvjiF6tVfF7fiic7rxw8sj1X/EX2+5akffqBKGppQLjKWGQa4lUx86GwEfqW42DPui+gYdUKoEkDte5eUAxXkqVRgT2d91t0R2EcDtEXZyCSb8KOYg30DSBVJ3p9to0P9Qprceib3nViySD54QdYht5IV3IA/0zdtxiAqX3mu0e1w7w2ZFV4FCEVtDFORSPsDkvHmfEq2MVnuqZdR5PToUKI1cYaxmZNO4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d0a7f53-9e2d-49aa-48e4-08d7369c2b9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:41:07.3698 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1NKXWUcl+C7O80tbhHspDYebbpoCnk2261eN9kJ8g+u0K+z4Cz+kvakGidc/wtikFiYtjYncSWmRH4wtxFqv8y6ghtDbXmjDrRA6YYOWvCw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024117_508349_2061C8E1 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

static int read_cr(struct spi_nor *nor)
becomes
static int spi_nor_read_cr(struct spi_nor *nor, u8 *cr)

The new function returns 0 on success and -errno otherwise.
We let the callers pass the pointer to the buffer where the
value of the Configuration Register will be written. This way
we avoid the casts between int and u8, which can be confusing.

Prepend spi_nor_ to the function name, all functions should begin
with that.

Vendors are using both the "Configuration Register" and the
"Status Register 2" terminology when referring to the second byte
of the Status Register. Indicate in the description of the function
that we use the SPINOR_OP_RDCR (35h) command to interrogate the
Configuration Register.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 66 +++++++++++++++++++++----------------------
 1 file changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index be5f5d681739..cba84759a38e 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -448,12 +448,16 @@ static int spi_nor_read_fsr(struct spi_nor *nor, u8 *fsr)
 	return ret;
 }
 
-/*
- * Read configuration register, returning its value in the
- * location. Return the configuration register value.
- * Returns negative if error occurred.
+/**
+ * spi_nor_read_cr() - Read the Configuration Register using the
+ * SPINOR_OP_RDCR (35h) command.
+ * @nor:	pointer to 'struct spi_nor'
+ * @fsr:	buffer where the value of the Configuration Register
+ *		will be written.
+ *
+ * Return: 0 on success, -errno otherwise.
  */
-static int read_cr(struct spi_nor *nor)
+static int spi_nor_read_cr(struct spi_nor *nor, u8 *cr)
 {
 	int ret;
 
@@ -462,20 +466,17 @@ static int read_cr(struct spi_nor *nor)
 			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RDCR, 1),
 				   SPI_MEM_OP_NO_ADDR,
 				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));
+				   SPI_MEM_OP_DATA_IN(1, cr, 1));
 
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDCR,
-						    nor->bouncebuf, 1);
+		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDCR, cr, 1);
 	}
 
-	if (ret < 0) {
+	if (ret)
 		dev_err(nor->dev, "error %d reading CR\n", ret);
-		return ret;
-	}
 
-	return nor->bouncebuf[0];
+	return ret;
 }
 
 /*
@@ -1769,7 +1770,8 @@ static int macronix_quad_enable(struct spi_nor *nor)
  * some very old and few memories don't support this instruction. If a pull-up
  * resistor is present on the MISO/IO1 line, we might still be able to pass the
  * "read back" test because the QSPI memory doesn't recognize the command,
- * so leaves the MISO/IO1 line state unchanged, hence read_cr() returns 0xFF.
+ * so leaves the MISO/IO1 line state unchanged, hence spi_nor_read_cr(nor, cr)
+ * gets the 0xFF value.
  *
  * bit 1 of the Configuration Register is the QE bit for Spansion like QSPI
  * memories.
@@ -1788,8 +1790,11 @@ static int spansion_quad_enable(struct spi_nor *nor)
 		return ret;
 
 	/* read back and check it */
-	ret = read_cr(nor);
-	if (!(ret > 0 && (ret & CR_QUAD_EN_SPAN))) {
+	ret = spi_nor_read_cr(nor, &nor->bouncebuf[0]);
+	if (ret)
+		return ret;
+
+	if (!(nor->bouncebuf[0] & CR_QUAD_EN_SPAN)) {
 		dev_err(nor->dev, "Spansion Quad bit not set\n");
 		return -EINVAL;
 	}
@@ -1840,21 +1845,18 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
  */
 static int spansion_read_cr_quad_enable(struct spi_nor *nor)
 {
-	struct device *dev = nor->dev;
 	u8 *sr_cr = nor->bouncebuf;
 	int ret;
 
 	/* Check current Quad Enable bit value. */
-	ret = read_cr(nor);
-	if (ret < 0) {
-		dev_err(dev, "error while reading configuration register\n");
-		return -EINVAL;
-	}
+	ret = spi_nor_read_cr(nor, &sr_cr[1]);
+	if (ret)
+		return ret;
 
-	if (ret & CR_QUAD_EN_SPAN)
+	if (sr_cr[1] & CR_QUAD_EN_SPAN)
 		return 0;
 
-	sr_cr[1] = ret | CR_QUAD_EN_SPAN;
+	sr_cr[1] |= CR_QUAD_EN_SPAN;
 
 	/* Keep the current value of the Status Register. */
 	ret = spi_nor_read_sr(nor, &sr_cr[0]);
@@ -1866,8 +1868,11 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
 		return ret;
 
 	/* Read back and check it. */
-	ret = read_cr(nor);
-	if (!(ret > 0 && (ret & CR_QUAD_EN_SPAN))) {
+	ret = spi_nor_read_cr(nor, &sr_cr[1]);
+	if (ret)
+		return ret;
+
+	if (!(sr_cr[1] & CR_QUAD_EN_SPAN)) {
 		dev_err(nor->dev, "Spansion Quad bit not set\n");
 		return -EINVAL;
 	}
@@ -2008,20 +2013,15 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 	u8 *sr_cr =  nor->bouncebuf;
 
 	/* Check current Quad Enable bit value. */
-	ret = read_cr(nor);
-	if (ret < 0) {
-		dev_err(nor->dev,
-			"error while reading configuration register\n");
+	ret = spi_nor_read_cr(nor, &sr_cr[1]);
+	if (ret)
 		return ret;
-	}
 
 	/*
 	 * When the configuration register Quad Enable bit is one, only the
 	 * Write Status (01h) command with two data bytes may be used.
 	 */
-	if (ret & CR_QUAD_EN_SPAN) {
-		sr_cr[1] = ret;
-
+	if (sr_cr[1] & CR_QUAD_EN_SPAN) {
 		ret = spi_nor_read_sr(nor, &sr_cr[0]);
 		if (ret)
 			return ret;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

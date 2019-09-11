Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC177AF949
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ApTF2+5mBlSeRdM4TuSHdX+AHAy80Sz/I5bsO6Bh7L8=; b=fNvLFAksGwS7gg
	/u4LNKoHIp1TMwHO4O9UNSrdXenL6zTsCyY6v7CF2UUOlprQjHJQrHVo9a4dg51MHBruwhIlhHuPr
	6bCWzb333lmRI3A3yZkEPLu7R24X57TTAlpugLBhix6esSQtXsAC/wRTLWIQUfye0T/4wK+YGjfD9
	npxcTcdwDJ60BEX8oEZmbBH9oQDnURC4qNwDZB4Yd6OOdID0qSpgOHWiB1ZLHCZEjrX5z9Ql8RheB
	KaYZsXWgRsxDuai8XBXA7d0LHmjvQZUfScPJnyWT4LBL4ElR6O271maYb86zZEy/l+VxOOiOcgn5E
	K715DSjXrseE28TZdvPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zAa-0003ue-43; Wed, 11 Sep 2019 09:44:12 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7b-0001WD-Sw; Wed, 11 Sep 2019 09:41:09 +0000
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
IronPort-SDR: cBmxxvuw7WhSLtsxGOb0jKfa7D387DiNBeoTdsbO+3W+QclohLnm23tAgkno+PPvmPR9K2y87Y
 diGyqmTaUJVokDrF52N2rwBOtC52qST0EBU32keNr/0VCr0frb8xJ19oy3fJtumOnBliyBeP2c
 CLRALSAAXz7IPTp/KJTn1mmH2HRb9euWNPcL1ljvRMuQ6otOfO0HhiXqrEO+VE5X/ICJc6XrEt
 cwoCYR+MNJ1HT2JMjBhVTLF/4uTh0Yv9X50OCVp6WhMO6A65y+0JGrhnL8a1rVs4mopuKhm9JC
 lUc=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="45738692"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:41:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:41:06 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 02:41:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dYf9oCJi+iL1Frut5dUZJ205HLezRBhFWXOrr9DLzsXamOA337pUQjRfkvM6G4jDnCFW3FesRygreK/SQ73mdfNM2lZJX6L7WpG8k0CyYZ9JTeJBPnSDtiTasd8zrY3C2Qf0eZjPNbR1yuhJGt5F0HirlAxbkTOtOX7h2ZeTLhGEiZbOR6JGSugJKeyrwCvR66OdDUtwpB1UL1RJTVOn/WqmQ2uQcSTongC9UwcQ/Nlvd2zg4jtDjr2a3c0KIpfsniFJkWtDERM0Sachz9pz/AJNKOlxdBH9hRuEzlck7DW2B4wmMFCqxw5KcKC0+mS5yKPteVG33ydBuXXoOyxJGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KFDEHSKKtqjgRhUuF5QB6NMnI80aAxNYqf3SQMx1HDA=;
 b=Y1vsX/I0cjfJIaz/nicNYslQliKcvnqpnvID2I7wz6SdeDHXgirBv4rBDhtoaq1olvuxe58/HNoLitKOiH4nq2Wx45nhLPZy0HY/yJt0zJ5dm9Jn7IJ77YTDXVHJEse02Z9WblJn3+uko2ahgMzER1MB9Wdz7Xf9nLmUjjmXMejBAg6uTW16Pt0yeFU+W9YpxnWkbkdS+5HaxrxjWObxu4y+8uimF3eiPe/IUiU50wBJCSSgimtzVAI7FqXIkBr9wnAkX3Bp7hvhydoWB1ukqftL2k7zmr9LHo42PDuy81X7Hr4KIYoOpWVvPg90wTsttRNv9/pm1DXgR0avSJAXWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KFDEHSKKtqjgRhUuF5QB6NMnI80aAxNYqf3SQMx1HDA=;
 b=WpCK4p4rmKEQte3MY7ktR5nt3PMKVWz90tukjEHddDSa9cYwIvEvS4gZ2NkKFrr79Q8caPfOPUa0Yt95HpK/dzg6LZaZnIGVjn26cit4f06sZFgU/1Kc5weKSGcoBfzgLLVSglURXhm0W7QMiK+Ab/vKVmS9dJxmzersLcdslRU=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:41:04 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:41:04 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 06/13] mtd: spi-nor: Rework read_fsr()
Thread-Topic: [PATCH 06/13] mtd: spi-nor: Rework read_fsr()
Thread-Index: AQHVaIUH/Hv4BN1mekSzYMj7sMJWEg==
Date: Wed, 11 Sep 2019 09:41:03 +0000
Message-ID: <20190911094031.17615-7-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 4be3a079-cc4b-4ab2-4de0-08d7369c2976
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4401507A17268281AAA08E5EF0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(1076003)(53936002)(6512007)(102836004)(478600001)(256004)(36756003)(26005)(25786009)(4326008)(5660300002)(186003)(2616005)(476003)(11346002)(446003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(76176011)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jkbyjLQ3Yq+PpfQEKZDfbVJnnEdO4UyZHSJKNf1WuxAZe/sjplUgpg9YhKg3erh22WjqMBd41wxX3hI0tWGIfynHmKpcGYjxZ7IOPFLZysmX7I0cdJbDLmtfSXYvHk97kOfJEW27Nq38M2+KNXCUxYqGjYqBE2BZSDxMeAylaKwByA6o95hXtzFfM4gvHxaQM5Lgv+BW01KkeM4yhiIuLrv1fb7jUN36TgFJCGsH3EC18/Y2B6i4fGix4CZ+OT17G3SSjhLtX+QNoZw/JGQZ9Hr4AyeDZj8rpkudrb19zsUEFNGdPJiFt5SBsh0GbHBDnBk0h++9AuUGgNEeTaTuTagmvh+5rQUhvqNSERSqGOtkWkmr5ZUPuNJeNfEta3EfsQC7hzD27HIt5+w0W1jTMwmoWXQIFq6UUPnZsYwVmxg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4be3a079-cc4b-4ab2-4de0-08d7369c2976
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:41:03.9139 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: owoWrCJclcn8D7akQRbdxEZ+P+1eAnTh3WHjB5JTprKi8CirMoKCWkAbIarpN8rHnYQM9m2h8J2CniywywRC2OqQnv0+IvmwgVedRy8+uVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024108_138334_9015D3D1 
X-CRM114-Status: GOOD (  12.54  )
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

static int read_fsr(struct spi_nor *nor)
becomes
static int spi_nor_read_fsr(struct spi_nor *nor, u8 *fsr)

The new function returns 0 on success and -errno otherwise.
We let the callers pass the pointer to the buffer where the
value of the Flag Status Register will be written. This way
we avoid the casts between int and u8, which can be confusing.

Prepend spi_nor_ to the function name, all functions should begin
with that.

S/pr_err/dev_err and drop duplicated dev_err in callers, in case the
function returns error.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 42 ++++++++++++++++++++++--------------------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index d3b48d06f2ed..be5f5d681739 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -417,12 +417,15 @@ static int spi_nor_read_sr(struct spi_nor *nor, u8 *sr)
 	return ret;
 }
 
-/*
- * Read the flag status register, returning its value in the location
- * Return the status register value.
- * Returns negative if error occurred.
+/**
+ * spi_nor_read_fsr() - Read the Flag Status Register.
+ * @nor:	pointer to 'struct spi_nor'
+ * @fsr:	buffer where the value of the Flag Status Register will be
+ *		written.
+ *
+ * Return: 0 on success, -errno otherwise.
  */
-static int read_fsr(struct spi_nor *nor)
+static int spi_nor_read_fsr(struct spi_nor *nor, u8 *fsr)
 {
 	int ret;
 
@@ -431,20 +434,18 @@ static int read_fsr(struct spi_nor *nor)
 			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RDFSR, 1),
 				   SPI_MEM_OP_NO_ADDR,
 				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));
+				   SPI_MEM_OP_DATA_IN(1, fsr, 1));
 
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
 		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDFSR,
-						    nor->bouncebuf, 1);
+						    fsr, 1);
 	}
 
-	if (ret < 0) {
-		pr_err("error %d reading FSR\n", ret);
-		return ret;
-	}
+	if (ret)
+		dev_err(nor->dev, "error %d reading FSR\n", ret);
 
-	return nor->bouncebuf[0];
+	return ret;
 }
 
 /*
@@ -787,25 +788,26 @@ static int spi_nor_clear_fsr(struct spi_nor *nor)
 
 static int spi_nor_fsr_ready(struct spi_nor *nor)
 {
-	int fsr = read_fsr(nor);
-	if (fsr < 0)
-		return fsr;
+	int ret = spi_nor_read_fsr(nor, &nor->bouncebuf[0]);
+
+	if (ret)
+		return ret;
 
-	if (fsr & (FSR_E_ERR | FSR_P_ERR)) {
-		if (fsr & FSR_E_ERR)
+	if (nor->bouncebuf[0] & (FSR_E_ERR | FSR_P_ERR)) {
+		if (nor->bouncebuf[0] & FSR_E_ERR)
 			dev_err(nor->dev, "Erase operation failed.\n");
 		else
 			dev_err(nor->dev, "Program operation failed.\n");
 
-		if (fsr & FSR_PT_ERR)
+		if (nor->bouncebuf[0] & FSR_PT_ERR)
 			dev_err(nor->dev,
-			"Attempted to modify a protected sector.\n");
+				"Attempted to modify a protected sector.\n");
 
 		spi_nor_clear_fsr(nor);
 		return -EIO;
 	}
 
-	return fsr & FSR_READY;
+	return nor->bouncebuf[0] & FSR_READY;
 }
 
 static int spi_nor_ready(struct spi_nor *nor)
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

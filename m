Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C761BC374
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsPnhWjnK3x4PdF6UyuI3b6Qr8owwWS+DEQ7vTx2y14=; b=CAxTtersHwaFcG
	L41fglAZbNcFjcxnO71+N3jW3L+hs23wUPNR0i3RX1LRD/a9GY1drC/xFDb/Zx3XjkBbxgbMfZDdx
	6jwzLU/FUTxh3QS5af8Fg3D+vy9k82pwj+ExnsSeS0vcLYEA8CnBVWs5EqGuUfHiU2p1asL/6FvnQ
	Sk1/rEVGan/t+u4CVSxMRZC26kRTEEKupbd6tujqWx/qVcg+nRfOK/0F/692eUD9a4ww2eGv8QtjW
	eDw3jnjGEW5tput8fbmrWvwSBR/dD9LCFqZfqb2LVWDP1WseuePgEOONXIRlfkJdE2hEkZoXFlfhQ
	/lrsoMCt2KMjtd6nZYXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCffA-0003Uj-FL; Tue, 24 Sep 2019 07:55:08 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfWs-0004HC-VF; Tue, 24 Sep 2019 07:46:39 +0000
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
IronPort-SDR: 0Op2fUshFzp0tyDSg2VaJQonZBvOeMqF0/oLqxbckfWhgNIeok78sRP0U/R9+CWj2fmqkBfauG
 T1c5CH+FeO9OmrXs6N6co89B02ntB/lPsVZnuHcbnjlcqIi3Xj9B2zxSyDZ9I4JzW18cMZDIAS
 GMMmxlafTlreqq9p9cH5kwOgH/Q/ocwMnhBcyki4A1QTy0P5hhUfHFY2rm1oSKVhFIdthE3J15
 3CPk1XggDYRvWBsy69iDG+DoS5D37wh3lySR1XBej6DE4XRBWTx3AOZCWRPO2KS1uguQ+9n0HI
 +EM=
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="49066127"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Sep 2019 00:46:34 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Sep 2019 00:46:33 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 24 Sep 2019 00:46:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HrXZTMTWNOxBPRlSO2wozRsYzEztpfeepefEtUjkHNovtj2NLxpy3aBlv+dl6sGtDOJ7NuUcQHJUJSv7hJVleKsoPJ8AZAySQIZa6lp+SKhifLqtC8N0InWADkov8GkB0FuM4GHelHY+MKI+c0WsXFmU0/7auBl86aqMvaaPDpTD+HOn4pu/qS112tcePmUBT7yc9/0c3M7LxxsWjBhJUvbOL71nDHVzGCZC8I1mPoUQ4Hw0N9fPVcvQx3DQpDUrcF7Kw5XZzFt22Dszf14pFOWHWcHScQTiBWZB8mBslCo6C/XwXTZjOs0jPtncMknbD/J52Fc1pEXn3aiKLAUD0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=37z9nc9ls+nmKX1SdTchBNHEq6NK8HEGio2Ib4jGAY4=;
 b=KhyhkivJQ15VxfENml1frHX4UAI24tLeaVYK0Hlsc1pdvU5C1PTI702RjHL//a4IqvNJy1khn6PDaiTCNzoJizJEZ98UspOXGGzzxvBQ5fgyXYbmuD7iwjvRWqBn5OFRTC4zyKKsXFRYWZv73nYRwvAxJ5NqaAinolimWyxA3PXSJBkTEACXfeQYxWnx95Lj+2XIrXRE39xTUziketQcaVwbSwNepJpp7yPZAtlMOYBV1ou8iCtrsBdZDRfggeZN9sdpVMLXhbWHzi5skfd4Yfmx9j2EfkMNtB4HK6BCKAJ6W2465YiLdu6R/REC9iGZdyipaSQ5wX8j/2RBnpfZgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=37z9nc9ls+nmKX1SdTchBNHEq6NK8HEGio2Ib4jGAY4=;
 b=TWy6KgS3JUhv4mQ9ZuFPFQsOkxOkL5tHt3Grqa7OHeWrA78m3JS1lg6xCfKKJpPTx7LKCsNOz1E/w+j4mqnMF3vylwezY+7hcOkicARl9SP20OVaL113WV9XOrv0jTSmLv/N2asWiP6S7DS/lXZ1H20rKvHTO2Br2CO077Wit0c=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4319.namprd11.prod.outlook.com (52.135.39.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 07:46:32 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:46:31 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <linux-mtd@lists.infradead.org>,
 <geert+renesas@glider.be>, <jonas@norrbonn.se>
Subject: [PATCH v2 12/22] mtd: spi-nor: Report error in spi_nor_xread_sr()
Thread-Topic: [PATCH v2 12/22] mtd: spi-nor: Report error in spi_nor_xread_sr()
Thread-Index: AQHVcqwutlEKVRtIxkuyc9Dc3NHoBw==
Date: Tue, 24 Sep 2019 07:46:31 +0000
Message-ID: <20190924074533.6618-13-tudor.ambarus@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190924074533.6618-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0101CA0082.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:1f::50) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 35c120d4-49da-4f1d-c9da-08d740c350fe
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4319; 
x-ms-traffictypediagnostic: MN2PR11MB4319:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB431905FEB0D8AE3B0C552E9EF0840@MN2PR11MB4319.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(1496009)(366004)(396003)(136003)(346002)(39860400002)(376002)(189003)(199004)(5660300002)(2201001)(6436002)(256004)(86362001)(11346002)(14454004)(476003)(2501003)(305945005)(186003)(2616005)(26005)(386003)(102836004)(6506007)(25786009)(6486002)(8936002)(81156014)(2906002)(3846002)(81166006)(107886003)(7736002)(8676002)(6512007)(486006)(36756003)(52116002)(71200400001)(71190400001)(50226002)(446003)(66446008)(76176011)(99286004)(66946007)(4326008)(66476007)(64756008)(66556008)(6116002)(54906003)(110136005)(66066001)(316002)(1076003)(7416002)(478600001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4319;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: XrDJ/6JECSAfZGH1MpS+b0iqIrOqLR3Za0d/M8+7SZ3/MHXo9ys0gCqxQ9Et8QbZ0BevOlJ0Htr+7/QzvgJTKvy780baeVGR2Z3Qy/4S7gCRUM8/pVn0zGZkXmJRgeGw+1BI6ugJdON7MOx9ASTi4xvxTndncbVd11GAojtBkO5hvqUk37CRQL0cqM6A4HuODexLpJWKMkRjtrdfb7g6260s5Y3FHY19jVoBDXGTxJ6ta8lBJPAe+RPHGtGIE82KSEOlOTYjgYkby5IIvaQlP4Rqa3gUp3dx3sAgD3SWCcz/lnzbbNDgYfpiv9K6q3dF1L603euYrAHdNnwTTqtUfWwQTNZIt+W9IYKIeDQJVUEjxWnGCoR0PqgB6DiGGHNvfnEF0ORD9j8AHiL1Mhf0xmhPR8Tq1XNCoja/9Ybmmqs=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 35c120d4-49da-4f1d-c9da-08d740c350fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:46:31.9119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dfQIUN+XDLiy2N1VeUMynU80Sp/BlcUqJ2GfHcbAQYs7dPi7j7x0jvQKCYhiX17KqNM/h0DZrRXljuK38mXc09tdu2B9ugDNh/1kTly5Spg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004635_305969_239082BC 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 richard@nod.at, linux-kernel@vger.kernel.org, vz@mleia.com,
 linux-mediatek@lists.infradead.org, joel@jms.id.au, miquel.raynal@bootlin.com,
 matthias.bgg@gmail.com, computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Report error inside spi_nor_xread_sr(), to spare the callers of
duplicating the error message.

Add method description. Drop unnecessary cast to int when reporting
the error. Comparing the return code with zero is enough, drop the
checking for negative return values.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 27 +++++++++++++++++++--------
 1 file changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 33130ee84164..b7f86f518331 100644
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
@@ -2800,10 +2813,8 @@ static int s3an_nor_setup(struct spi_nor *nor,
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

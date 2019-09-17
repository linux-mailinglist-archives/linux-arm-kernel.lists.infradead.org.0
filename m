Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AD5B5243
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QM/ef1W1fjBI/I/RF8FyCIlQ5qefHhx+dSocvRmGRR0=; b=LZcUuJbVkngvyd
	Olt3CIgaQmleh2e5CJA6AxmUx2iFNvOh7HJJSRTlYSj/GybQMTgXSFsFfd9WeoxbtTWtTpDYWkVgg
	Er2tGfDMlqs7g6u4/oXIL9adtRDQnCkCv7Hi0JaMUCBrgtsCzuomPt8O7vVsrnJl8oRhoZwc2S8hp
	3Y7oYtbuq7XXHvpA/FTjTZOQk9u6Ek4soY4fuYlT2FahVpwUCrjn4vrB/JOINvcSvWFE2HE+9s9Lu
	blPCGSeUhEnoNpGM0WExuBv0c6JuWb36V3w1ISk24t2W0/aimcnWQYEJArvH7p9MWGHC/DR+c/svw
	DcUo0K9eBPoOoufkEiqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFuu-0004os-1o; Tue, 17 Sep 2019 16:01:24 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFot-0007bC-Ph; Tue, 17 Sep 2019 15:55:16 +0000
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
IronPort-SDR: LNxLS6OulxgRW3JiWtrRflI2Z+nragxcSAoB77SYuO5+DNeFT+f3NM/41YIVGqHUFRy+oATGvB
 p8Gy2Qkzx9AFfXVYchInJHABkuZYzavwvodD4U5MZNORSlUqZB0viFYf2vLThXkcLA0wb5qGPu
 6KiBQ9dMl1N7KxRJzdCm5xMu7yT3LYlKrLUUIcIZ72pj7U7dM6V2oJCMmuH1u7uGQV0D4dbQZS
 /vWoL55Pro7q0C3V1/PZ1lICcZ4Gsy+hTANd1ba5nQNM3ZAcomIrjKf+cLg65PiXBB+e/0RVtn
 vjY=
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="48252396"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Sep 2019 08:55:04 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Sep 2019 08:54:50 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Sep 2019 08:54:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZRkcwNPjNLwNm8fGYPU7mvF2CxL+vE7HpDFPbbCSiXLfDHyD+V5vyHGXMmOUl0TuP00htkknCjdDd3JeH4phO0iCHNC0CKHvFp4VC7v0xVRqzKW5RjHfQR9kLx1aTb5XLO0YQTdxTtKlx1OEeC5fm080JuHsCJN65W2kPdsC3kSux9kbDuxGGhpmEfQeMZA/vTvBSGkdl/YJa3Uf7CrXHZXEo2B1boc0ramdhhqdNMqbyJX1PBlVFjHJRufSDWc8Ak4Ob44uHwpGOtRzSbpuSegyZIrAxUaOxHZFw6k0XBAOeSnObJ8zQJVGfqJR/kJWxOp39jNJ2V4FQ5RYFOJNIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NYSuV3rNSK2cyD0B8kBJl5bzSvj8OrKoGlU8G+Pysuk=;
 b=lF64cLY+emsH6Ws3jk96Lx/PhUDDyFA/ON6U1eThXcwXdmGNGjdNqBCW64OTdGH9Ytz0/Q7TGjs1kJL6naYgIWyg4lqgvrRgFJ/ehqE+1sh0/bukgARtpj0m94mdrwkoHy4eNOKuMAeORJwE9BAuLTaHtYVNN9rWLe2liTvK8t0v7kAhVZmNXggq985dBtc97gOjhWBF0zfEgyucbMOQ2l6crI+7oH6pb9o/LRtpWn+6bVRGnoVbbHwatlPXuGrwLQV5PpTkZQAFqfbwZ2M8VC9H2EoNxN5qrhYi4dh3dDqAMOWW3uok8kbTXwIGh4Wrb0/GR/bInUMBRBML318U1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NYSuV3rNSK2cyD0B8kBJl5bzSvj8OrKoGlU8G+Pysuk=;
 b=tcC/Lk1bdSt/T+l51DY7rxyXQzvwWpeNULeJFPPoK9b5DtrBqQLIhEuWcx84UT7pKi4Fkr1dWUhAFgukHw9JLhNF+QREXGwMTOaDMtEf+LNuC6U0aBbgAtlZdNRll2dD21iVUerfBkOVsDsV2oYb5sX4gmuAUmVQsp+PoafROuE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3984.namprd11.prod.outlook.com (10.255.181.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Tue, 17 Sep 2019 15:54:47 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 15:54:47 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 02/23] mtd: spi-nor: Introduce 'struct spi_nor_controller_ops'
Thread-Topic: [PATCH 02/23] mtd: spi-nor: Introduce 'struct
 spi_nor_controller_ops'
Thread-Index: AQHVbXA7VfKVpMUx1UqOLh4+dBdplg==
Date: Tue, 17 Sep 2019 15:54:47 +0000
Message-ID: <20190917155426.7432-3-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: f7764ee2-1571-4d73-76ab-08d73b875d63
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3984; 
x-ms-traffictypediagnostic: MN2PR11MB3984:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3984CFF2B316F8F9E40E772EF08F0@MN2PR11MB3984.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(366004)(346002)(199004)(189003)(478600001)(2616005)(64756008)(66476007)(3846002)(6486002)(107886003)(25786009)(6512007)(50226002)(6436002)(305945005)(99286004)(14444005)(71200400001)(476003)(7416002)(486006)(256004)(66066001)(71190400001)(7736002)(76176011)(102836004)(36756003)(26005)(386003)(66446008)(14454004)(66946007)(1076003)(86362001)(6506007)(186003)(6116002)(5660300002)(66556008)(110136005)(81156014)(81166006)(2501003)(8676002)(54906003)(316002)(4326008)(8936002)(11346002)(30864003)(2906002)(446003)(52116002)(2201001)(579004)(559001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3984;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MOnpv1QbMDAmqivoGtXLUcNVYtyH283pFL2TQ5KKcWSZBjhoSZL4T3c1vLSkKEh5N/t5mKaQ6yguOqrrn/xSL1hMh3/L4Vxk9jhQrAIPawuSSpAnIlYHf4kkBtHDYRwloi71MIwHQf7BLmgDntvDw6lExX9SQAC+jbZVDYLMtptDsveuH99Ja1ujXIBR04hg4G9NdB2CrMPuFqmG4cOlrSQc+LSKACm0Ab9wnZaMbvCbOgTSdvEeFszcr8TFoAFSVkCr8Akq88vgeJ/M4KVnDLU4upDnHL6Zn9KEgx6JtpoCzz8eli5/5V8aSTLiL8MSBuhGw23zdNZQbwqyDWKbWNTYPqKjG8I40dlFLEYexpVy/MejbTmnVIMhEB6tFjlJcS/Riml5ZZmOSQ4cY8xUY4yHMvPgQk52ptIgnDRgjnU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f7764ee2-1571-4d73-76ab-08d73b875d63
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 15:54:47.3805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g5elzTgLpwiDlc4wVtDvKmn0wGXWe8NpLYr4PzpyTzAxzHugEC/mSOsvTN8wPOmbSxUOUN6Zp/bAVFkqFJv3bT83hNDL+Lmo7ofNmH96rPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_085512_088319_741CBE1A 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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

Move all SPI NOR controller driver specific ops in a dedicated
structure. 'struct spi_nor' becomes lighter.

Use size_t for lengths in 'int (*write_reg)()' and 'int (*read_reg)()'.
Rename wite/read_buf to buf, the name of the functions are
suggestive enough. Constify buf in int (*write_reg). Comply with these
changes in the SPI NOR controller drivers.

Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/aspeed-smc.c      | 23 ++++++-----
 drivers/mtd/spi-nor/cadence-quadspi.c | 39 ++++++++++--------
 drivers/mtd/spi-nor/hisi-sfc.c        | 22 +++++-----
 drivers/mtd/spi-nor/intel-spi.c       | 24 ++++++-----
 drivers/mtd/spi-nor/mtk-quadspi.c     | 25 +++++++-----
 drivers/mtd/spi-nor/nxp-spifi.c       | 23 +++++++----
 drivers/mtd/spi-nor/spi-nor.c         | 76 ++++++++++++++++++++---------------
 include/linux/mtd/spi-nor.h           | 51 +++++++++++++----------
 8 files changed, 166 insertions(+), 117 deletions(-)

diff --git a/drivers/mtd/spi-nor/aspeed-smc.c b/drivers/mtd/spi-nor/aspeed-smc.c
index 009c1da8574c..2b7cabbb680c 100644
--- a/drivers/mtd/spi-nor/aspeed-smc.c
+++ b/drivers/mtd/spi-nor/aspeed-smc.c
@@ -320,7 +320,8 @@ static void aspeed_smc_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
 	mutex_unlock(&chip->controller->mutex);
 }
 
-static int aspeed_smc_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+static int aspeed_smc_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
+			       size_t len)
 {
 	struct aspeed_smc_chip *chip = nor->priv;
 
@@ -331,8 +332,8 @@ static int aspeed_smc_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 	return 0;
 }
 
-static int aspeed_smc_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
-				int len)
+static int aspeed_smc_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
+				size_t len)
 {
 	struct aspeed_smc_chip *chip = nor->priv;
 
@@ -746,6 +747,15 @@ static int aspeed_smc_chip_setup_finish(struct aspeed_smc_chip *chip)
 	return 0;
 }
 
+static const struct spi_nor_controller_ops aspeed_smc_controller_ops = {
+	.prepare = aspeed_smc_prep,
+	.unprepare = aspeed_smc_unprep,
+	.read_reg = aspeed_smc_read_reg,
+	.write_reg = aspeed_smc_write_reg,
+	.read = aspeed_smc_read_user,
+	.write = aspeed_smc_write_user,
+};
+
 static int aspeed_smc_setup_flash(struct aspeed_smc_controller *controller,
 				  struct device_node *np, struct resource *r)
 {
@@ -805,12 +815,7 @@ static int aspeed_smc_setup_flash(struct aspeed_smc_controller *controller,
 		nor->dev = dev;
 		nor->priv = chip;
 		spi_nor_set_flash_node(nor, child);
-		nor->read = aspeed_smc_read_user;
-		nor->write = aspeed_smc_write_user;
-		nor->read_reg = aspeed_smc_read_reg;
-		nor->write_reg = aspeed_smc_write_reg;
-		nor->prepare = aspeed_smc_prep;
-		nor->unprepare = aspeed_smc_unprep;
+		nor->controller_ops = &aspeed_smc_controller_ops;
 
 		ret = aspeed_smc_chip_setup_init(chip, r);
 		if (ret)
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 7bef63947b29..ebda612641a4 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -356,18 +356,19 @@ static int cqspi_exec_flash_cmd(struct cqspi_st *cqspi, unsigned int reg)
 
 static int cqspi_command_read(struct spi_nor *nor,
 			      const u8 *txbuf, const unsigned n_tx,
-			      u8 *rxbuf, const unsigned n_rx)
+			      u8 *rxbuf, size_t n_rx)
 {
 	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
 	void __iomem *reg_base = cqspi->iobase;
 	unsigned int rdreg;
 	unsigned int reg;
-	unsigned int read_len;
+	size_t read_len;
 	int status;
 
 	if (!n_rx || n_rx > CQSPI_STIG_DATA_LEN_MAX || !rxbuf) {
-		dev_err(nor->dev, "Invalid input argument, len %d rxbuf 0x%p\n",
+		dev_err(nor->dev,
+			"Invalid input argument, len %zu rxbuf 0x%p\n",
 			n_rx, rxbuf);
 		return -EINVAL;
 	}
@@ -404,19 +405,19 @@ static int cqspi_command_read(struct spi_nor *nor,
 }
 
 static int cqspi_command_write(struct spi_nor *nor, const u8 opcode,
-			       const u8 *txbuf, const unsigned n_tx)
+			       const u8 *txbuf, size_t n_tx)
 {
 	struct cqspi_flash_pdata *f_pdata = nor->priv;
 	struct cqspi_st *cqspi = f_pdata->cqspi;
 	void __iomem *reg_base = cqspi->iobase;
 	unsigned int reg;
 	unsigned int data;
-	u32 write_len;
+	size_t write_len;
 	int ret;
 
 	if (n_tx > CQSPI_STIG_DATA_LEN_MAX || (n_tx && !txbuf)) {
 		dev_err(nor->dev,
-			"Invalid input argument, cmdlen %d txbuf 0x%p\n",
+			"Invalid input argument, cmdlen %zu txbuf 0x%p\n",
 			n_tx, txbuf);
 		return -EINVAL;
 	}
@@ -1050,7 +1051,7 @@ static int cqspi_erase(struct spi_nor *nor, loff_t offs)
 		return ret;
 
 	/* Send write enable, then erase commands. */
-	ret = nor->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
+	ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
 	if (ret)
 		return ret;
 
@@ -1080,7 +1081,7 @@ static void cqspi_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
 	mutex_unlock(&cqspi->bus_mutex);
 }
 
-static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, size_t len)
 {
 	int ret;
 
@@ -1091,7 +1092,8 @@ static int cqspi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 	return ret;
 }
 
-static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+static int cqspi_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
+			   size_t len)
 {
 	int ret;
 
@@ -1216,6 +1218,16 @@ static void cqspi_request_mmap_dma(struct cqspi_st *cqspi)
 	init_completion(&cqspi->rx_dma_complete);
 }
 
+static const struct spi_nor_controller_ops cqspi_controller_ops = {
+	.prepare = cqspi_prep,
+	.unprepare = cqspi_unprep,
+	.read_reg = cqspi_read_reg,
+	.write_reg = cqspi_write_reg,
+	.read = cqspi_read,
+	.write = cqspi_write,
+	.erase = cqspi_erase,
+};
+
 static int cqspi_setup_flash(struct cqspi_st *cqspi, struct device_node *np)
 {
 	struct platform_device *pdev = cqspi->pdev;
@@ -1265,14 +1277,7 @@ static int cqspi_setup_flash(struct cqspi_st *cqspi, struct device_node *np)
 		nor->dev = dev;
 		spi_nor_set_flash_node(nor, np);
 		nor->priv = f_pdata;
-
-		nor->read_reg = cqspi_read_reg;
-		nor->write_reg = cqspi_write_reg;
-		nor->read = cqspi_read;
-		nor->write = cqspi_write;
-		nor->erase = cqspi_erase;
-		nor->prepare = cqspi_prep;
-		nor->unprepare = cqspi_unprep;
+		nor->controller_ops = &cqspi_controller_ops;
 
 		mtd->name = devm_kasprintf(dev, GFP_KERNEL, "%s.%d",
 					   dev_name(dev), cs);
diff --git a/drivers/mtd/spi-nor/hisi-sfc.c b/drivers/mtd/spi-nor/hisi-sfc.c
index c99ed9cdbf9c..a1258216f89d 100644
--- a/drivers/mtd/spi-nor/hisi-sfc.c
+++ b/drivers/mtd/spi-nor/hisi-sfc.c
@@ -177,7 +177,7 @@ static void hisi_spi_nor_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
 }
 
 static int hisi_spi_nor_op_reg(struct spi_nor *nor,
-				u8 opcode, int len, u8 optype)
+				u8 opcode, size_t len, u8 optype)
 {
 	struct hifmc_priv *priv = nor->priv;
 	struct hifmc_host *host = priv->host;
@@ -200,7 +200,7 @@ static int hisi_spi_nor_op_reg(struct spi_nor *nor,
 }
 
 static int hisi_spi_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
-		int len)
+				 size_t len)
 {
 	struct hifmc_priv *priv = nor->priv;
 	struct hifmc_host *host = priv->host;
@@ -215,7 +215,7 @@ static int hisi_spi_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
 }
 
 static int hisi_spi_nor_write_reg(struct spi_nor *nor, u8 opcode,
-				u8 *buf, int len)
+				  const u8 *buf, size_t len)
 {
 	struct hifmc_priv *priv = nor->priv;
 	struct hifmc_host *host = priv->host;
@@ -311,6 +311,15 @@ static ssize_t hisi_spi_nor_write(struct spi_nor *nor, loff_t to,
 	return len;
 }
 
+static const struct spi_nor_controller_ops hisi_controller_ops = {
+	.prepare = hisi_spi_nor_prep,
+	.unprepare = hisi_spi_nor_unprep,
+	.read_reg = hisi_spi_nor_read_reg,
+	.write_reg = hisi_spi_nor_write_reg,
+	.read = hisi_spi_nor_read,
+	.write = hisi_spi_nor_write,
+};
+
 /**
  * Get spi flash device information and register it as a mtd device.
  */
@@ -357,13 +366,8 @@ static int hisi_spi_nor_register(struct device_node *np,
 	}
 	priv->host = host;
 	nor->priv = priv;
+	nor->controller_ops = &hisi_controller_ops;
 
-	nor->prepare = hisi_spi_nor_prep;
-	nor->unprepare = hisi_spi_nor_unprep;
-	nor->read_reg = hisi_spi_nor_read_reg;
-	nor->write_reg = hisi_spi_nor_write_reg;
-	nor->read = hisi_spi_nor_read;
-	nor->write = hisi_spi_nor_write;
 	ret = spi_nor_scan(nor, NULL, &hwcaps);
 	if (ret)
 		return ret;
diff --git a/drivers/mtd/spi-nor/intel-spi.c b/drivers/mtd/spi-nor/intel-spi.c
index 43e55a2e9b27..dc38f19ac7ae 100644
--- a/drivers/mtd/spi-nor/intel-spi.c
+++ b/drivers/mtd/spi-nor/intel-spi.c
@@ -426,7 +426,7 @@ static int intel_spi_opcode_index(struct intel_spi *ispi, u8 opcode, int optype)
 	return 0;
 }
 
-static int intel_spi_hw_cycle(struct intel_spi *ispi, u8 opcode, int len)
+static int intel_spi_hw_cycle(struct intel_spi *ispi, u8 opcode, size_t len)
 {
 	u32 val, status;
 	int ret;
@@ -469,7 +469,7 @@ static int intel_spi_hw_cycle(struct intel_spi *ispi, u8 opcode, int len)
 	return 0;
 }
 
-static int intel_spi_sw_cycle(struct intel_spi *ispi, u8 opcode, int len,
+static int intel_spi_sw_cycle(struct intel_spi *ispi, u8 opcode, size_t len,
 			      int optype)
 {
 	u32 val = 0, status;
@@ -535,7 +535,8 @@ static int intel_spi_sw_cycle(struct intel_spi *ispi, u8 opcode, int len,
 	return 0;
 }
 
-static int intel_spi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+static int intel_spi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
+			      size_t len)
 {
 	struct intel_spi *ispi = nor->priv;
 	int ret;
@@ -555,7 +556,8 @@ static int intel_spi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 	return intel_spi_read_block(ispi, buf, len);
 }
 
-static int intel_spi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+static int intel_spi_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
+			       size_t len)
 {
 	struct intel_spi *ispi = nor->priv;
 	int ret;
@@ -864,6 +866,14 @@ static void intel_spi_fill_partition(struct intel_spi *ispi,
 	}
 }
 
+static const struct spi_nor_controller_ops intel_spi_controller_ops = {
+	.read_reg = intel_spi_read_reg,
+	.write_reg = intel_spi_write_reg,
+	.read = intel_spi_read,
+	.write = intel_spi_write,
+	.erase = intel_spi_erase,
+};
+
 struct intel_spi *intel_spi_probe(struct device *dev,
 	struct resource *mem, const struct intel_spi_boardinfo *info)
 {
@@ -897,11 +907,7 @@ struct intel_spi *intel_spi_probe(struct device *dev,
 
 	ispi->nor.dev = ispi->dev;
 	ispi->nor.priv = ispi;
-	ispi->nor.read_reg = intel_spi_read_reg;
-	ispi->nor.write_reg = intel_spi_write_reg;
-	ispi->nor.read = intel_spi_read;
-	ispi->nor.write = intel_spi_write;
-	ispi->nor.erase = intel_spi_erase;
+	ispi->nor.controller_ops = &intel_spi_controller_ops;
 
 	ret = spi_nor_scan(&ispi->nor, NULL, &hwcaps);
 	if (ret) {
diff --git a/drivers/mtd/spi-nor/mtk-quadspi.c b/drivers/mtd/spi-nor/mtk-quadspi.c
index 34db01ab6cab..b1691680d174 100644
--- a/drivers/mtd/spi-nor/mtk-quadspi.c
+++ b/drivers/mtd/spi-nor/mtk-quadspi.c
@@ -151,9 +151,9 @@ static int mtk_nor_execute_cmd(struct mtk_nor *mtk_nor, u8 cmdval)
 }
 
 static int mtk_nor_do_tx_rx(struct mtk_nor *mtk_nor, u8 op,
-			    u8 *tx, int txlen, u8 *rx, int rxlen)
+			    const u8 *tx, size_t txlen, u8 *rx, size_t rxlen)
 {
-	int len = 1 + txlen + rxlen;
+	size_t len = 1 + txlen + rxlen;
 	int i, ret, idx;
 
 	if (len > MTK_NOR_MAX_SHIFT)
@@ -193,7 +193,7 @@ static int mtk_nor_do_tx_rx(struct mtk_nor *mtk_nor, u8 op,
 }
 
 /* Do a WRSR (Write Status Register) command */
-static int mtk_nor_wr_sr(struct mtk_nor *mtk_nor, u8 sr)
+static int mtk_nor_wr_sr(struct mtk_nor *mtk_nor, const u8 sr)
 {
 	writeb(sr, mtk_nor->base + MTK_NOR_PRGDATA5_REG);
 	writeb(8, mtk_nor->base + MTK_NOR_CNT_REG);
@@ -354,7 +354,7 @@ static ssize_t mtk_nor_write(struct spi_nor *nor, loff_t to, size_t len,
 	return len;
 }
 
-static int mtk_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+static int mtk_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, size_t len)
 {
 	int ret;
 	struct mtk_nor *mtk_nor = nor->priv;
@@ -376,8 +376,8 @@ static int mtk_nor_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 	return ret;
 }
 
-static int mtk_nor_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
-			     int len)
+static int mtk_nor_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
+			     size_t len)
 {
 	int ret;
 	struct mtk_nor *mtk_nor = nor->priv;
@@ -419,6 +419,13 @@ static int mtk_nor_enable_clk(struct mtk_nor *mtk_nor)
 	return 0;
 }
 
+static const struct spi_nor_controller_ops mtk_controller_ops = {
+	.read_reg = mtk_nor_read_reg,
+	.write_reg = mtk_nor_write_reg,
+	.read = mtk_nor_read,
+	.write = mtk_nor_write,
+};
+
 static int mtk_nor_init(struct mtk_nor *mtk_nor,
 			struct device_node *flash_node)
 {
@@ -438,12 +445,8 @@ static int mtk_nor_init(struct mtk_nor *mtk_nor,
 	nor->dev = mtk_nor->dev;
 	nor->priv = mtk_nor;
 	spi_nor_set_flash_node(nor, flash_node);
+	nor->controller_ops = &mtk_controller_ops;
 
-	/* fill the hooks to spi nor */
-	nor->read = mtk_nor_read;
-	nor->read_reg = mtk_nor_read_reg;
-	nor->write = mtk_nor_write;
-	nor->write_reg = mtk_nor_write_reg;
 	nor->mtd.name = "mtk_nor";
 	/* initialized with NULL */
 	ret = spi_nor_scan(nor, NULL, &hwcaps);
diff --git a/drivers/mtd/spi-nor/nxp-spifi.c b/drivers/mtd/spi-nor/nxp-spifi.c
index 4a871587392b..9a5b1a7c636a 100644
--- a/drivers/mtd/spi-nor/nxp-spifi.c
+++ b/drivers/mtd/spi-nor/nxp-spifi.c
@@ -123,7 +123,8 @@ static int nxp_spifi_set_memory_mode_on(struct nxp_spifi *spifi)
 	return ret;
 }
 
-static int nxp_spifi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+static int nxp_spifi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf,
+			      size_t len)
 {
 	struct nxp_spifi *spifi = nor->priv;
 	u32 cmd;
@@ -145,7 +146,8 @@ static int nxp_spifi_read_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
 	return nxp_spifi_wait_for_cmd(spifi);
 }
 
-static int nxp_spifi_write_reg(struct spi_nor *nor, u8 opcode, u8 *buf, int len)
+static int nxp_spifi_write_reg(struct spi_nor *nor, u8 opcode, const u8 *buf,
+			       size_t len)
 {
 	struct nxp_spifi *spifi = nor->priv;
 	u32 cmd;
@@ -263,9 +265,18 @@ static int nxp_spifi_setup_memory_cmd(struct nxp_spifi *spifi)
 static void nxp_spifi_dummy_id_read(struct spi_nor *nor)
 {
 	u8 id[SPI_NOR_MAX_ID_LEN];
-	nor->read_reg(nor, SPINOR_OP_RDID, id, SPI_NOR_MAX_ID_LEN);
+	nor->controller_ops->read_reg(nor, SPINOR_OP_RDID, id,
+				      SPI_NOR_MAX_ID_LEN);
 }
 
+static const struct spi_nor_controller_ops nxp_spifi_controller_ops = {
+	.read_reg  = nxp_spifi_read_reg,
+	.write_reg = nxp_spifi_write_reg,
+	.read  = nxp_spifi_read,
+	.write = nxp_spifi_write,
+	.erase = nxp_spifi_erase,
+};
+
 static int nxp_spifi_setup_flash(struct nxp_spifi *spifi,
 				 struct device_node *np)
 {
@@ -332,11 +343,7 @@ static int nxp_spifi_setup_flash(struct nxp_spifi *spifi,
 	spifi->nor.dev   = spifi->dev;
 	spi_nor_set_flash_node(&spifi->nor, np);
 	spifi->nor.priv  = spifi;
-	spifi->nor.read  = nxp_spifi_read;
-	spifi->nor.write = nxp_spifi_write;
-	spifi->nor.erase = nxp_spifi_erase;
-	spifi->nor.read_reg  = nxp_spifi_read_reg;
-	spifi->nor.write_reg = nxp_spifi_write_reg;
+	spifi->nor.controller_ops = &nxp_spifi_controller_ops;
 
 	/*
 	 * The first read on a hard reset isn't reliable so do a
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1d8621d43160..b8c7ded0f145 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -338,7 +338,7 @@ static ssize_t spi_nor_read_data(struct spi_nor *nor, loff_t from, size_t len,
 	if (nor->spimem)
 		return spi_nor_spimem_read_data(nor, from, len, buf);
 
-	return nor->read(nor, from, len, buf);
+	return nor->controller_ops->read(nor, from, len, buf);
 }
 
 /**
@@ -385,7 +385,7 @@ static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
 	if (nor->spimem)
 		return spi_nor_spimem_write_data(nor, to, len, buf);
 
-	return nor->write(nor, to, len, buf);
+	return nor->controller_ops->write(nor, to, len, buf);
 }
 
 /*
@@ -406,7 +406,8 @@ static int read_sr(struct spi_nor *nor)
 
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->read_reg(nor, SPINOR_OP_RDSR, nor->bouncebuf, 1);
+		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR,
+						    nor->bouncebuf, 1);
 	}
 
 	if (ret < 0) {
@@ -435,7 +436,8 @@ static int read_fsr(struct spi_nor *nor)
 
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->read_reg(nor, SPINOR_OP_RDFSR, nor->bouncebuf, 1);
+		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDFSR,
+						    nor->bouncebuf, 1);
 	}
 
 	if (ret < 0) {
@@ -464,7 +466,8 @@ static int read_cr(struct spi_nor *nor)
 
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->read_reg(nor, SPINOR_OP_RDCR, nor->bouncebuf, 1);
+		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDCR,
+						    nor->bouncebuf, 1);
 	}
 
 	if (ret < 0) {
@@ -492,7 +495,8 @@ static int write_sr(struct spi_nor *nor, u8 val)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, SPINOR_OP_WRSR, nor->bouncebuf, 1);
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
+					      nor->bouncebuf, 1);
 }
 
 /*
@@ -511,7 +515,7 @@ static int write_enable(struct spi_nor *nor)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
 }
 
 /*
@@ -529,7 +533,7 @@ static int write_disable(struct spi_nor *nor)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, SPINOR_OP_WRDI, NULL, 0);
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRDI, NULL, 0);
 }
 
 static struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
@@ -631,8 +635,9 @@ static int macronix_set_4byte(struct spi_nor *nor, bool enable)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, enable ? SPINOR_OP_EN4B : SPINOR_OP_EX4B,
-			      NULL, 0);
+	return nor->controller_ops->write_reg(nor, enable ? SPINOR_OP_EN4B :
+							    SPINOR_OP_EX4B,
+					      NULL, 0);
 }
 
 static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
@@ -660,7 +665,8 @@ static int spansion_set_4byte(struct spi_nor *nor, bool enable)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, SPINOR_OP_BRWR, nor->bouncebuf, 1);
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_BRWR,
+					      nor->bouncebuf, 1);
 }
 
 static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
@@ -677,7 +683,8 @@ static int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, SPINOR_OP_WREAR, nor->bouncebuf, 1);
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_WREAR,
+					      nor->bouncebuf, 1);
 }
 
 static int winbond_set_4byte(struct spi_nor *nor, bool enable)
@@ -712,7 +719,7 @@ static int spi_nor_xread_sr(struct spi_nor *nor, u8 *sr)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->read_reg(nor, SPINOR_OP_XRDSR, sr, 1);
+	return nor->controller_ops->read_reg(nor, SPINOR_OP_XRDSR, sr, 1);
 }
 
 static int s3an_sr_ready(struct spi_nor *nor)
@@ -740,7 +747,7 @@ static int spi_nor_clear_sr(struct spi_nor *nor)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, SPINOR_OP_CLSR, NULL, 0);
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_CLSR, NULL, 0);
 }
 
 static int spi_nor_sr_ready(struct spi_nor *nor)
@@ -774,7 +781,7 @@ static int spi_nor_clear_fsr(struct spi_nor *nor)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, SPINOR_OP_CLFSR, NULL, 0);
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_CLFSR, NULL, 0);
 }
 
 static int spi_nor_fsr_ready(struct spi_nor *nor)
@@ -871,7 +878,8 @@ static int erase_chip(struct spi_nor *nor)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, SPINOR_OP_CHIP_ERASE, NULL, 0);
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_CHIP_ERASE,
+					      NULL, 0);
 }
 
 static int spi_nor_lock_and_prep(struct spi_nor *nor, enum spi_nor_ops ops)
@@ -880,10 +888,9 @@ static int spi_nor_lock_and_prep(struct spi_nor *nor, enum spi_nor_ops ops)
 
 	mutex_lock(&nor->lock);
 
-	if (nor->prepare) {
-		ret = nor->prepare(nor, ops);
+	if (nor->controller_ops &&  nor->controller_ops->prepare) {
+		ret = nor->controller_ops->prepare(nor, ops);
 		if (ret) {
-			dev_err(nor->dev, "failed in the preparation.\n");
 			mutex_unlock(&nor->lock);
 			return ret;
 		}
@@ -893,8 +900,8 @@ static int spi_nor_lock_and_prep(struct spi_nor *nor, enum spi_nor_ops ops)
 
 static void spi_nor_unlock_and_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
 {
-	if (nor->unprepare)
-		nor->unprepare(nor, ops);
+	if (nor->controller_ops && nor->controller_ops->unprepare)
+		nor->controller_ops->unprepare(nor, ops);
 	mutex_unlock(&nor->lock);
 }
 
@@ -935,8 +942,8 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
 
 	addr = spi_nor_convert_addr(nor, addr);
 
-	if (nor->erase)
-		return nor->erase(nor, addr);
+	if (nor->controller_ops && nor->controller_ops->erase)
+		return nor->controller_ops->erase(nor, addr);
 
 	if (nor->spimem) {
 		struct spi_mem_op op =
@@ -957,8 +964,8 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
 		addr >>= 8;
 	}
 
-	return nor->write_reg(nor, nor->erase_opcode, nor->bouncebuf,
-			      nor->addr_width);
+	return nor->controller_ops->write_reg(nor, nor->erase_opcode,
+					      nor->bouncebuf, nor->addr_width);
 }
 
 /**
@@ -1678,7 +1685,8 @@ static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
 
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->write_reg(nor, SPINOR_OP_WRSR, sr_cr, 2);
+		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
+						     sr_cr, 2);
 	}
 
 	if (ret < 0) {
@@ -1873,7 +1881,7 @@ static int spi_nor_write_sr2(struct spi_nor *nor, u8 *sr2)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, SPINOR_OP_WRSR2, sr2, 1);
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR2, sr2, 1);
 }
 
 static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
@@ -1888,7 +1896,7 @@ static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->read_reg(nor, SPINOR_OP_RDSR2, sr2, 1);
+	return nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR2, sr2, 1);
 }
 
 /**
@@ -2520,8 +2528,8 @@ static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
 
 		tmp = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		tmp = nor->read_reg(nor, SPINOR_OP_RDID, id,
-				    SPI_NOR_MAX_ID_LEN);
+		tmp = nor->controller_ops->read_reg(nor, SPINOR_OP_RDID, id,
+						    SPI_NOR_MAX_ID_LEN);
 	}
 	if (tmp < 0) {
 		dev_err(nor->dev, "error %d reading JEDEC ID\n", tmp);
@@ -2722,9 +2730,11 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 static int spi_nor_check(struct spi_nor *nor)
 {
 	if (!nor->dev ||
-	    (!nor->spimem &&
-	    (!nor->read || !nor->write || !nor->read_reg ||
-	      !nor->write_reg))) {
+	    (!nor->spimem && nor->controller_ops &&
+	    (!nor->controller_ops->read ||
+	     !nor->controller_ops->write ||
+	     !nor->controller_ops->read_reg ||
+	     !nor->controller_ops->write_reg))) {
 		pr_err("spi-nor: please fill all the necessary fields!\n");
 		return -EINVAL;
 	}
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index fc0b4b19c900..d1d736d3c8ab 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -466,6 +466,34 @@ enum spi_nor_pp_command_index {
 struct spi_nor;
 
 /**
+ * struct spi_nor_controller_ops - SPI NOR controller driver specific
+ *                                 operations.
+ * @prepare:		[OPTIONAL] do some preparations for the
+ *			read/write/erase/lock/unlock operations.
+ * @unprepare:		[OPTIONAL] do some post work after the
+ *			read/write/erase/lock/unlock operations.
+ * @read_reg:		read out the register.
+ * @write_reg:		write data to the register.
+ * @read:		read data from the SPI NOR.
+ * @write:		write data to the SPI NOR.
+ * @erase:		erase a sector of the SPI NOR at the offset @offs; if
+ *			not provided by the driver, spi-nor will send the erase
+ *			opcode via write_reg().
+ */
+struct spi_nor_controller_ops {
+	int (*prepare)(struct spi_nor *nor, enum spi_nor_ops ops);
+	void (*unprepare)(struct spi_nor *nor, enum spi_nor_ops ops);
+	int (*read_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, size_t len);
+	int (*write_reg)(struct spi_nor *nor, u8 opcode, const u8 *buf,
+			 size_t len);
+
+	ssize_t (*read)(struct spi_nor *nor, loff_t from, size_t len, u8 *buf);
+	ssize_t (*write)(struct spi_nor *nor, loff_t to, size_t len,
+			 const u8 *buf);
+	int (*erase)(struct spi_nor *nor, loff_t offs);
+};
+
+/**
  * struct spi_nor_locking_ops - SPI NOR locking methods
  * @lock:	lock a region of the SPI NOR.
  * @unlock:	unlock a region of the SPI NOR.
@@ -549,17 +577,7 @@ struct flash_info;
  * @read_proto:		the SPI protocol for read operations
  * @write_proto:	the SPI protocol for write operations
  * @reg_proto		the SPI protocol for read_reg/write_reg/erase operations
- * @prepare:		[OPTIONAL] do some preparations for the
- *			read/write/erase/lock/unlock operations
- * @unprepare:		[OPTIONAL] do some post work after the
- *			read/write/erase/lock/unlock operations
- * @read_reg:		[DRIVER-SPECIFIC] read out the register
- * @write_reg:		[DRIVER-SPECIFIC] write data to the register
- * @read:		[DRIVER-SPECIFIC] read data from the SPI NOR
- * @write:		[DRIVER-SPECIFIC] write data to the SPI NOR
- * @erase:		[DRIVER-SPECIFIC] erase a sector of the SPI NOR
- *			at the offset @offs; if not provided by the driver,
- *			spi-nor will send the erase opcode via write_reg()
+ * @controller_ops:	SPI NOR controller driver specific operations.
  * @clear_sr_bp:	[FLASH-SPECIFIC] clears the Block Protection Bits from
  *			the SPI NOR Status Register.
  * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
@@ -588,16 +606,7 @@ struct spi_nor {
 	bool			sst_write_second;
 	u32			flags;
 
-	int (*prepare)(struct spi_nor *nor, enum spi_nor_ops ops);
-	void (*unprepare)(struct spi_nor *nor, enum spi_nor_ops ops);
-	int (*read_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, int len);
-	int (*write_reg)(struct spi_nor *nor, u8 opcode, u8 *buf, int len);
-
-	ssize_t (*read)(struct spi_nor *nor, loff_t from,
-			size_t len, u_char *read_buf);
-	ssize_t (*write)(struct spi_nor *nor, loff_t to,
-			size_t len, const u_char *write_buf);
-	int (*erase)(struct spi_nor *nor, loff_t offs);
+	const struct spi_nor_controller_ops *controller_ops;
 
 	int (*clear_sr_bp)(struct spi_nor *nor);
 	struct spi_nor_flash_parameter params;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

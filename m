Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F49FB5246
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkybreQeeVN1YUaQDUJyDDKEHPeAmAODmiREQKoc/zg=; b=RnrGyrX1dwUBin
	p+hVom0y3NBlLRFJamfgznZZ4xwCXRVAKIJXUUiO5YNd1uTUxE970amu8Tur8YcXjLPjfEEpn7vwF
	XXlk82gmVBzDMtT5zp9yXkEYCq+TXJQIr9tzd9gnOBAgeVxVmorx2U6Z8gCKVkCTQHAsjOYM2RZ6h
	hULOBpsJzJ//Kz0sMJom3oBrDZEIZ0VLwyePZWiDVO+WjGvBZC5yzIP1CicQEtqC/ssgcXuYuQQdn
	znd3F5pKvFYkwrsoOF+zZOfWtxwYFOWmXz9UQoxKzZzNyJV3HB2Dex5EGPu+r1l8xuQLxMw/3XRNz
	kowAs5McpUv0jZ58OKfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFvh-0005a7-QZ; Tue, 17 Sep 2019 16:02:13 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFp4-0007sv-CM; Tue, 17 Sep 2019 15:55:24 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: AZkRyVtZxYgI/U397LPNcDFw10NVPyuhK3cNau0DqB9jmCMjTB38n+fBGFjGB4PQvHmtMzuUzI
 hY/cQAMcGNh3RQjXhMzygPpUCCDlGvClxNPHNclwdYQ0mY/jFwinyRL1rjnNoYwOGQwnEFEW+F
 zvz4wUweXi5qQVQw5P7rv2hwJWrwyy9rCMroKPQ/XM+P+aip4LF5rEkOoJBA/uyeimOk6dJIqN
 HPkYeUkZMLXyyQSDqjG+48+LnxtIO7ly9C5T/fRJsr4eubju5txTMnh5ZlkKDY20FCwnqbFY7n
 aCs=
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="50797834"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Sep 2019 08:55:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Sep 2019 08:55:09 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Sep 2019 08:55:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/R1Y3BDShQ6gMv2218AY1L0o9ZBaVLkn05q6thR6RlRTYoa97EGellHbTCM2AR4rj8aCFifL8n4693eIs7QYMrIdVJUuvlFil77h2xuTAIn7WWWCp9pvYSNFajDtjKvF/fW9H/KAlYiYmJZYqNoq8X0C7XQBKmFeq0lHfjtwYCRBFS5fV0Fq0zl2TXy3gXUaO1q6ryqatR6NgKlstqsA302aeUF4qLWp0IiOFfTPdR6CMq/RE8G262NVfmPed5Q69+4hnm63HBcRrsl1vvauH1TPRI+53lief9E+BVOEUeHgVbbW8kNC3zAIk3o8OPSMsWExFSMDi1HEPT/wewxyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IgZDciRiYIn5RKBzZFdhKdyzvTYikOVy9DDuzMJiRUI=;
 b=VjboE633Sc/cNAh888RF6hWSVQlqt2QivaRiFjyR23LD499pWxZ4SK165YDf31cGauwjazwQ0h9Y+N93MwhHBf8/mVlfI7uErVzRrWS5knW21BVcZQMMInQHYgvtk28MI23Y6gu3AxKWNNOnIHPWa3hrK8SwPvShF0qbEdBs0a6RJVqjnrpCPgXDNzvg71VrLwah0yQ8PFdDeD8p3dlnY1UqDirJlWZfr5m/6Q9s0QVDFgUqOPU7dHI4l1DQIy31NzXK4Rfi7Pk9q/6TAG/U+CZN4f0NK8sna+Pw8dzKU3otEv6ABOeL6Pz+HTjnwIM/AiJ9wRZixlTSDMFUqswoCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IgZDciRiYIn5RKBzZFdhKdyzvTYikOVy9DDuzMJiRUI=;
 b=h4iGbpiw3dq7AmnlzboNaorNdcOEi2DJX2uWDTzGwVXhjvp3/GmehMyCfs4rHNjgDFO7rATlsyYPC4iinF45GiiH+tglSdyD96w15C7W/ZnAXnnH6mN+kl/nV/EE63oxTNE5uE2wJHqCL383CvCeInM19/t8nRwNSWi6djMRf3o=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3984.namprd11.prod.outlook.com (10.255.181.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Tue, 17 Sep 2019 15:55:06 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 15:55:06 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 08/23] mtd: spi-nor: Rework write_enable/disable()
Thread-Topic: [PATCH 08/23] mtd: spi-nor: Rework write_enable/disable()
Thread-Index: AQHVbXBGKtMISplgxk+FS63MDGaKQQ==
Date: Tue, 17 Sep 2019 15:55:06 +0000
Message-ID: <20190917155426.7432-9-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 7c24be63-87dc-4abb-fae7-08d73b8768db
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3984; 
x-ms-traffictypediagnostic: MN2PR11MB3984:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3984AFD0A795276C37F3F21CF08F0@MN2PR11MB3984.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(366004)(346002)(199004)(189003)(478600001)(2616005)(64756008)(66476007)(3846002)(6486002)(107886003)(25786009)(6512007)(50226002)(6436002)(305945005)(99286004)(14444005)(71200400001)(476003)(7416002)(486006)(256004)(66066001)(71190400001)(7736002)(76176011)(102836004)(36756003)(26005)(386003)(66446008)(14454004)(66946007)(1076003)(86362001)(6506007)(186003)(6116002)(5660300002)(66556008)(110136005)(81156014)(81166006)(2501003)(8676002)(54906003)(316002)(4326008)(8936002)(11346002)(2906002)(446003)(52116002)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3984;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zDxtMPfQ41Dteye7JKq7mg6OpEbN6vwNDjBtLFwUJk6t9Qbu0wHmB6m9KOfi9UPuCIyrifX+mm1eHXIGPbrnxbXWTLArDXlI2/eDoj4WVcZ08Bxnrx/gMdNZUcsq/7JCvpTfDlW/lpTDbM10aw3KAfgKacrSkHn5xi8KPyZCubnyWxrReYs9SEI9OUIJZzvu5cgMGsB8hVGk0D7Yk6RETrCbMAz7gzra5a3ViLxbUW/ihvudtH6dihk/hj13HUvl0SyAsU4mkWLGYjynKWiuQ30QeJGLTEFuh9MFRAj/1eVvnKlcQOjywnF83MfU1EFoc4Ucckrzg2FR2fo9tHujGkIfA7RofvuCDOwQAUWiD5u1FZBXG5D8TxXANOIQP77B1SMgzuzq/EE48cU2kyFTF6lg5FBdDCHnx8kGWcnatd0=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c24be63-87dc-4abb-fae7-08d73b8768db
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 15:55:06.5383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GVzgUKM+UXj5rpXkKt3BZmq4iXyN1dxsQZIaJwiu5Ka8tDIKtvttmS8XERuGkicy2g+Ipj6lJ7stiQn44hf781cnUFjpT/JijSOjT/X+NHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_085523_057763_D2D51268 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

static int write_enable(struct spi_nor *nor)
static int write_disable(struct spi_nor *nor)
become
static int spi_nor_write_enable(struct spi_nor *nor)
static int spi_nor_write_disable(struct spi_nor *nor)

Check for errors after each call to them. Move them up in the
file as the first SPI NOR Register Operations, to avoid further
forward declarations.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 175 +++++++++++++++++++++++++++++-------------
 1 file changed, 120 insertions(+), 55 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 04491885b9bb..271c2b465038 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -389,6 +389,64 @@ static ssize_t spi_nor_write_data(struct spi_nor *nor, loff_t to, size_t len,
 }
 
 /**
+ * spi_nor_write_enable() - Set write enable latch with Write Enable command.
+ * @nor:        pointer to 'struct spi_nor'
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_write_enable(struct spi_nor *nor)
+{
+	int ret;
+
+	if (nor->spimem) {
+		struct spi_mem_op op =
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WREN, 1),
+				   SPI_MEM_OP_NO_ADDR,
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_NO_DATA);
+
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WREN,
+						     NULL, 0);
+	}
+
+	if (ret)
+		dev_err(nor->dev, "error %d on Write Enable\n", ret);
+
+	return ret;
+}
+
+/**
+ * spi_nor_write_disable() - Send Write Disable instruction to the chip.
+ * @nor:        pointer to 'struct spi_nor'
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_write_disable(struct spi_nor *nor)
+{
+	int ret;
+
+	if (nor->spimem) {
+		struct spi_mem_op op =
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRDI, 1),
+				   SPI_MEM_OP_NO_ADDR,
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_NO_DATA);
+
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRDI,
+						     NULL, 0);
+	}
+
+	if (ret)
+		dev_err(nor->dev, "error %d on Write Disable\n", ret);
+
+	return ret;
+}
+
+/**
  * spi_nor_read_sr() - Read the Status Register.
  * @nor:        pointer to 'struct spi_nor'
  * @sr:		buffer where the value of the Status Register will be written.
@@ -500,43 +558,6 @@ static int write_sr(struct spi_nor *nor, u8 val)
 					      nor->bouncebuf, 1);
 }
 
-/*
- * Set write enable latch with Write Enable command.
- * Returns negative if error occurred.
- */
-static int write_enable(struct spi_nor *nor)
-{
-	if (nor->spimem) {
-		struct spi_mem_op op =
-			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WREN, 1),
-				   SPI_MEM_OP_NO_ADDR,
-				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_NO_DATA);
-
-		return spi_mem_exec_op(nor->spimem, &op);
-	}
-
-	return nor->controller_ops->write_reg(nor, SPINOR_OP_WREN, NULL, 0);
-}
-
-/*
- * Send write disable instruction to the chip.
- */
-static int write_disable(struct spi_nor *nor)
-{
-	if (nor->spimem) {
-		struct spi_mem_op op =
-			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRDI, 1),
-				   SPI_MEM_OP_NO_ADDR,
-				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_NO_DATA);
-
-		return spi_mem_exec_op(nor->spimem, &op);
-	}
-
-	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRDI, NULL, 0);
-}
-
 static struct spi_nor *mtd_to_spi_nor(struct mtd_info *mtd)
 {
 	return mtd->priv;
@@ -645,9 +666,15 @@ static int st_micron_set_4byte(struct spi_nor *nor, bool enable)
 {
 	int ret;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
 	ret = macronix_set_4byte(nor, enable);
-	write_disable(nor);
+	if (ret)
+		return ret;
+
+	ret = spi_nor_write_disable(nor);
 
 	return ret;
 }
@@ -701,9 +728,15 @@ static int winbond_set_4byte(struct spi_nor *nor, bool enable)
 	 * Register to be set to 1, so all 3-byte-address reads come from the
 	 * second 16M. We must clear the register to enable normal behavior.
 	 */
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
 	ret = spi_nor_write_ear(nor, 0);
-	write_disable(nor);
+	if (ret)
+		return ret;
+
+	ret = spi_nor_write_disable(nor);
 
 	return ret;
 }
@@ -1219,7 +1252,9 @@ static int spi_nor_erase_multi_sectors(struct spi_nor *nor, u64 addr, u32 len)
 	list_for_each_entry_safe(cmd, next, &erase_list, list) {
 		nor->erase_opcode = cmd->opcode;
 		while (cmd->count) {
-			write_enable(nor);
+			ret = spi_nor_write_enable(nor);
+			if (ret)
+				goto destroy_erase_cmd_list;
 
 			ret = spi_nor_erase_sector(nor, addr);
 			if (ret)
@@ -1274,7 +1309,9 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	if (len == mtd->size && !(nor->flags & SNOR_F_NO_OP_CHIP_ERASE)) {
 		unsigned long timeout;
 
-		write_enable(nor);
+		ret = spi_nor_write_enable(nor);
+		if (ret)
+			goto erase_err;
 
 		if (erase_chip(nor)) {
 			ret = -EIO;
@@ -1302,7 +1339,9 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	/* "sector"-at-a-time erase */
 	} else if (spi_nor_has_uniform_erase(nor)) {
 		while (len) {
-			write_enable(nor);
+			ret = spi_nor_write_enable(nor);
+			if (ret)
+				goto erase_err;
 
 			ret = spi_nor_erase_sector(nor, addr);
 			if (ret)
@@ -1323,7 +1362,7 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 			goto erase_err;
 	}
 
-	write_disable(nor);
+	ret = spi_nor_write_disable(nor);
 
 erase_err:
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_ERASE);
@@ -1336,7 +1375,10 @@ static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
 {
 	int ret;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
 	ret = write_sr(nor, status_new);
 	if (ret)
 		return ret;
@@ -1681,7 +1723,9 @@ static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
 {
 	int ret;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	if (nor->spimem) {
 		struct spi_mem_op op =
@@ -1733,7 +1777,9 @@ static int macronix_quad_enable(struct spi_nor *nor)
 	if (nor->bouncebuf[0] & SR_QUAD_EN_MX)
 		return 0;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	write_sr(nor, nor->bouncebuf[0] | SR_QUAD_EN_MX);
 
@@ -1936,7 +1982,9 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 	/* Update the Quad Enable bit. */
 	*sr2 |= SR2_QUAD_EN_BIT7;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	ret = spi_nor_write_sr2(nor, sr2);
 	if (ret < 0) {
@@ -1978,7 +2026,9 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	ret = write_sr(nor, nor->bouncebuf[0] & ~mask);
 	if (ret) {
@@ -2601,7 +2651,9 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 	if (ret)
 		return ret;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		goto unlock_and_unprep;
 
 	nor->sst_write_second = false;
 
@@ -2640,14 +2692,19 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 	}
 	nor->sst_write_second = false;
 
-	write_disable(nor);
+	ret = spi_nor_write_disable(nor);
+	if (ret)
+		goto sst_write_err;
+
 	ret = spi_nor_wait_till_ready(nor);
 	if (ret)
 		goto sst_write_err;
 
 	/* Write out trailing byte if it exists. */
 	if (actual != len) {
-		write_enable(nor);
+		ret = spi_nor_write_enable(nor);
+		if (ret)
+			goto sst_write_err;
 
 		nor->program_opcode = SPINOR_OP_BP;
 		ret = spi_nor_write_data(nor, to, 1, buf + actual);
@@ -2658,11 +2715,16 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 		ret = spi_nor_wait_till_ready(nor);
 		if (ret)
 			goto sst_write_err;
-		write_disable(nor);
+
+		ret = spi_nor_write_disable(nor);
+		if (ret)
+			goto sst_write_err;
+
 		actual += 1;
 	}
 sst_write_err:
 	*retlen += actual;
+unlock_and_unprep:
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_WRITE);
 	return ret;
 }
@@ -2710,7 +2772,10 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 
 		addr = spi_nor_convert_addr(nor, addr);
 
-		write_enable(nor);
+		ret = spi_nor_write_enable(nor);
+		if (ret)
+			goto write_err;
+
 		ret = spi_nor_write_data(nor, addr, page_remain, buf + i);
 		if (ret < 0)
 			goto write_err;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD71FAF938
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyvbCfJuxz9L6EFx7IK6gTJxiGzWnY5XhTrjlSmYfYU=; b=bSsrqfInxxKjMS
	rKPqhALd1lKvgt3SR41eAZFxsEc5XA9osNOG7kOIdbuv2vefJ8jWKazSzlJJjw52LKzulaQgIjX3P
	1Y4BxOWO3EEOwwrk+LevulbNmhR5MmSj+qjfD0I5vj92FVhhivYxlXDHeiBGyh6hYxlg/bdqvSd3r
	ZK1LPPbVTdUZcuTWk5QfwcGxoNMlTY7as4M1ccYi+EHMPEqLMP3aW0fazTZhJ4PrH+/bhi0Qc9WCA
	1Db1pZPLKJYm5tVuN6FX74iR6dm/Wd7kVv+zmanzXyGy18INrvvYHqpvDsk42KX/HyGFv+IwKXuu4
	1ZTTLgRIwntO6iQgZzkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7z8F-0001rJ-RR; Wed, 11 Sep 2019 09:41:47 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7S-0001WD-SN; Wed, 11 Sep 2019 09:41:03 +0000
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
IronPort-SDR: MbZUON8aTBqIOGSr69/66LRry1+66cgkupomTe9eoVSN4K1kQtMIlKZXR041Ip9DNibs4Ly7D8
 ewUujS2bhSDZmc50T3ovvmKPv4pp0uNP1LMBl8RZnznNSrpO1FJZG0F5ohvbI0rvxbUDJdleCF
 wy+G2QTTas1qL/TFlspVTCjSSQAWtAD8/dPEoPzBDPoytj/Kyqgn+rplatvywGDTy0O6ERiqew
 D8ixdb+TvKff97EV1pU+xWJozogEOkPXN9r63r0lQh5HxZbjZlk9KLXckbVMov5PyZQFHQCLgo
 Sck=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="45738608"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:40:54 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:40:53 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 11 Sep 2019 02:40:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IicN16Aa08BiWzYWGxAjpddykh55cJRJzOX+QWf4dgZXdhCEYygHyJREEQYaFGsN2AOGPt0kuTRIPch3JQuLYxBVOSkzeSchUvYjQ6ffAXGF9WI2RKyk9tOP5oWRS77FEqKwjpkMVLhtEDNbd5/qymWjtawhqfdBL5WbyedvVmyh+IGkhynrzbq+SPUPYc8cxGBgYG56fjslAi827N7A+DxXDk4V13UIFIF6Z957rf9+VjN8Qti0hC/5qtbAwkRuMr7DmlqQXRwgC05vmsxrYteor44JsgK6dko1XmwMue0VZ5ipizPUFcOKoEu3+A3Mf62/HqLuUpzlEiDoyUVNeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VbNpdehhnJW3TwTav6Q71eojQq1CCJxkcp3qm/eB/Bw=;
 b=Vd/lPWmJm5RBl3FBShl1IW2wR0+74m3u1tc9XqWHBZTTcQ+nMOFojcjDs6arJNaT0SLpqI7Q39KxxWAhgZSAsVHRcMtqln+IBjzCW7AxzmAfgrDlri6wHrpu7uXeRLsmEMBhll6B9TeTtta1txn1YZPPDhSC5IWg4yn1vqEIiSzIVfR75GfbkLgzGpLX5Njg4XFMZIopy1LkmKIUfAkyph8VuES5jjtce1Zs1DPFhqVtf58bLBNz803gjVteidK6miDctcRB8GAIgEoyCfn4/VHG9QzdnRhxTOi+YjnzmNWVHhzLjEBHTyQWbuS/0ie7f6w/nd7qgasJaky10HEzHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VbNpdehhnJW3TwTav6Q71eojQq1CCJxkcp3qm/eB/Bw=;
 b=EM0ynX050A0BrebeC475q8Cp+Crp8WHR20DXds6RCyx5x5LeYHiW+SGUzuVB4z/GY1kNkY/O9K1oYPwk40AnLc1J7RyLBPI7GORn2Yoo6DdrOaSgYOCgRrWbeNjWZ8Q1HcebHl9XDnEKCqh7yFtd4tdupPuiFxRActejbBLn5ZA=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:40:50 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:40:49 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 02/13] mtd: spi-nor: Introduce 'struct spi_nor_controller_ops'
Thread-Topic: [PATCH 02/13] mtd: spi-nor: Introduce 'struct
 spi_nor_controller_ops'
Thread-Index: AQHVaIT+BtnXKNGGeUimeKQdO6Oh8w==
Date: Wed, 11 Sep 2019 09:40:49 +0000
Message-ID: <20190911094031.17615-3-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 8b08cd8c-1943-4fa3-747a-08d7369c2106
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB44017C53EDCD0B621F492734F0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(1076003)(53936002)(6512007)(102836004)(478600001)(14444005)(256004)(53946003)(36756003)(26005)(25786009)(4326008)(5660300002)(30864003)(186003)(2616005)(476003)(11346002)(446003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(76176011)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003)(559001)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SIdl6UMF10Py6JPaYW5F+aBjjhhU/MAW9H36jhvwPtnXSrTtfHpmj7hdO0E1QYM7S7g8hOJBhO2jPIg4+oznYxloR+6to/9vj8AOsU2WVnYRY2CS/QZkYatavLuZy5sT2ANemS4afvQHvBVCl9fsfwkCLY2/WNtqGH1hs/nKqL9TlUZf9n6LcRuCUISpo435y/LdVBac5O8xkBTf286ZEKwCjNFI4vfAKQfWjGoYkE+xMwV7ZwB2hkdQC1hSKxRk5i5EfR+40jLsENx7EOe1S/VBkgEX00TH8nUCZEH0OVyy44DdYjOAoAW7s3Rv2PSpK3Wm4rThcMFb+1lNlwYRuuGgnYuJ9E2zhkWuDEEni6pMtRsQtv786kCLM8mkP7s8CKXSMHCMe9bKJmVuw0fHkKjvx6QICtqBwv5IaaK0c4A=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b08cd8c-1943-4fa3-747a-08d7369c2106
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:40:49.7671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6nqkr1AZCRyZHISH3p9RJE8lJVVd9vmb+g8gBRTn6+n2bc/wKbUaEpbCd5XSb88UMgaFU7rTpw+hXOxwEmKPoDiBIMG9svL+U4FYkts8ZwY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024059_205341_D93C5FDD 
X-CRM114-Status: GOOD (  10.33  )
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
 drivers/mtd/spi-nor/spi-nor.c         | 75 ++++++++++++++++++++---------------
 include/linux/mtd/spi-nor.h           | 51 ++++++++++++++----------
 8 files changed, 166 insertions(+), 116 deletions(-)

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
index 1d8621d43160..2115886f4db3 100644
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
@@ -880,8 +888,8 @@ static int spi_nor_lock_and_prep(struct spi_nor *nor, enum spi_nor_ops ops)
 
 	mutex_lock(&nor->lock);
 
-	if (nor->prepare) {
-		ret = nor->prepare(nor, ops);
+	if (nor->controller_ops->prepare) {
+		ret = nor->controller_ops->prepare(nor, ops);
 		if (ret) {
 			dev_err(nor->dev, "failed in the preparation.\n");
 			mutex_unlock(&nor->lock);
@@ -893,8 +901,8 @@ static int spi_nor_lock_and_prep(struct spi_nor *nor, enum spi_nor_ops ops)
 
 static void spi_nor_unlock_and_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
 {
-	if (nor->unprepare)
-		nor->unprepare(nor, ops);
+	if (nor->controller_ops->unprepare)
+		nor->controller_ops->unprepare(nor, ops);
 	mutex_unlock(&nor->lock);
 }
 
@@ -935,8 +943,8 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
 
 	addr = spi_nor_convert_addr(nor, addr);
 
-	if (nor->erase)
-		return nor->erase(nor, addr);
+	if (nor->controller_ops->erase)
+		return nor->controller_ops->erase(nor, addr);
 
 	if (nor->spimem) {
 		struct spi_mem_op op =
@@ -957,8 +965,8 @@ static int spi_nor_erase_sector(struct spi_nor *nor, u32 addr)
 		addr >>= 8;
 	}
 
-	return nor->write_reg(nor, nor->erase_opcode, nor->bouncebuf,
-			      nor->addr_width);
+	return nor->controller_ops->write_reg(nor, nor->erase_opcode,
+					      nor->bouncebuf, nor->addr_width);
 }
 
 /**
@@ -1678,7 +1686,8 @@ static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
 
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		ret = nor->write_reg(nor, SPINOR_OP_WRSR, sr_cr, 2);
+		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR,
+						     sr_cr, 2);
 	}
 
 	if (ret < 0) {
@@ -1873,7 +1882,7 @@ static int spi_nor_write_sr2(struct spi_nor *nor, u8 *sr2)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->write_reg(nor, SPINOR_OP_WRSR2, sr2, 1);
+	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRSR2, sr2, 1);
 }
 
 static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
@@ -1888,7 +1897,7 @@ static int spi_nor_read_sr2(struct spi_nor *nor, u8 *sr2)
 		return spi_mem_exec_op(nor->spimem, &op);
 	}
 
-	return nor->read_reg(nor, SPINOR_OP_RDSR2, sr2, 1);
+	return nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR2, sr2, 1);
 }
 
 /**
@@ -2520,8 +2529,8 @@ static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
 
 		tmp = spi_mem_exec_op(nor->spimem, &op);
 	} else {
-		tmp = nor->read_reg(nor, SPINOR_OP_RDID, id,
-				    SPI_NOR_MAX_ID_LEN);
+		tmp = nor->controller_ops->read_reg(nor, SPINOR_OP_RDID, id,
+						    SPI_NOR_MAX_ID_LEN);
 	}
 	if (tmp < 0) {
 		dev_err(nor->dev, "error %d reading JEDEC ID\n", tmp);
@@ -2722,9 +2731,11 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
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

Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3E2AF95C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dp+meKgTUZUvFyrZ6klLdF3dElhJsINO6wfQ/0egeYU=; b=YPZiB/bNajqeP3
	21GrcTzjD8NIF9sLUYJOGkcpzFv14ciOdDvM5yA9WJxtLBMnQaMykQrd+01LKM4OtmmE5LsUA6lW6
	SvgVGGltrEg954g0D4Izs9dGe+PgOyr9NgHhSrPZG4wrKSVkm94gBVrOuretPtiZrdVx+IAw9R2Me
	mclgsI703jbVcDGEo2LexhT6+DIhOIbX5uQ8oL7V8FPqmUhpEsK4sgRBJZn2l2wbu7iQf6B+u6abC
	o0GXlHrY8MFbaPnxd/5xIkjXcTOfnK97JSB7dr1RSMcyKtkads5TSlrSPEo8wUDbu9zbXwxkmRcy/
	gK/q7EUOuRweHDDGCg9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zD5-0007JU-RF; Wed, 11 Sep 2019 09:46:47 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7m-0001kc-9L; Wed, 11 Sep 2019 09:41:20 +0000
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
IronPort-SDR: mspY+QaH704xYjKG6xBIKMnksc2MRF2LjnnT6tFKBgfTRxampQHwhNCht3RLoYJbrKoZ9KcBry
 utahC24rzXvqDY6imdhLBKO7oMUEAH9DzZd6d9zv1kQ/Amnmg4W3ZqlfHtNDZ3xihB6tzzmNNw
 /jFaKGykK7OIz6bsVQWX5shmKKcjwhAmCYA091gIpprHOZ+HRr0LVJVj6DoZxk+a2DKwFOsHs1
 73fJI2W70Fwoos7xzHQvyGZKH/fNrvneteQl6jPedX6OTSpmewQkDN+6qgDXrMyNZ1NsYulLke
 VgU=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="47528517"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:41:17 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:41:13 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 02:41:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RbAXR+AMULkA1SZZfQxOav8X9DtpIAnRJsfNtnTb9iph2f3PSr7NW8v5ZIveaau0m0GilsgajdDyjg9J24XwNTq9yVWPL0GXG5shkkvKzB5K4+9mU/0E7o2S9xh2S38N+UVVHFouXFk3/S4nuEDwKK0FkBGZTASd3QIuKrXsqynLfbIfljf3otfmX+ZJAHLKstpd1GlEB34fWA4mSTDpeaJiW36QrzXXlnA5FZ0bTPKpLXckawuQ2I+8qYSepydNej4H81XWp1z9lwPH6HdGLJZPcFE0Jo+Dcx0jMSWqyg0PNaWHuBb5203Yy8WRlWs500cTyao5g35rW9IRlcdFMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WwTY72ZCq8a2pdYuUoMe+gZVZy2GpDB6Xwh8u8YX09c=;
 b=h32lPHKCVlq+Eg0UnpPPrSVNpPhG0yS6lbKUEomRCA7eCP0vRxZcPPXYnKaAkP9T6HYiTKTcGCO01zy9kF4M2s607IlnMHZTfDbwQJTdW0xvm3x6HIe69KcKl4Cg36fGuPzhDg5lwN6BucMdJkNf3U1n62Rr20cQ1j9Pkat7DNTyj/3LAk6TOXTxhb3CofRXurTESxE4OWLUKPfB1U2dCn86xvdmm+fZMWWPAocRyPEB9IFLQNdN+lplnhbWLfBfo2Kvdw/vG3FkoNBc6nAGltYhJg/FxOzPk2uI+biZtqXZFqFXSrEmQiipgMrXM0EJG1fwbgiRUvcH9IibEB68sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WwTY72ZCq8a2pdYuUoMe+gZVZy2GpDB6Xwh8u8YX09c=;
 b=teSaxRkrq5BVPymhTT17b40gOvpkd8GHdWY9sIdIs7DA2fUN9gmSL27C8GbMv7kofw/qahyiNCa1FSyGKFjc+vQ0rZ2b7AyzeoaxPKMfB/ublnVHAO5IWHaxc/m+ftKQHQKrYicoW83QLCw526Nx9PFwkAnk8eGSM86xqIGaATw=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:41:11 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:41:11 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 08/13] mtd: spi-nor: Rework write_enable/disable()
Thread-Topic: [PATCH 08/13] mtd: spi-nor: Rework write_enable/disable()
Thread-Index: AQHVaIULTirVZDuLFU+EHxmduLSdgw==
Date: Wed, 11 Sep 2019 09:41:10 +0000
Message-ID: <20190911094031.17615-9-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 0b288a48-d862-40c3-d38a-08d7369c2daf
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB440156DE99AA2BA282456D5DF0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(1076003)(53936002)(6512007)(102836004)(478600001)(14444005)(256004)(36756003)(26005)(25786009)(4326008)(5660300002)(186003)(2616005)(476003)(11346002)(446003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(76176011)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Riar+W3a90XTEAV8mjGthpaeme+5kRdKtX5gs0n3lcDkqXxaWtRtStGBhSJdikcrEs68nXTIpYpuagde9joiPKuJVdm8rcOL5UWRvC/4oLwrcJcRxR7eyvmHISN2QFmIXs+uv2HzdnpodFgoJHJ7YyCxDLaIq+d5cX1a/QqUUWfizsMrMmWC2QaUwWx2lnKcADUim01rQBEF/iEhVtMAdlO4qVn5RArZeDP+lwjA+kVzXL7m17Y0aAyGuILNn0JXZljFULz/qw2wzre3XmveHIiyMbAYUJ3K8ea9RV8WFyn5caBeuLrCfwboVZ5tkbmfJjrJiMSUdeo6hxpblYtDqtoDmOymAnE9qVP8a+x9mkx9tR4eSO4+kivppKbsssakPGRkrHm5YoHnPu8Qx51i/q7yyYCH06c3meRDVTnkCoQ=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b288a48-d862-40c3-d38a-08d7369c2daf
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:41:10.8398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2x/VHdEoemnsYZSnyJWOcWtNMkX2OcTAIoIvoT57s8keXFl/Wc8lrtZXl3m4ITVD9FB40vVlwuKXMVXlIIMBBmK1lXYmGTcxDdfMWm0pTJw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024119_305576_DEC45C4C 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
 drivers/mtd/spi-nor/spi-nor.c | 177 ++++++++++++++++++++++++++++--------------
 1 file changed, 120 insertions(+), 57 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index cba84759a38e..781564c9ec2f 100644
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
@@ -1220,7 +1253,9 @@ static int spi_nor_erase_multi_sectors(struct spi_nor *nor, u64 addr, u32 len)
 	list_for_each_entry_safe(cmd, next, &erase_list, list) {
 		nor->erase_opcode = cmd->opcode;
 		while (cmd->count) {
-			write_enable(nor);
+			ret = spi_nor_write_enable(nor);
+			if (ret)
+				goto destroy_erase_cmd_list;
 
 			ret = spi_nor_erase_sector(nor, addr);
 			if (ret)
@@ -1275,7 +1310,9 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	if (len == mtd->size && !(nor->flags & SNOR_F_NO_OP_CHIP_ERASE)) {
 		unsigned long timeout;
 
-		write_enable(nor);
+		ret = spi_nor_write_enable(nor);
+		if (ret)
+			goto erase_err;
 
 		if (erase_chip(nor)) {
 			ret = -EIO;
@@ -1303,7 +1340,9 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	/* "sector"-at-a-time erase */
 	} else if (spi_nor_has_uniform_erase(nor)) {
 		while (len) {
-			write_enable(nor);
+			ret = spi_nor_write_enable(nor);
+			if (ret)
+				goto erase_err;
 
 			ret = spi_nor_erase_sector(nor, addr);
 			if (ret)
@@ -1324,7 +1363,7 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 			goto erase_err;
 	}
 
-	write_disable(nor);
+	ret = spi_nor_write_disable(nor);
 
 erase_err:
 	spi_nor_unlock_and_unprep(nor, SPI_NOR_OPS_ERASE);
@@ -1337,7 +1376,10 @@ static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
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
@@ -1682,7 +1724,9 @@ static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
 {
 	int ret;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	if (nor->spimem) {
 		struct spi_mem_op op =
@@ -1734,7 +1778,9 @@ static int macronix_quad_enable(struct spi_nor *nor)
 	if (nor->bouncebuf[0] & SR_QUAD_EN_MX)
 		return 0;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	write_sr(nor, nor->bouncebuf[0] | SR_QUAD_EN_MX);
 
@@ -1937,7 +1983,9 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 	/* Update the Quad Enable bit. */
 	*sr2 |= SR2_QUAD_EN_BIT7;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	ret = spi_nor_write_sr2(nor, sr2);
 	if (ret < 0) {
@@ -1979,7 +2027,9 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
 	if (ret)
 		return ret;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
 
 	ret = write_sr(nor, nor->bouncebuf[0] & ~mask);
 	if (ret) {
@@ -2593,7 +2643,7 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 		size_t *retlen, const u_char *buf)
 {
 	struct spi_nor *nor = mtd_to_spi_nor(mtd);
-	size_t actual;
+	size_t actual = to % 2;
 	int ret;
 
 	dev_dbg(nor->dev, "to 0x%08x, len %zd\n", (u32)to, len);
@@ -2602,11 +2652,12 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
 	if (ret)
 		return ret;
 
-	write_enable(nor);
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		goto sst_write_err;
 
 	nor->sst_write_second = false;
 
-	actual = to % 2;
 	/* Start write from odd address. */
 	if (actual) {
 		nor->program_opcode = SPINOR_OP_BP;
@@ -2641,14 +2692,19 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
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
@@ -2659,7 +2715,11 @@ static int sst_write(struct mtd_info *mtd, loff_t to, size_t len,
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
@@ -2711,7 +2771,10 @@ static int spi_nor_write(struct mtd_info *mtd, loff_t to, size_t len,
 
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

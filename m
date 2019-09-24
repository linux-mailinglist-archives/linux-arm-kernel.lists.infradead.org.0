Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF3ABC35C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Ei6CfhAhCViFIIwfDYN0AeIMaV2h4cFgL5s5rfKqD8=; b=QpLS1YPpu1wGav
	ZwAt+s9L6yERasD7/4g4VB8J6oZ1Dun0Pnm8IWFk67OEGE3OflHNFKCfP4N27UJGZBXYWTxBadQtO
	JhBpRnu4xloq8lW5TKB8nQ3ifINhk9b62MczOUnHzBrbfuRkdNqcjoluHnA3OFXvlcAWdMOtizD6R
	YkDuOX1sitdb9o+lDqhiL4CjwHuloMPG4ZjJ8mUoZvQ70i0hJuZ0/hkbz3g2wobgWz4eTJE9U0EXm
	kER61A8yLlBezfyVn3Qwuf7c7Pb01ugOG89fNymTQWZPVFX3Ef7t0S70EJvgp4m7vt4JdiMKfJigG
	nbLVwSn+vrXRiHCABq0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfbM-0000WM-Jk; Tue, 24 Sep 2019 07:51:12 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfWf-00045e-M8; Tue, 24 Sep 2019 07:46:27 +0000
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
IronPort-SDR: SmJ7QpKXKNvXLJ9o4t8LPt6SIgJ8+1S9zxOrYs6nYmIKgjYGL6YZj3MSxsh4b+22EJ4drTQGsq
 ahWjH5ePFS9sAAD+uGkRi9+Yn69xOW2/QUgJ5hOxwihJC4P4lRA5WhGMllmGIODYCIdY6uXzQ8
 F3VTWKGHePxDPhTU/nkQub9lqwBfpYZGgt9OCk6HgE6cAukFlu9ucthzVFGRBkBaylbgM7pVg1
 FjJzCN6ibjxZDJ6ybp1nhmJBX4Fs3hGt/aEAR87g2l0pjfMYWvmiCfuL5nRxJJ88f1T+39RbCk
 O6Y=
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="47374699"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Sep 2019 00:46:17 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Sep 2019 00:46:17 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 24 Sep 2019 00:46:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/YHaJsv9BgcKRfyhi+NRJ+mJfB73CVXdovnk2Jo6UqzeqRg5wvuUI/tFwDiDA+hqnc5wLuclvij/8yXqRheC0CGHKsza/XofPmQbjp4HilCxyz5Zk7MOfZbwtxMgQKtHL4gf7DNoG+6GrkVtl+KvTaEFUUMB29HskGy69i/Lzy38niG/uRRGTkbpZf10TQwy8gYHdEPlEafe90Rge2E97f4RtoodDBm3MrhDrEj06EYXJBepfmennAq+FccGh0eXSbSg2pb7GNwLLTEGKoveDRTxGqtbUnL3OWv7Fty2810aV2OTQgJ58aENdjeyMHE/JqcbZeGCQPpqBbSWfiq7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lt+/x8ztRSfWQuFlmFcR6/hiuUecNx96GLlhrSAHw10=;
 b=DLgsuaUY3gli0F5JI97Eglnb6dbOLU4BfIuW6Za8crBWWIK57WUhUyqJ9/hpLaKj1IBLrLcbv3Z1w6Tc1Ux4adPKpW8zOiyctAfhJGpGmw5YtLlOf/uTZDAzYi0CdoLGYvFhaaRbZ4d/GFweFz23o+Old/NS1tID5/kg7uDwIgyH8jbrLUA3axu0sPr7se0QKl5jcbrNUeun9InyTQaU4KqD8QZqlalLy0B7s7b7hOF4EAucrZFFobSeD85Wpvbk51er/nH2fGUYExQAPk6ixgzbpS89zL4x43XVO2s5nJPTdNdI5Ez5PlQWL/1+uMmB8fdW4Hh2dXpw2gdVSrAjtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lt+/x8ztRSfWQuFlmFcR6/hiuUecNx96GLlhrSAHw10=;
 b=IxCi1FHneS83VvR3UMEKgimlKADEmdbZRW6cs0nhOFUb1e6oe3kx1TPmqGSkemu9HpR6suLJC3b3ZIq4VgVvt7Fx+osFLb6nwJWqAea3BuN0vVYwmJuGLqUz9Zf7kkWzI2D4X87TBnVmgi0+mAE3nbIb1E4DG7WDcMp76cetGvI=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4319.namprd11.prod.outlook.com (52.135.39.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 07:46:15 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:46:15 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <linux-mtd@lists.infradead.org>,
 <geert+renesas@glider.be>, <jonas@norrbonn.se>
Subject: [PATCH v2 07/22] mtd: spi-nor: Rework read_cr()
Thread-Topic: [PATCH v2 07/22] mtd: spi-nor: Rework read_cr()
Thread-Index: AQHVcqwkoFUxWLkRu0iDJL3vrdDzDw==
Date: Tue, 24 Sep 2019 07:46:15 +0000
Message-ID: <20190924074533.6618-8-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 0cc4227d-cdf4-40bb-2971-08d740c34709
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4319; 
x-ms-traffictypediagnostic: MN2PR11MB4319:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB431995FF65646A27A76E2184F0840@MN2PR11MB4319.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(346002)(39860400002)(376002)(189003)(199004)(5660300002)(2201001)(6436002)(256004)(86362001)(11346002)(14454004)(476003)(2501003)(305945005)(186003)(2616005)(26005)(386003)(102836004)(6506007)(25786009)(6486002)(8936002)(81156014)(2906002)(3846002)(81166006)(107886003)(7736002)(8676002)(6512007)(486006)(36756003)(52116002)(71200400001)(71190400001)(50226002)(446003)(66446008)(76176011)(99286004)(66946007)(4326008)(66476007)(64756008)(66556008)(6116002)(54906003)(110136005)(66066001)(316002)(1076003)(7416002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4319;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pt8dMB7mTFISVOB7/XeQCU5ors90JVH/auMWjxACLwgDJ9Pmh7Jdaj/4vZweafQWgpHkpGt9MTQVJUhO/rrhjCOW/TwulI1JfhbMSpwHLQmtGhKhUpGoDdPjrDqDDGfNuWNCFOiSKYmJyCxEpVeeqwLlIWxDrYsjFo0tqhzqULxq0lkjRmVPpQMQvMlt1J/6nYqZP9ckFhWp5XGXO/dU7vrWA4lJo4tTHuHfVRMSn1gjaK4VlKAFRPJSqZCF2bN/mHjpvJp8H7Rk/aelZsILXMgKgK4/hHtxQm7fDb82Auuo7PK4HT1y+rvMMJfxxETrrS+d8bfTm8v/+xNHooI11mw+hIH8wF0L1v9eO4/772kpC5RFHi10J0iP+VokJONsqcP45nz2bdvvWZI4zZ9heAlDd39B0cm9xNLvhiGYpbk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cc4227d-cdf4-40bb-2971-08d740c34709
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:46:15.4195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VWYC4KeFz7b9ycKyvlD/F9Ojw/nbty1Q2I3klGQnsa4wkw4AmL57qEK34I0CFQJB2LsMyQyGjwxSgjFvcw9sfXNScopQO788+604VoIZeWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004621_771661_9EF5DBBE 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
index 8cd1cadcb8b1..0fb124bd2e77 100644
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
+ * @cr:		buffer where the value of the Configuration Register
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
@@ -1768,7 +1769,8 @@ static int macronix_quad_enable(struct spi_nor *nor)
  * some very old and few memories don't support this instruction. If a pull-up
  * resistor is present on the MISO/IO1 line, we might still be able to pass the
  * "read back" test because the QSPI memory doesn't recognize the command,
- * so leaves the MISO/IO1 line state unchanged, hence read_cr() returns 0xFF.
+ * so leaves the MISO/IO1 line state unchanged, hence spi_nor_read_cr(nor, cr)
+ * gets the 0xFF value.
  *
  * bit 1 of the Configuration Register is the QE bit for Spansion like QSPI
  * memories.
@@ -1787,8 +1789,11 @@ static int spansion_quad_enable(struct spi_nor *nor)
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
@@ -1839,21 +1844,18 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
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
@@ -1865,8 +1867,11 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
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
@@ -2007,20 +2012,15 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
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

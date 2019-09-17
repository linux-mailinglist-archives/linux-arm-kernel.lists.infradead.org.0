Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F76B526A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXU7M1r79XUy7h5ymjT6zOJyNRbG8CEsLcoJme+e4FQ=; b=GKHyqsWfZsSSC2
	07+PIBVovaRk1HW3tJxsnsc6cFV/lokcjKoEmxsfbyKWbXT7ELSLoVY2fRciqbJcoUGKh0fyRGhEr
	Z/qZ1esxDM9G21R7ZqDtoM2B1VpHNvOcr6VpahKEUGcoCTOplDAJ4QjLYCFiops7Jfvh3ieNmvDmi
	fTBzkkqqdsva83vZN78XkPRXmNiMdlfU5qeFqlRceFnDWg9AmIU5FcGdNBPQ5Lr8knTrQAShkHRAb
	OT5VN/A8MvcoGgmw+QEvV0ZrN1+UCCiqz9kNIOSXFh6QcxlhQ+08v/tXJ3bm5jIq93UinnO3obzT/
	Zxf8grJt3wR890efF/4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFzl-00029i-0e; Tue, 17 Sep 2019 16:06:25 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFpO-000843-5Z; Tue, 17 Sep 2019 15:55:46 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sbHl35Z7i/YG8H/U1vaP5cCZMmwcbm/UkTS5ps/FmKZ4jP0m37xAAmt8z3l3Y51JNIZqK3jW3R
 BiO+fH/sQEk9XnwoDS4ROreaALs0xPGD3gdbtJiRJAcyuXmBmL4fAzX3QYSm7D0E2Tc6iR4ssF
 +BZrFSswpXdwXNIlluGzl8P4BYTSRwX4m34kmKyiskWYI9b2xYg8nm+vhJZGwxy4Wbh1XqFJoi
 WaTAfWxPcjaIFyWFDhkQgT3glBuDN4sXkyYZQK7Uwnw1yBYctyd855rPP0bX/lCWfWUQosmxfq
 Amg=
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="47827239"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Sep 2019 08:55:40 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Sep 2019 08:55:29 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Sep 2019 08:55:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O5FcwuusetmBOozqzlt+Xg6vFofXX5fahRyy28NRyzkkCa4Yfep+J/Tl+KTDmgmBNmmLMXV3uc8dhR2UrK9KaUWlr/BhuFZr+WrA/RIwY5XVT87UPZnx7wlsJF2W8f2Fmg7IQt5U7ZbJ80UIxTbHW6gqWEOreuL/ML9ktLARwa2Gv293ahRZN9R1Z5hj81C05j9BZJlIFlGXfH+4cERvfz5KBGrQhzAjvBK5I2+wnIUFdlJq6xjHHkPU8oq16nFhsnmN22V5y2Nt+i8piRBVRQAQZPQrjSumNwQqU3v2iPaE6+Ca6gRXcN9xMdRce4QnzRfgd/0bgbM3AXDiGJ7kdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XoyZxRMn/iylWaiKRYPZ681T4fbeFdllCjsUhPi0Vko=;
 b=bTTT9pKb+Hm6iDr6fyW9iQMff610bsW2X6KY6AFMQSpX0NCeRku0hRW9JOdahYI1K+d0GunDu5F/5lxyw/3ry/+EKf8WonzzsGVjyvMIw6QxfPJ+fH3OJ+yQEL4WQvjpTvT9ItEY0XryJSXr3c31K8POGqSIC1bVnMbK36RQfZ0hyHhGRkv47C51JFH77Y2drU9FuVVmMpHsaau6XmNvhmdZ4KNhL216OkzLJNP7EL0s38MFrO7txPLMNRno/qNuqhOS3NqBXi3sCCEwxTpFwzGgHqodQyhwQr4d0hFnSsA3gd+RS/ur6MqufGjNHstFewUzwdqVmoPYyApMxBk2xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XoyZxRMn/iylWaiKRYPZ681T4fbeFdllCjsUhPi0Vko=;
 b=CyUn1s5x5MaFYkqiqBievNsN1eh0Q3rQ39q/A+hdf/uHftu6k7kf+glH/jaKJCo2gKutLa6FQ8cAgIaDUvKFBUlNHmQKcDnik1VB3N8oyuU5nfsVaJPUvOIiQ8JZmDIBSFGL5KTbPo3GWkOY106UxsvMgDh1CPtw8PdH00W16hI=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3984.namprd11.prod.outlook.com (10.255.181.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Tue, 17 Sep 2019 15:55:22 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 15:55:22 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 13/23] mtd: spi-nor: Void return type for
 spi_nor_clear_sr/fsr()
Thread-Topic: [PATCH 13/23] mtd: spi-nor: Void return type for
 spi_nor_clear_sr/fsr()
Thread-Index: AQHVbXBQQBTeia0F606dNDOJ27F+sg==
Date: Tue, 17 Sep 2019 15:55:22 +0000
Message-ID: <20190917155426.7432-14-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 5ce87190-9c56-4d3d-b9d6-08d73b877298
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3984; 
x-ms-traffictypediagnostic: MN2PR11MB3984:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB398449D834A35155DF730360F08F0@MN2PR11MB3984.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(396003)(136003)(39860400002)(376002)(366004)(346002)(199004)(189003)(478600001)(2616005)(64756008)(66476007)(3846002)(6486002)(107886003)(25786009)(6512007)(50226002)(6436002)(305945005)(99286004)(71200400001)(476003)(7416002)(486006)(256004)(66066001)(71190400001)(7736002)(76176011)(102836004)(36756003)(26005)(386003)(66446008)(14454004)(66946007)(1076003)(86362001)(6506007)(186003)(6116002)(5660300002)(66556008)(110136005)(81156014)(81166006)(2501003)(8676002)(54906003)(316002)(4326008)(8936002)(11346002)(2906002)(446003)(52116002)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3984;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +H6JyNqliVshFO2OBCBhUpNZa87LAymlgSwuP+iSX4RTWCVPvTwW61X+HpnqTwLSdh7SVm/Ow1KYOzF4sHYUL8ZYAv/Ho02N+Kh0Roa7l9p9JrFer7yuqew7LRlmenJN2wCNxMR5HeVceeEXyNrUUuHuhUDuJ9mVPDs+58KkPfRrXL2iuN+4QV3gi3Q56T6hZTZ88e3j3n1rUgtOkGYjmAEuOkERLWWsTHO7Ky7brO6t9wkgg0df4eIqA8lvBZAxjAL20R0mfRL/UCgmxOCaurHrdpyWws2v0ZzUdEOWWw3JAhtIds+BBfUSieICbpIP50Y5lAfLgR+UqGwI2kqTUxDO5wQXk1LyQCF7WNZ7Jt9IsS4Hufuv/PIxP3Kb+G6bdcTZdqAC9X3ykUWS0OKLru92BtLloIozSEOJliDI6Jk=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ce87190-9c56-4d3d-b9d6-08d73b877298
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 15:55:22.8688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wpymbBkB7XV9jIirOHlAtEJ1NQmntWDreltwJofuMJ493iw0SGXrwWQDLOXABxJL7Nc6Nr2Y0ZYuaeEGGOrxyfOx9/mTEvPixY9o3oPsCy4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_085544_273173_2D166F3E 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

spi_nor_clear_sr() and spi_nor_clear_fsr() are called just in case
of errors. The callers didn't check their return value. Make them
of type void and print an error in case the operations fail.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 36 ++++++++++++++++++++++++++++++------
 1 file changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index a34614753d7b..62b9298473b4 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -578,8 +578,16 @@ static int s3an_sr_ready(struct spi_nor *nor)
 	return !!(nor->bouncebuf[0] & XSR_RDY);
 }
 
-static int spi_nor_clear_sr(struct spi_nor *nor)
+/**
+ * spi_nor_clear_sr() - Clear the Status Register 1.
+ * @nor:        pointer to 'struct spi_nor'
+ *
+ * Prints error in case the operation fails.
+ */
+static void spi_nor_clear_sr(struct spi_nor *nor)
 {
+	int ret;
+
 	if (nor->spimem) {
 		struct spi_mem_op op =
 			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_CLSR, 1),
@@ -587,10 +595,14 @@ static int spi_nor_clear_sr(struct spi_nor *nor)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_NO_DATA);
 
-		return spi_mem_exec_op(nor->spimem, &op);
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_CLSR,
+						     NULL, 0);
 	}
 
-	return nor->controller_ops->write_reg(nor, SPINOR_OP_CLSR, NULL, 0);
+	if (ret)
+		dev_err(nor->dev, "error %d clearing Status Register 1\n", ret);
 }
 
 static int spi_nor_sr_ready(struct spi_nor *nor)
@@ -614,8 +626,16 @@ static int spi_nor_sr_ready(struct spi_nor *nor)
 	return !(nor->bouncebuf[0] & SR_WIP);
 }
 
-static int spi_nor_clear_fsr(struct spi_nor *nor)
+/**
+ * spi_nor_clear_fsr() - Clear the Flag Status Register.
+ * @nor:        pointer to 'struct spi_nor'
+ *
+ * Prints error in case the operation fails.
+ */
+static void spi_nor_clear_fsr(struct spi_nor *nor)
 {
+	int ret;
+
 	if (nor->spimem) {
 		struct spi_mem_op op =
 			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_CLFSR, 1),
@@ -623,10 +643,14 @@ static int spi_nor_clear_fsr(struct spi_nor *nor)
 				   SPI_MEM_OP_NO_DUMMY,
 				   SPI_MEM_OP_NO_DATA);
 
-		return spi_mem_exec_op(nor->spimem, &op);
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->controller_ops->write_reg(nor, SPINOR_OP_CLFSR,
+						     NULL, 0);
 	}
 
-	return nor->controller_ops->write_reg(nor, SPINOR_OP_CLFSR, NULL, 0);
+	if (ret)
+		dev_err(nor->dev, "error %d clearing FSR\n", ret);
 }
 
 static int spi_nor_fsr_ready(struct spi_nor *nor)
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

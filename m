Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5617BC382
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 09:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ytwhxkkwJS1ozQt8Tm7r8JxQVZ/dervQGMfyjRHvnE=; b=NSi6IQI+MGXx9k
	HZXYDzpvgqxJfyi14lI3YnTM+I1ZLxlKJeEdz/+ws+4BB5Frxh0LcbN5Fit5vbJhXQdN2wZOhJaFf
	IhoyVTK3Ph5/ewadOFW4CDLvYM/Tgogish3S/TzEiDAu7EqxAZY+4VnhET51NhRmR9AfRFEkwbvel
	YNhCMWbN2E9X/ImLCqhckKeeE9XGPplf2AAuWKcTYKLANGnKlF2eLcggv6Wz+FUSNP8lewEjGeIJh
	bNGZMU5qmH7oAcIYii78JKVZCRFjZwThnZ5GEX2PrRkNQOhc6reTs16kGGeOv3pIdybVFHKD5+0Vw
	MO+AudyiZR4v1mW5R/jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCfh8-0006AM-Mg; Tue, 24 Sep 2019 07:57:10 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCfWz-0004Nr-Ki; Tue, 24 Sep 2019 07:46:45 +0000
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
IronPort-SDR: 3/qdkGvTlkkq/zxW1JR1j4JU6HqizKHXuYFzrHbFR/GUEMykVdtIT819RyZSdoLbNw66igp9Ik
 tD4aO/Kp8w8gl7l37bShGeyS+qN3CBEBAZbA/3NN03VSxZVTVvdDWpm5qshqUdi/kc/L063m0h
 6M0elCTHy4MFm15lGYbqvCNey4UkrGs9R/LfNilbHmN1xuR/qRs4EFZyERwUriGY3mHcMyFteX
 /DlTPFjamEtaHcwGc23vJwlCEnVNjyQDN8Nat7N7vfFNO1pvBDheejfdNKpz3LMEcV0pd6fteS
 WuI=
X-IronPort-AV: E=Sophos;i="5.64,543,1559545200"; d="scan'208";a="51606549"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Sep 2019 00:46:40 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Sep 2019 00:46:36 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 24 Sep 2019 00:46:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FafDtyDd0pBeBPor9L+sTirrAZhKU1VDZahdjKSKTLLW7rbIHtaxagqRZZRt5GpuueaDSX9fHKg/3/BNGnRbaAc8XIGV4BSAbOlMMQkY8rt9Q2TZcaCGL3mYYtOoiRJC07wZr2TQ7+Kx4iVm+oi0QTgjre5hb7EjpZ+LgZDL5miRiPsrRvOnh1xYJu1BumjmdIE7gnF5PD99g/7BcHMGD6USQAugA+iHe3fiq2qVXhvJ+OfbQcJj8Rxng9EEzNTRYUwBtb0pCJoRbfSUC4BG97FJ1hCtOQ4nBPen7UIOhSNIawjkyctwEK8JTQWZXIG3FxupInWfvNlUFdVoVWS7qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iDKYtCC4gPQ07dlYYyP+SuMcIWjm4/q3RdRfwBv3b7Q=;
 b=YxUDorfhldeYzqnuZu2DzrIDrly1TU26EMy7hPktgIiZO3Ekm5U4W6jYsIuLJra2dpf2Al3XgszoJPFQNoZsn9scVho61P6s+6ee+eU67Is1GpWF0q87aaeap/qe5KvG+rgMEpko2HCJueynyJ8gzi6QVizs1AWUnemT4ZuC4GrBXZHTL6dg6Lso7vz6zBNiZbpZQFMzXAZ5JypOve7ZGlIZxiZtVKD+kQO6P4Bt3abYF6aU8Qvl1Kk8loNowS9e/O0k0wjVQJksTdt5rPSDgQl0CJ2W1kHOJQmCTHIUuHIxvsTxeS2H7bKJua3ZYrcYN2rfKcbB295zuroJ+JU02w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iDKYtCC4gPQ07dlYYyP+SuMcIWjm4/q3RdRfwBv3b7Q=;
 b=lI71P7A70WcgPXeJ6LTa17bhCKIHQxKNubNeBTIdOH74BbFB5KZWQbnf7J4pcCMcqdG2CdpCDvwNG7in0/2uz96i977vy9Xd7+E1avca7QGmEzv9kUWrDKvCyDLmliFgHgUu8wsqSMEZEbbS0kU1xnkz9UyLzbdjwXaXXpkfu3g=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4319.namprd11.prod.outlook.com (52.135.39.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.26; Tue, 24 Sep 2019 07:46:35 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 07:46:35 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <linux-mtd@lists.infradead.org>,
 <geert+renesas@glider.be>, <jonas@norrbonn.se>
Subject: [PATCH v2 13/22] mtd: spi-nor: Void return type for
 spi_nor_clear_sr/fsr()
Thread-Topic: [PATCH v2 13/22] mtd: spi-nor: Void return type for
 spi_nor_clear_sr/fsr()
Thread-Index: AQHVcqwwEs2qvzuVekimP1eUv/eeog==
Date: Tue, 24 Sep 2019 07:46:34 +0000
Message-ID: <20190924074533.6618-14-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: 1c5b8d65-9f3b-4985-66fe-08d740c352cc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB4319; 
x-ms-traffictypediagnostic: MN2PR11MB4319:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4319A0C91234046085114BECF0840@MN2PR11MB4319.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(366004)(396003)(136003)(346002)(39860400002)(376002)(189003)(199004)(5660300002)(2201001)(6436002)(256004)(86362001)(11346002)(14454004)(476003)(2501003)(305945005)(186003)(2616005)(26005)(386003)(102836004)(6506007)(25786009)(6486002)(8936002)(81156014)(2906002)(3846002)(81166006)(107886003)(7736002)(8676002)(6512007)(486006)(36756003)(52116002)(71200400001)(71190400001)(50226002)(446003)(66446008)(76176011)(99286004)(66946007)(4326008)(66476007)(64756008)(66556008)(6116002)(54906003)(110136005)(66066001)(316002)(1076003)(7416002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4319;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bdmNIR6P29KM24AWGH8ibYM9npWndWbjp6zkJ/RxTcVYUeWWy4ntRAFwnPohRVnzKzgZwsqBDHNX6+nM5X2WEuUwGnnNFJBXP3ZxaggdHPO+unwNvP1ElZrKJXhjil0hAe4dGbQ1Uu8UwGzin6w/LS016GiFT085VCBZdoCJvcpsPPApyR8P6zc4tHFFbqGhpvfsWvytLR+c6gBbLYvTQR2i9YnuqatCiQR6+/KKJIaFk50Y4+3V5HERkMPExgR2uemFrKSEsZ+1J34kRkyGm5ovvRr5OPOLYxe1XXk0w1wyP8sp2uOSisSSZoPDkZEjW/cH4OYCULvJml2hoeWeTtn8F1R9GxLACfr7RsjgTXnHSaB/jEBpAoh4WSyIjlAIPRVmTg7M2dWA91rsUyQS4fqxiTtHvxEZVypJb9xdJhw=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c5b8d65-9f3b-4985-66fe-08d740c352cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 07:46:34.9911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AjDtkIan7VlCvxsaSG4n1o9Bx6x+/wePkqSSCwhOfFjQ2asVoOx68LiMotSKO6PVMfJa97gtLo00RNnPLmQk/L6k9lDCcjmWven40JjKqD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_004641_792113_8145F10C 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

spi_nor_clear_sr() and spi_nor_clear_fsr() are called just in case
of errors. The callers didn't check their return value. Make them
of type void and print an error in case the operations fail.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 36 ++++++++++++++++++++++++++++++------
 1 file changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index b7f86f518331..191a76c3f7bb 100644
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

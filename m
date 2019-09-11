Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC7AAF967
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjG270zByNfZLvWDEAT3jtXYGqXNee5dimDnvU9nhi0=; b=BNfMubS5A7Yica
	iE6CiBtYjQCIjKGN7v/BfSPFEhPFyptdKFc7O7MvMy021C+beBiqgLb8AECHJ89rIyF/1qPYHRmBP
	3VkDfG3vq6n8znxaIb6QVlemtTENyba8fslvYgfZui2w5igm53fCD7V4T+YN2nPPDJgxcMNhTkiE2
	GqaGtL6Vw2pUwfedUiH3yPUqd2iBsXNEE7vYYiLOGGr0vAXD64JQZ8ZqAT2I45dNuMWJ59MH2WSPc
	kG92G9nzIWa/k39BxTIxHnK9EcxJ/GuELIXAR+dVZrTxPArIozRGgqC4bggyHB0LCFRHjO5hBkpsL
	iZETkVqoLhFftHJJvd1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zF1-0000lS-JA; Wed, 11 Sep 2019 09:48:47 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7x-0001rv-2K; Wed, 11 Sep 2019 09:41:30 +0000
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
IronPort-SDR: U8ANgrAmDgl8x19bc/7EBVQgLe5wBZ0U2lCBaV/oXz6BmuDzABls5RtG0Luxvss4rkGMI5p346
 d5CVFpgNLpVBRVJHDI2VcEa5Oi0XER3fnYYi1LoMTrgYx7/qTTN+hQKdIVyj4TRG4tTVtmh2nH
 Xf/2TPc6Fw51A+Ub4FoAWiwgzIYD9hrrtLsmxpMnH4BnBFqakpyH4KyWCeNrrIx7bAz/z8YHA1
 K4uDjjA4HyK5OcLiHEn2DQGVL4aNs2FNyZDLEWYq50sZnfOetOv9apjvPANIaZX2GonuoIHfib
 HJA=
X-IronPort-AV: E=Sophos;i="5.64,493,1559545200"; d="scan'208";a="45738886"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 02:41:28 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 02:41:26 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 02:41:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dn0LttxmRUqTHwOrnC21d7/X+65SW8WfHuSqIDD750UbnwmnlrN026bmAe1QS56L4ALsDuO3uy5goUolC1pD7D0QchzXokG4QLdp8S/x9GWpi0qIY9Y9FGXgBNScaizNfD9ipp2BwVQ45jeLl2aLSbfCkiDIoE+Gityfz6eIBFsYaKTdYnBX23WbiQIZE4y3X6ReCSg+M/GuGjJKtHV4drDbgQqNqfvGHIVhCyzZHLBxRZw2Kz5XDyfvpXs7PWFuYzkP/44NjF/OrhzvgVd3B2pTw+p1IpKRJL5TFuUlGq0QEBuZ/7dmD4mPGBKQxPytlUVgkSZyARPqZo96sb3cXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3IVsHwuCKldN4Sg27kw1kI6WSMFL0Sq/Uz7iJKKN+4=;
 b=ggS+rvAu4y7jzuWTUtnd+SMBnwMSBwd4RspVne7wzxChv/if2qBKSrZeR4+OI8C0ePP4DrKYUoCKD+Fg3ZIavQ+NaVooyPno/6wjco0z4dFftFUuEYld0TXv+Fknr3lkyNTaMVYsP6YtrbQt97ovYfNrxHNO9aeuO91Yt3F65fPhvcuKBARpfEyILSM1hCY7iVHaD91ZB3FhhQz1emHn31rjSY6tO7qlFEbvL4XgIo3TwWPqhPBe4PK2XnAfKLus8HcQEYv8m7D6uhsA16nYYd09Xle4b8AgKsmi7sCnJnl6Ayk/UQemkrcNBURKS77ThRPFgXSZLTMeQExpCaI4VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/3IVsHwuCKldN4Sg27kw1kI6WSMFL0Sq/Uz7iJKKN+4=;
 b=b07G79v3n3iq6Dfbw7GKdWqfHf1ssA1aJc7TQ6eyMNJwNh5OtsKw08wVz12Q5M0hx3Rgr9aULEmyQ2zyLHJVzJpPHuzfhQAMdr7YUp+U+Owu3/7Br6uKw4LPVR7DqifX5EFyMqsD1/TXc20Mof0PHj67jHrtWM8H49I/j0SJxb0=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4401.namprd11.prod.outlook.com (52.132.253.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Wed, 11 Sep 2019 09:41:24 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::4049:4ab3:1825:469b%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 09:41:24 +0000
From: <Tudor.Ambarus@microchip.com>
To: <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <vigneshr@ti.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
 <matthias.bgg@gmail.com>, <vz@mleia.com>, <boris.brezillon@collabora.com>,
 <linux-mtd@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 12/13] mtd: spi-nor: Void return type for
 spi_nor_clear_sr/fsr()
Thread-Topic: [PATCH 12/13] mtd: spi-nor: Void return type for
 spi_nor_clear_sr/fsr()
Thread-Index: AQHVaIUTgVKXNHHkk0+ADbWNDrCulg==
Date: Wed, 11 Sep 2019 09:41:24 +0000
Message-ID: <20190911094031.17615-13-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: cb03ebc4-2cbb-46d6-3639-08d7369c35d5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BY5PR11MB4401; 
x-ms-traffictypediagnostic: BY5PR11MB4401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB440189ACF345E49B3F2B7DEEF0B10@BY5PR11MB4401.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(346002)(396003)(39860400002)(376002)(136003)(366004)(189003)(199004)(1076003)(53936002)(6512007)(102836004)(478600001)(256004)(36756003)(26005)(25786009)(4326008)(5660300002)(186003)(2616005)(476003)(11346002)(446003)(486006)(107886003)(2201001)(305945005)(3846002)(66066001)(71190400001)(14454004)(50226002)(76176011)(110136005)(66946007)(71200400001)(7736002)(66446008)(64756008)(316002)(66556008)(66476007)(99286004)(8676002)(52116002)(8936002)(6116002)(81166006)(7416002)(2501003)(6436002)(386003)(81156014)(6486002)(6506007)(2906002)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4401;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8hdB544sDDHqlVjFrxND1L9ohjQAnwrk/68mnD1MIylMEmz1l5dWjYwgwtfO29oC2S5BZSa+/WjGkPjCbye0Q+ZZr5ii+Klt4sQdQufc2tSsmaTqdr/0sSWsJDtjZfN5ie7lIiXraDJhpgWpmAzCWPXKQejz7RXKn/M44mEWH8oOFiiOZybCaSu2Wz6HS/XgNBvu0jqXtvrCypUt5wzJULIqCiQ1t4ebNhWCGJczPw0RT5e1BvDNISVGht0LsznoHMZQKmewSHclH/AsbKIXEubjsO9n0eguLgrjMTGFtnBWFb/kp8iqlv8R9vvMA2WUKFZz8q7lb6PG2e62yUOPEH+uApJMJ98ewga9vn6XHNGYM8i5sCH981gRxToA5Xf+HIBsEc3QDefQ3bF5Lx+nfHoCBgtFECjDcqyo1SFvWAM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cb03ebc4-2cbb-46d6-3639-08d7369c35d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 09:41:24.5376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jUjVZY30gXphFnaLNzKuPi/uANGRuD1OkUg08cfPS9gHtnP3scvJ/mMPf+Ir6bnUpCeVkRNqJhalE56rGh2lPReEibRWuVQc5sxqy84gVaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024129_237295_B9B5753F 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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

spi_nor_clear_sr() and spi_nor_clear_fsr() are called just in case
of errors. The callers didn't check their return value. Make them
of type void and print an error in case the operations fail.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 36 ++++++++++++++++++++++++++++++------
 1 file changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 0505bf6c197e..e0fbf9c00d24 100644
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

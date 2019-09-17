Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232AFB523A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 18:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7nmN0zaBiZeZj76w51fXaKbCg810EHapgbNCqL6poA=; b=NTVRnjuPKAO4vY
	Cw0vCiJjDVbYs7WBR/TKkmHjgNfBhQkTMlYZAizTjLYhkGONvnC+80etWTyaCd4OALsGdt+iYRNeD
	HEH2Dl/pjCLanH2ajLpKh9ZR9KA12WfKR+8mFnXR1GxK1viAisRi57K8pjqjoChM1A560XKeoh7kI
	pSaGblwR/rcyk2LGXj8pAgjKrxbd6LxRl5NCuyXS+UpHtXWM/YT6zIfJyRsu0ZVOxdOzjJFSvChNC
	mp5DXEDTM7l9Jly4MhySuBKCdsmNstmx9PAVKWEv0cwErCKP83Hqp1KeKPT2HeTn1YwQUlKq5ILE8
	P+9NPCMRbksNGlzAAmyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFu8-0004Da-Lc; Tue, 17 Sep 2019 16:00:36 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFot-0007aH-JP; Tue, 17 Sep 2019 15:55:13 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 3Z57Bu8UTv+Ml8uRNFkSFKX1hOJbiYbcC9uJtvkm4qhqLhO4xWUqq2NZb1P3ys/Qz5sf3QP+KX
 k41AenvOUHy6bIimapLcv4Ddce9/3thuXvS/hAcuZUDISPZM1Ky/DDbH2eoOUbv/OIjhPaeeqz
 VH1EEIfn0m67UnDghK8CTCrbfQwZuYsk0QDbHaFOoCh72uuhg2muFXHwGAfZduqNxGLi061TuQ
 pOM5j78nhxYK25RD+K9zYdOlGbQgK0NkcfMO1En1sfhysbtAyCM9ekOeERXCn0ODH7V/EQY4Ma
 5s0=
X-IronPort-AV: E=Sophos;i="5.64,517,1559545200"; d="scan'208";a="49242944"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Sep 2019 08:55:08 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Sep 2019 08:55:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Sep 2019 08:55:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l3bsKaMteenHBAP4LNvSLkz4cz2HwtfIX80AhnSbRxmisDiTfxNdkZCssAW47nlExeOgfFS4bV0t4u1nKnGE8e8JpW2acF4BFoBjmZrIqPgPvijo9+yP8Fbu5EXU+f24iurTyosoLdwoPfMdVIHLBT3/ts1SntDJGPMDJ/r/T59a2gj8Pter2jl3L3ZkwXzVlMKWnuddmagQjOg0w/uhqCLML2DxrCaLcKLkE3D+uGPN7OaPn5DS2cf7MTKk1kRwqGgXuYLbBqG35x3PTGYpMsXzDK0eBmfsTzrTsTI2iZCUh+Tik/i7zdpxe72acFHHmYd1Ubpza+WBoIqTwrA8QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ah4m8qbOplFVF1mTbFMxOSWfMYHHblFYFN2vdDu33cU=;
 b=amSEE1+uXp57M2LCX4VHlcy9XoSMVdhxObb6tCpC7OPgtrQDXJPQwUNNdfA71DVB1Nkjxj8VIf78ZvROIZYGaF5Oyt9H0TZVjvQKxUQI9JcsW7w6gVxCvtL4Uw+N0YVI2KTmYvniWhoYET1RA8Ktud7t9b3d9NDxErYJme7nMjsCs3vnYhNRM9ha4ispDiXNpvvKlAg9ly1c/9HbviKd7FtyyJgMPHN4LRALRpuKPl6MdmladoX+p+JQWkL6tjVKQG1wG3Vdxs2XyLkAMIYoIN22jiqaECvO3+H41jAoLwWRwucbrfB70S3K/IJ60oAcEsqqo4jL52C1cXgVZus7UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ah4m8qbOplFVF1mTbFMxOSWfMYHHblFYFN2vdDu33cU=;
 b=OWM08L81N9zeI8EdsRMbv45cFk4jWAv13kYYemHfztnqQ73TXEbe72QEZdkGQ5qsAJggp/B+IQ+E0tFIOtHAu6A7xNy45ZUyK4AzA2CDmCxIxyWyx8FX9G+WZP3K4yrHcyCbE3av6Qilsu1svWHsWl+xJL1Pr02QHcRy6Wk5w2o=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3984.namprd11.prod.outlook.com (10.255.181.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Tue, 17 Sep 2019 15:55:00 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c951:b15a:e4b3:30f7%7]) with mapi id 15.20.2263.023; Tue, 17 Sep 2019
 15:55:00 +0000
From: <Tudor.Ambarus@microchip.com>
To: <vigneshr@ti.com>, <boris.brezillon@collabora.com>,
 <marek.vasut@gmail.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH 06/23] mtd: spi-nor: Rework read_fsr()
Thread-Topic: [PATCH 06/23] mtd: spi-nor: Rework read_fsr()
Thread-Index: AQHVbXBCAd7k1V0ru0G6ltE9Ea1m4w==
Date: Tue, 17 Sep 2019 15:55:00 +0000
Message-ID: <20190917155426.7432-7-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: c213c8ff-79c9-4933-2340-08d73b876515
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3984; 
x-ms-traffictypediagnostic: MN2PR11MB3984:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB398400E00C5487EA00631FF3F08F0@MN2PR11MB3984.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(366004)(346002)(199004)(189003)(478600001)(2616005)(64756008)(66476007)(3846002)(6486002)(107886003)(25786009)(6512007)(50226002)(6436002)(305945005)(99286004)(71200400001)(476003)(7416002)(486006)(256004)(66066001)(71190400001)(7736002)(76176011)(102836004)(36756003)(26005)(386003)(66446008)(14454004)(66946007)(1076003)(86362001)(6506007)(186003)(6116002)(5660300002)(66556008)(110136005)(81156014)(81166006)(2501003)(8676002)(54906003)(316002)(4326008)(8936002)(11346002)(2906002)(446003)(52116002)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3984;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zhBot36dsRi5CDM0i+aCqZynPnyv641XjVJPHZBtEQbs0ZROAEONwvwhuFTp/ODLdTdcNENgHpQb0Y+zWbv9gJEkRc1GhuWzNZoDEugEnukt306L7PuvnzM4nFXYvNvBJn8EjifNyH61tzKK6Wzoq5OnbdhJ09+FjBO4xpGZ9qF1fOOStuqA2MRrgAAdCL31uufYmey5JYLR6Gp8pfNY3Bvjlz2J6XYWAUmYWNEVtJTFyCUytd/m+ZJtbG37gyK/4iyQQFomNkWQTP0hMERjm/CTQwRzFCPjJ8aghE8sbEoEqVgxm6iyWMIdvLchB1ggbm0oyIjLqSSD2IFJ+e4z91BSnloKQQboksBdVcwXzmz8Kj+ZgCLSgE4MXP6iKrDylgiIRt8pOtx0uhxUHTPXuIp+ykdp779lI5HF1eYRPjY=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c213c8ff-79c9-4933-2340-08d73b876515
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 15:55:00.2240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eq3Fl2VSq8vBoM2ccD+XHbBG3DJKouDvTs7bnVtM2WLndIMjFqZU9V4MVdus0QhiVb8SEGXRmaellZ1VBcBL/f16OJDI2Dt78WTOp7pt4mc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3984
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_085511_725628_6DCEFD82 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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
index a23783641146..8cd1cadcb8b1 100644
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

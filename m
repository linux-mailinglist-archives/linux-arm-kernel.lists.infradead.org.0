Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B95A184FCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:00:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19733ZMCG2+7TAOW1dnbkRNrN/eAD/iZily9WEAMFnE=; b=WrUWj8/9+d1+2L
	G9p0Dtljvy31dOAWXivIPdc87n7iL8f+uRuhBT/jf/D6NYyaGFH6ZFb37eMhrncCDsZx+hDjDPXzy
	LN6DvuioSImWOfZbdhOgQIjv5agXNJGqUQkjY9LRg/bIlWqHe7rpDBoYdXTV/hJHTijVN0jz+Wi2A
	FJuEN2fVkCinRbLkdgKuh1Kf1QCYgFvtgWM7Xd5gtjH4GsGlZtM3hUjfS0Zp6Yi5iYtrfPJwRNxe/
	mmFXuwboKr2R4X+dhN8oBRku4rNc92wzjOwwl+1ALgbqviViMYZEd2uIJzQxeDvf8Zy5ERgZtK5kD
	CeC6kfIWKYlRFKZ6jlUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqTU-0000NF-6X; Fri, 13 Mar 2020 20:00:04 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqD9-0008U3-U0; Fri, 13 Mar 2020 19:43:16 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: prcf7HuBAqeoGTi5KNcr6TQuAT0XEQUllUjsaYz3O8TSK4OA2nHFEJ0UcsuaSZyFCu4KzEDwSC
 mfChilvYnPu1QroAIuBJ114+8nI5PmOCmoyELJNAp/nY6UyxQZ/D00YuGbrLSR8GNDDJhOaQRr
 76jmGGVy6NFSgQgYvEOM6lz6dBTPeAJhUO3mvglMLsR2io3zL9rda9ACP+4EURgcXY2QEhzEbu
 aDOtyR6UITdF3g92i2bGUou97SW6xougSrUi4L5XE6xwSfGGbBMRpg3XeHFjCI7hWlljOY7vaZ
 K0Y=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="67134850"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:43:00 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:59 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WbsV17+VlZIgsYz03GzHoHviKywQClVAcOXkuu6a+G0QafReKeVyBDJLZrp43Fu+ivkvTV9IBffqxicbr7aPV5j5RbYk2u0sLTdDXoP9fEiZOnPhc2zXkSzhDdl+aWzF0ie52BEF4QsQBv1jMPB6diY3DoBbYb6Amlzq6KLfxHryj4nfu/74vsHwGE0G9PskgcrQK9jpwx3TOPQNT9wYy3FMAZ3Lx7B2pkigkAmrWqJvSKY7/ebRwQrWgTpOQuMV6YxWZ7zhKSECUExai7VKjluJ2n2dCngoRJdtDd5khxEJP8zed45DAIenyxMReukj7TjAiW4kFjeL5hAjSrk2Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k6O3QeEoT7k1Zj/uWsNeVQu3/c9OePivyP1uorclxv0=;
 b=TQOeUjEO4P8bWuRB2OgP3yvvC8c1koyksNciK75QcM861i2AIqpmNJrGwXeoaRnrts++X2gIj5qTFJA8BVqQtFIdOHRWf5WbX0v5M7itx7CyCF1V8lJjPByzF5vhmRSRsJYbtILWT5GRgvhMvH653o52Tux5wdsj3XlzjB56ThErIQQZR6k9MWSkWNDEbXCvzOgxx4xMdKsWSlaqCiibwpHv0GWPWxEmojPSotZpzknlP+IRpa1lkt2feYodWLnUjz/QOt/QE+R1dW0poJO/YPqebjycE68mvtoehkaUJizqg/cJQZBpQrvM2dx207qZ+Bh+MmjkK436llqSp/acsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k6O3QeEoT7k1Zj/uWsNeVQu3/c9OePivyP1uorclxv0=;
 b=OcyUOcbkaidX6MOgOVGCNyh9+yPcpO34+TwMabs9O0W5gyhK5b6O2yd5s1yvjADSjqwGy7cavh2kZjfDUgB25K/L4HVnZikgNhOFtCHHNIvJ3Gjl+aY2RyuKTjXhF5UoP71YHfVEQvqraQpJ7ZMUKOZSCj9F2bGTp+H0DCbfGIM=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:58 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:57 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 24/25] mtd: spi-nor: Drop the MFR definitions
Thread-Topic: [PATCH v2 24/25] mtd: spi-nor: Drop the MFR definitions
Thread-Index: AQHV+W+Vu73z/Z7/IEuDX0TIEK0v9w==
Date: Fri, 13 Mar 2020 19:42:52 +0000
Message-ID: <20200313194130.342251-25-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dee13f0e-3efd-4be6-e763-08d7c786bb66
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB10C86AD7A01BDA1A5C4328F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(396003)(366004)(376002)(199004)(478600001)(54906003)(107886003)(6512007)(110136005)(26005)(186003)(6486002)(4326008)(2616005)(316002)(71200400001)(6666004)(6506007)(86362001)(36756003)(8676002)(5660300002)(2906002)(66476007)(66446008)(66556008)(76116006)(64756008)(91956017)(66946007)(1076003)(81166006)(81156014)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYASPR01MB10;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0dWxvQmY1cOicZFVQ2w+D19z+DHU8uHiw+E58D6iArFcAr/7w+qc6NXx4P4jKBLw61FKZA2geyjV6tgxSJYQ7xvxJSdn0HZnSlZbF7Tgi6zoYNnh+jt+CcJEY/6bkVGwIKpBf9J3D7HQx7qKcCwLk/RCTy6O8DB8Cqo+QhNm7H8UfbNcaeoqt0xBkrdzBBa6xJOxWDHCYR2xpttOFZ5SivyGkHO9r65ER2XN3huVOgZ6ac3P/HmmoriI6p3OlTPhGveH49h3iEDu1zfbVTA4JiH8uL6mYkwgeiEzl8qSGQ0hUDkICXgUvFPO+2Pl0TTuybROulf4gXUu69MWzQfrP1qXE3IoeShyfHzfm33nb6wH5DwLog+7VeWzvS4i27slmq4GeTwH23G7oXqW0yUAgg6Oq7xBuEt1xP19Fn3Ce/N56Q93CIW6MkyckcYbkpVV
x-ms-exchange-antispam-messagedata: t/K5LajlNozQ3LKKVdF8jgpFebSucDe5WAYzqkpleNtjaTYLAgFjGbB39fb5Y5gNOSgSawBW4ekCFFzrEByECUqowEiW8uJkgrWxyr478LcNOK2X1cssXZ/9pcyPnb/odMSgph8o4O8FIQDxJ10Hhg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dee13f0e-3efd-4be6-e763-08d7c786bb66
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:52.0667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E1zKKr7r2N5SeCdrRyIwFyh91cxEEGk/FXnviqSl1E8++OyHhj0j9gBcQKTMrcb0nOKywR8A4ec0HwAi0L5rnczkv7x1BW0JChtW6TyobpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124312_181226_0DEA79F8 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, Tudor.Ambarus@microchip.com, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Cross manufacturer code is unlikely and discouraged, get rid of the
MFR definitions.

Suggested-by: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/core.c  |  2 --
 include/linux/mtd/spi-nor.h | 17 -----------------
 2 files changed, 19 deletions(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index baee58fd8b04..b07e66f10995 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -40,8 +40,6 @@
 
 #define SPI_NOR_MAX_ADDR_WIDTH	4
 
-#define JEDEC_MFR(info)        ((info)->id[0])
-
 /**
  * spi_nor_spimem_bounce() - check if a bounce buffer is needed for the data
  *                           transfer
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index bf37bfc68797..2f7725525460 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -11,23 +11,6 @@
 #include <linux/mtd/mtd.h>
 #include <linux/spi/spi-mem.h>
 
-/*
- * Manufacturer IDs
- *
- * The first byte returned from the flash after sending opcode SPINOR_OP_RDID.
- * Sometimes these are the same as CFI IDs, but sometimes they aren't.
- */
-#define SNOR_MFR_ATMEL		CFI_MFR_ATMEL
-#define SNOR_MFR_GIGADEVICE	0xc8
-#define SNOR_MFR_INTEL		CFI_MFR_INTEL
-#define SNOR_MFR_ST		CFI_MFR_ST	/* ST Micro */
-#define SNOR_MFR_MICRON		CFI_MFR_MICRON	/* Micron */
-#define SNOR_MFR_ISSI		CFI_MFR_PMC
-#define SNOR_MFR_MACRONIX	CFI_MFR_MACRONIX
-#define SNOR_MFR_SPANSION	CFI_MFR_AMD
-#define SNOR_MFR_SST		CFI_MFR_SST
-#define SNOR_MFR_WINBOND	0xef /* Also used by some Spansion */
-
 /*
  * Note on opcode nomenclature: some opcodes have a format like
  * SPINOR_OP_FUNCTION{4,}_x_y_z. The numbers x, y, and z stand for the number
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

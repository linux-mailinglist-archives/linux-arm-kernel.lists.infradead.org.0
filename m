Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5545D14DE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 16:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HFiVJNjaWYVbDhqV2FQdGb5ZxKeXqMrjBv/4N8sygC0=; b=bx8H1pIkF1f3Z1
	A3Zm5GI78Z7tz3DkuuIuQ2VT0QZHEcMRD+QvurpYaVrJScHCUFNWenaeU0hSxdmD0vL3fXwXAZhal
	6NPHDmLzyV5kjelT5VhrebRMhgwwTuz+Q5oW35Zq7xYgNd+wqXsdT8Fr5n3QlemaYwTcC39OAaO2C
	m1rbX6YgaUmlYmFiSs22XCrBk3jBf5vGNINJoHQTkJrcFKNFW12QVgclChgfq8UpdPFSXnYh19SxN
	hKDq8N55gdUcxnFYNIgOeDkI7C4hXQUSC2qQlbHKznUXHPDePcHALOdjegiArwcT9Ze5rCrJ3xjFo
	AwaML2VAQrMv7Lu19sVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNf2j-0002xO-Ix; Mon, 06 May 2019 14:56:37 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNf2c-0002wY-Fr
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 14:56:31 +0000
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
X-IronPort-AV: E=Sophos;i="5.60,438,1549954800"; d="scan'208";a="29265660"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 06 May 2019 07:56:28 -0700
Received: from NAM01-BY2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.108) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Mon, 6 May 2019 07:56:24 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UgL7A2/gQwOPkAdBNZtGTIvXAtszUuckM0WBOYMb9D0=;
 b=2TpzhU0D4z5cl/9jHMxudEQAOheVh6LENxZXUGZuZiS+w5ciPgOYd67EcwbwoaSGxrX74xXBagCifYrUPOBEJ/mNmK9kXCKqWJApsQ2mequf063lXhmShbgafiqqB2+AsI1PCrv6K20BfldBKCUaKA38mDG7yzm9m0iaSuulN18=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6PR11MB4049.namprd11.prod.outlook.com (10.255.130.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Mon, 6 May 2019 14:56:22 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::35b3:7af:7216:8808]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::35b3:7af:7216:8808%10]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 14:56:22 +0000
From: <Tudor.Ambarus@microchip.com>
To: <broonie@kernel.org>
Subject: [PATCH] spi: atmel-quadspi: void return type for atmel_qspi_init()
Thread-Topic: [PATCH] spi: atmel-quadspi: void return type for
 atmel_qspi_init()
Thread-Index: AQHVBBveYXVMmUTDqUy6OCq0Aik9PQ==
Date: Mon, 6 May 2019 14:56:22 +0000
Message-ID: <20190506145606.5060-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR06CA0010.eurprd06.prod.outlook.com
 (2603:10a6:208:ab::23) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1fbee562-3924-4a36-828e-08d6d23300ee
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BN6PR11MB4049; 
x-ms-traffictypediagnostic: BN6PR11MB4049:
x-microsoft-antispam-prvs: <BN6PR11MB40490F614FA653512F73C92FF0300@BN6PR11MB4049.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:655;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(346002)(39860400002)(136003)(189003)(199004)(68736007)(52116002)(5640700003)(6506007)(386003)(102836004)(66066001)(99286004)(186003)(26005)(2501003)(14444005)(53936002)(107886003)(5660300002)(256004)(2906002)(8676002)(1730700003)(81156014)(81166006)(36756003)(8936002)(14454004)(7736002)(305945005)(25786009)(6512007)(2351001)(50226002)(72206003)(478600001)(66446008)(64756008)(73956011)(66946007)(66476007)(66556008)(1076003)(6436002)(6486002)(6916009)(4326008)(6116002)(71190400001)(71200400001)(54906003)(486006)(316002)(3846002)(476003)(86362001)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB4049;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: U+6t+hrsJuz/S/s2rg5KcBjgMrTvAnkvi81gEyEnTN1m4FmEPqO7y3arLkmmOvwSMNr7FAwP5nuHmpxGT1exeHeMVJTfZ+JK0lOkaWWzF6P5CGhFszMMWonjPunkpzxP7VVqv8bjafzJ13GA7gAFW8ldfxLlCKW2rYZsmP34PpSAbFpFZyjTrXv03/3zScB+3NsASmkpaMlNqOvOhQDQqcWK3NBhzmDbBwWt8FWjo1o5mVRNiqHdJpChmbMMIFdKo29dQwuSL9Y/ECUoOghAb7Wq7iTjIKHo5Wg8qL/5bY7Mb2ONQIr1r7Ee9yoPioiBWJ3ciAq9wuSB/Esgu3xPf2gXRvApwumBcKHOvLsYYAFhMTEo9HI1gQ+V1tF+WBSaeRr/VIOlr+plqWeeKsz/aOlt7Kfp99WZOd8FPkaTqdI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fbee562-3924-4a36-828e-08d6d23300ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 14:56:22.5794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4049
X-OriginatorOrg: microchip.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_075630_621276_BE1BE0EE 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

commit 2d30ac5ed633 ("mtd: spi-nor: atmel-quadspi: Use spi-mem interface for atmel-quadspi driver")
removed the error path from atmel_qspi_init(), but not changed the
function's return type. Set void return type for atmel_qspi_init().

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/spi/atmel-quadspi.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 9f24d5f0b431..60aa5b382e58 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -405,7 +405,7 @@ static int atmel_qspi_setup(struct spi_device *spi)
 	return 0;
 }
 
-static int atmel_qspi_init(struct atmel_qspi *aq)
+static void atmel_qspi_init(struct atmel_qspi *aq)
 {
 	/* Reset the QSPI controller */
 	writel_relaxed(QSPI_CR_SWRST, aq->regs + QSPI_CR);
@@ -416,8 +416,6 @@ static int atmel_qspi_init(struct atmel_qspi *aq)
 
 	/* Enable the QSPI controller */
 	writel_relaxed(QSPI_CR_QSPIEN, aq->regs + QSPI_CR);
-
-	return 0;
 }
 
 static irqreturn_t atmel_qspi_interrupt(int irq, void *dev_id)
@@ -536,9 +534,7 @@ static int atmel_qspi_probe(struct platform_device *pdev)
 	if (err)
 		goto disable_qspick;
 
-	err = atmel_qspi_init(aq);
-	if (err)
-		goto disable_qspick;
+	atmel_qspi_init(aq);
 
 	err = spi_register_controller(ctrl);
 	if (err)
@@ -586,8 +582,8 @@ static int __maybe_unused atmel_qspi_resume(struct device *dev)
 
 	clk_prepare_enable(aq->pclk);
 	clk_prepare_enable(aq->qspick);
-
-	return atmel_qspi_init(aq);
+	atmel_qspi_init(aq);
+	return 0;
 }
 
 static SIMPLE_DEV_PM_OPS(atmel_qspi_pm_ops, atmel_qspi_suspend,
-- 
2.9.5

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

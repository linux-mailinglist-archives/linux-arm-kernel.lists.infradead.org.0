Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9015D59EE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GCQByKGMDHR36km7Tzg9hKzSes8MSJXiLg4LVXDGog=; b=U3ISgAx66Vi6lz
	rCNDs8kuENUfgkKK3Ozpy/R4v0nOE86SMmOTylXaA0m9mIgG8bFiDiO13knb8k67OeFWnltUzwZBh
	KrLEN1ERszai9UxyBnv2fNoo+d9Jn64tOvfU0YUHb7E9sbEuUvzBSZ5aw4zPVvOfkoICDYuip96gq
	twUq0mozMQAmBDQmDqcrvFA6koji8vuFxTMC/DxWaBMPxk8UW7RXvhe5cVcC6oyABZYb8HBtChyGg
	wjXmS4k4ieCahGzYUZL2k9eGhmeCf4shTIS2uDt44h6ctJDaA2737r9rpscEsp4LeG2EcO0b7ixTJ
	XGHDGBH7ahG1ZIROxRLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgspv-0001PP-8V; Fri, 28 Jun 2019 15:30:51 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgsph-0001OC-5O
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:30:41 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="36285096"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Jun 2019 08:30:34 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 28 Jun 2019 08:30:33 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 28 Jun 2019 08:30:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=PG2M+vp0rs1DvLBPpN0cSMz+K+qmyAgVdkC2n04U+CHk7BcuQ4Wk1aVqweNqAdaClhHvQ37bFx4ApKW4c9fd4quNjah2nuSGTlxzxoRA0u1BGfIiVRah1iIdGUtQgUoAnHRD/u6mTRG+WgVY4gw5sU26rmxH/Nm81MIEGqxcif0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/45dqXfh1vQABaTObJenkRoAnxkBWxTCOIA67xQx3ns=;
 b=BgargPMG+yAbLRHAQk6q7ro8xcd0HYU0ep1zwyqJRQ5dhKuB5zB0B4HQNBKiHBQQH+TQi8SpWVVmQp820GNDF2D5mY6NoOnVqF5kJMzryUysJeypXG8FEzdnKT6sNqWoIPlY6KYzg/dR7zss3C0IHjwQ6DZ+dt+56kWk/Z72B4c=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/45dqXfh1vQABaTObJenkRoAnxkBWxTCOIA67xQx3ns=;
 b=TMZcMvL1ZOsjdFGI6/a5E+4vWzt5m2bcInYamtonFUvuF8OBWy0mpzqU5C8kdRkHeoUjUYaAlr+i0eJJItlGHG9wDSuEuHqI1F6Xa1WKBgNfwEIc/JRMB1uPOkkIcDV5tP4haBpbmbdjX3XzgbxX0fQWyFUx1+Cea/lsnfHW4zA=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6PR11MB1729.namprd11.prod.outlook.com (10.175.98.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Fri, 28 Jun 2019 15:30:32 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::ed4c:cf24:e5c0:43ab]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::ed4c:cf24:e5c0:43ab%2]) with mapi id 15.20.2032.019; Fri, 28 Jun 2019
 15:30:32 +0000
From: <Tudor.Ambarus@microchip.com>
To: <broonie@kernel.org>, <mdeneen@gmail.com>
Subject: [PATCH 1/2] spi: atmel-quadspi: void return type for atmel_qspi_init()
Thread-Topic: [PATCH 1/2] spi: atmel-quadspi: void return type for
 atmel_qspi_init()
Thread-Index: AQHVLcZsK/H2PQ5w102qkDFDfm9aoQ==
Date: Fri, 28 Jun 2019 15:30:32 +0000
Message-ID: <20190628153009.7571-2-tudor.ambarus@microchip.com>
References: <20190628153009.7571-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190628153009.7571-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0601CA0042.eurprd06.prod.outlook.com
 (2603:10a6:800:1e::52) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.154]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73f3b9ee-0574-451f-12ca-08d6fbdd8ee3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1729; 
x-ms-traffictypediagnostic: BN6PR11MB1729:
x-microsoft-antispam-prvs: <BN6PR11MB1729EBDA967D9B311221A995F0FC0@BN6PR11MB1729.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:655;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(346002)(39860400002)(396003)(376002)(199004)(189003)(256004)(86362001)(14454004)(81156014)(6486002)(6512007)(25786009)(8936002)(6436002)(5660300002)(66066001)(107886003)(4326008)(478600001)(14444005)(54906003)(1076003)(71200400001)(305945005)(7736002)(81166006)(72206003)(71190400001)(6506007)(2616005)(11346002)(386003)(486006)(316002)(76176011)(8676002)(110136005)(2501003)(476003)(6116002)(26005)(186003)(2906002)(446003)(53936002)(68736007)(36756003)(66556008)(73956011)(66446008)(66476007)(64756008)(66946007)(3846002)(50226002)(99286004)(52116002)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1729;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: i+lYBVDDe3dDVDBcFVNGdGDJhRq3uj/hT3TuXWXohS3BmPN1Mk2FKFZkGHLvruEhBMjdFvTlg/qb4T2PdG6GM2I4/pTrhb7BrDnwmTb8Cs9D3enZ+un+9D9R4yvaFuiSvRhwO55KXhZ9AaA3e2jBQywDCLWn1CV0aTC7Zad2dbVNgzNk91qyY83Xa+gXBH1463lVHvL1VG3y+J+D5iDW+SBQ/T1SZePITN+pm0lWu/coaL9WFOeoUWTk/sZC4Ad6wPoEkoKUwMtbPhJG+9xna0oLBlM/pVRJj28FD8DhTq4wcUBFfqlvaGm/sbJGcMfvw4X91X0mlSBs39V1yEBPh+T6jtTZFMJ4RJTDboktONfBv5Qse5mLt39fSb9EpJ1tsBSJFzuBMDRt8c5WOVJ7di4pWPIJmJKAqfnpTEqM1HI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 73f3b9ee-0574-451f-12ca-08d6fbdd8ee3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 15:30:32.5716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1729
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_083037_323029_45FB3A78 
X-CRM114-Status: GOOD (  10.96  )
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 linux-spi@vger.kernel.org, Ludovic.Desroches@microchip.com,
 Claudiu.Beznea@microchip.com, linux-arm-kernel@lists.infradead.org
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
 drivers/spi/atmel-quadspi.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 9f24d5f0b431..32eb7447c31a 100644
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
@@ -587,7 +583,8 @@ static int __maybe_unused atmel_qspi_resume(struct device *dev)
 	clk_prepare_enable(aq->pclk);
 	clk_prepare_enable(aq->qspick);
 
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

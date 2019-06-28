Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354B859EE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgH5kiGhVLTMpD6SC8IfzPOio1TgIqDHZXCuaVogeIw=; b=EekPvUy0kMMWlX
	rhCDGykeS/DLmsMZ+CqeDsXkaHOn9b7rq58OmmlFm5NwUAyZWECQ82zdNTYIYZRn8ZV0YCRsMxSHT
	w9rCn/mdGqnmL+N3LdaMxPQuGJSvO/sRkGt34PSC1StA3aoC6nUIIEpO9Gz6nBGfpcoaF1i5T+omc
	MV8/L7L3XkZM3U1FIlLroIkaIYGMCPkPc2D7vWA+SLg76z0XJeaqvs5aMgBRijVRfvRXIEG/vDcur
	lWaJ8LssalCXvtmqvqjOBvud+9Y+mFwiMn4rz6GMExVfSMLGaDU86QX32A1p231ay37/yJme2eijS
	GwmxxsKis6+Oj8xkxP7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgsqI-0001ZU-B3; Fri, 28 Jun 2019 15:31:14 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgspj-0001Oa-7t
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:30:41 +0000
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
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="38750021"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Jun 2019 08:30:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex01.mchp-main.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 28 Jun 2019 08:30:35 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 28 Jun 2019 08:30:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=testarcselector01; d=microsoft.com; cv=none;
 b=itvHme4yM5ydo9CNjOZkdDcIVvoTx1qojlRiVjwZv9d7548aHnBSUIJktv/Dxr8ybTbH/QHO55t9/acSpha1sdvY3El39ZZUu2e0bi8ySgLNQsIL5HbAk2dyDfNXpz9WV24S5EEbBoi4VeKjSqj6Ur/oQQsM29DXHbAtCoCBTLY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=testarcselector01;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I6YLtt0Uu0akTgRx4a9atbJYgPk6spKklLVk9TmbylE=;
 b=aMtKeYQwP1yUfRe+p8p3aXCG5uL8IbAqFtTueWslr/zRfJaY+4O9+NQOTD6yy+Nvo0ZhXcLow8WYCMstiNi7mikFt5QZ3FABuV5YPmjskllZ1aakhZpjh7bCjrqCV5qj+x5PZ8uVAxd1s27bz1rI63PnAkpCGXXvq6t0PheVdBI=
ARC-Authentication-Results: i=1; test.office365.com
 1;spf=none;dmarc=none;dkim=none;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I6YLtt0Uu0akTgRx4a9atbJYgPk6spKklLVk9TmbylE=;
 b=XSNMONdcfA+Gg45bRYYQRwZkb3RLnIPwZFLsILBnliF7/o/hiIN/SgrWkLV0sveW6ZZhU5xDOqP5CEzv/J9z2BUSgv0yFd4CiWButP7G+F3hVKkmzNWjsVm4u+NvH+29qFigaBTQQ/fTUs0Lj2iVOk1dDZBrRrtOkiWjU1KekS4=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6PR11MB1729.namprd11.prod.outlook.com (10.175.98.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Fri, 28 Jun 2019 15:30:34 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::ed4c:cf24:e5c0:43ab]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::ed4c:cf24:e5c0:43ab%2]) with mapi id 15.20.2032.019; Fri, 28 Jun 2019
 15:30:34 +0000
From: <Tudor.Ambarus@microchip.com>
To: <broonie@kernel.org>, <mdeneen@gmail.com>
Subject: [PATCH 2/2] spi: atmel-quadspi: fix resume call
Thread-Topic: [PATCH 2/2] spi: atmel-quadspi: fix resume call
Thread-Index: AQHVLcZtwFeJQVFybkSJWy1t1PvRtw==
Date: Fri, 28 Jun 2019 15:30:34 +0000
Message-ID: <20190628153009.7571-3-tudor.ambarus@microchip.com>
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
x-ms-office365-filtering-correlation-id: aa72afd5-fc24-4c88-dd1e-08d6fbdd8ff8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1729; 
x-ms-traffictypediagnostic: BN6PR11MB1729:
x-microsoft-antispam-prvs: <BN6PR11MB172936D64680269E2754A75EF0FC0@BN6PR11MB1729.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(346002)(39860400002)(396003)(376002)(199004)(189003)(256004)(86362001)(14454004)(81156014)(6486002)(6512007)(25786009)(8936002)(6436002)(5660300002)(66066001)(107886003)(4326008)(478600001)(14444005)(54906003)(1076003)(71200400001)(305945005)(7736002)(81166006)(72206003)(71190400001)(6506007)(2616005)(11346002)(386003)(486006)(316002)(76176011)(8676002)(110136005)(2501003)(476003)(6116002)(26005)(186003)(2906002)(446003)(53936002)(68736007)(36756003)(66556008)(73956011)(66446008)(66476007)(64756008)(66946007)(3846002)(50226002)(99286004)(52116002)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1729;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: W5qlCSviEiMJYRlDGK3IH5Cwe/7/1XXRfKgphKiBSbdLyJ3yv9BwTAlpCi9i+ZvwDOnNpu4ytxOL+t52GFm9FGzzSh6C2A3Tnq/lc9U9P3AmSAcfD9s6YWUnLVepLuG5meVf+vGOiFVaIpvt32bWDXcMJwzsMUfYMHUFZijJGpFAFZSmCDSo4FG0m4sCM2Y0pkg+31doiDu6TMEG7N6HFY5HX/bpbPUNOHtZEm7TTtcP7RP3xYn9S5s4DZC3miSciKlQ37258lhw3h/jg6CGDW7UyBHKOxvLcMIg3hHPLi6XtgM+ko3djTNta8aMYs37bX2mtpNXpt2stq0p3/pxYFrl0kWBFVd86FcNY97o6U78yQvKadvyuNKWiqH/a6/iOQvHRorQHnwA9GUsOiAGmUZxTEwyTL/JTKLZdQgITks=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: aa72afd5-fc24-4c88-dd1e-08d6fbdd8ff8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 15:30:34.3871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1729
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_083039_326460_29697995 
X-CRM114-Status: GOOD (  12.14  )
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 linux-spi@vger.kernel.org, Ludovic.Desroches@microchip.com,
 Claudiu.Beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

When waking up from the Suspend-to-RAM state, the following error
was seen:

m25p80 spi2.0: flash operation timed out

The flash remained in an undefined state, returning 0xFFs.
Fix it by setting the Serial Clock Baud Rate, as it was set
before the conversion to SPIMEM.

Tested with sama5d2_xplained and mx25l25673g spi-nor in
Backup + Self-Refresh and Suspend modes.

Fixes: 0e6aae08e9ae ("spi: Add QuadSPI driver for Atmel SAMA5D2")
Reported-by: Mark Deneen <mdeneen@gmail.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/spi/atmel-quadspi.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 32eb7447c31a..6a7d7b553d95 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -151,6 +151,7 @@ struct atmel_qspi {
 	const struct atmel_qspi_caps *caps;
 	u32			pending;
 	u32			mr;
+	u32			scr;
 	struct completion	cmd_completion;
 };
 
@@ -382,7 +383,7 @@ static int atmel_qspi_setup(struct spi_device *spi)
 	struct spi_controller *ctrl = spi->master;
 	struct atmel_qspi *aq = spi_controller_get_devdata(ctrl);
 	unsigned long src_rate;
-	u32 scr, scbr;
+	u32 scbr;
 
 	if (ctrl->busy)
 		return -EBUSY;
@@ -399,8 +400,8 @@ static int atmel_qspi_setup(struct spi_device *spi)
 	if (scbr > 0)
 		scbr--;
 
-	scr = QSPI_SCR_SCBR(scbr);
-	writel_relaxed(scr, aq->regs + QSPI_SCR);
+	aq->scr = QSPI_SCR_SCBR(scbr);
+	writel_relaxed(aq->scr, aq->regs + QSPI_SCR);
 
 	return 0;
 }
@@ -584,6 +585,9 @@ static int __maybe_unused atmel_qspi_resume(struct device *dev)
 	clk_prepare_enable(aq->qspick);
 
 	atmel_qspi_init(aq);
+
+	writel_relaxed(aq->scr, aq->regs + QSPI_SCR);
+
 	return 0;
 }
 
-- 
2.9.5

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
